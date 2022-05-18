import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/model/customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

import '../data/repository/customer_repository.dart';
import 'api_provider/customers_repository_provider.dart';
part 'customers_provider.freezed.dart';

final customersProvider =
    StateNotifierProvider<CustomerNotifier, CustomersState>(
  (ref) {
    final customerRepo = ref.read(customersRepositoryProvider);
    return CustomerNotifier(customerRepository: customerRepo);
  },
);

class CustomerNotifier extends StateNotifier<CustomersState> {
  CustomerNotifier({required CustomerRepository customerRepository})
      : _customerRepository = customerRepository,
        super(CustomersState());

  late final CustomerRepository _customerRepository;

  Future<void> init() async {
    state = state.copyWith(loadingStatus: CustomersStatus.loading);

    try {
      final customers = await _customerRepository.gets();
      //throw Exception('error rổi');
      state = CustomersState(
        loadingStatus: CustomersStatus.loaded,
        customers: customers,
      );
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
      } //TODO add logs
      state = CustomersState(
        customers: [],
        loadingStatus: CustomersStatus.error,
        lastError: e.toString(),
      );
    }
  }

  Future<void> add(Customer customer) async {
    await _customerRepository.insert(customer);
    final customers = state.customers.toList();
    customers.add(customer);

    state = state.copyWith(
      customers: customers,
    );
  }

  Future<void> delete(int id) async {
    try {
      // throw Exception('On errr');
      await _customerRepository.delete(id);
      final customers = state.customers.toList();
      customers.removeWhere((element) => element.id == id);

      state = state.copyWith(customers: customers);
    } catch (e, s) {
      print(e);
      state = state.copyWith(lastError: e.toString());
    }
  }

  Future<void> changeStatus(int customerId, String newStatus) async {
    state = state.copyWith(
      busyItem: state.busyItem.toList()..add(customerId),
    );
    try {
      await _customerRepository.changeStatus(
        customerId: customerId,
        newStatus: newStatus,
      );

      final customers = state.customers.toList();
      final customer =
          customers.firstWhere((element) => element.id == customerId);

      final customerIndex = customers.indexOf(customer);

      customers[customerIndex] = customer.copyWith(status: newStatus);

      state = state.copyWith(
        customers: customers,
        isBusy: false,
        busyItem: state.busyItem.toList()..remove(customerId),
      );
    } catch (e, s) {}
  }
}

@freezed
@Freezed(maybeWhen: false, maybeMap: false)
class CustomersState with _$CustomersState {
  factory CustomersState({
    @Default([]) List<Customer> customers,
    @Default(CustomersStatus.initial) CustomersStatus loadingStatus,
    String? lastError,
    @Default(false) isBusy,
    @Default([]) List<int> busyItem,
  }) = _CustomersState;
}

enum CustomersStatus {
  initial,
  loading,
  error,
  loaded,
}
