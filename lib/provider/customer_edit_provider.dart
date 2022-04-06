import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/model/customer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/repository/customer_repository.dart';
import 'customers_repository_provider.dart';
part 'customer_edit_provider.freezed.dart';

final customerEditProvider =
    StateNotifierProvider<CustomerEditStateNotifier, CustomerEditState>(
  (ref) {
    final customerRepo = ref.read(customersRepositoryProvider);
    return CustomerEditStateNotifier(customerRepository: customerRepo);
  },
);

class CustomerEditStateNotifier extends StateNotifier<CustomerEditState> {
  CustomerEditStateNotifier({
    required CustomerRepository customerRepository,
  })  : _customerRepository = customerRepository,
        super(CustomerEditState());

  late final CustomerRepository _customerRepository;

  void changeName(String value) {
    state = state.copyWith(name: value);
  }

  void changeStatus(String value) {
    state = state.copyWith(status: value);
  }

  /// try to save new customer.
  /// on exception then show error SnackBar, on success show success SnackBar
  Future<void> save() async {
    // 1. validate data input.
    // 2. try to save.
    try {
      await _customerRepository.insert(
        Customer(
          id: 10,
          name: state.name ?? '',
          status: state.status ?? '',
        ),
      );

      state = state.copyWith(
        lastActionResult: StateAction(
          success: true,
          message: '',
        ),
      );
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
      }

      state = state.copyWith(
        lastActionResult: StateAction(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }
}

@freezed
@Freezed(maybeWhen: false, maybeMap: false)
class CustomerEditState with _$CustomerEditState {
  factory CustomerEditState({
    @Default(CustomersStatus.initial) CustomersStatus loadingStatus,
    String? id,
    String? name,
    String? status,
    StateAction? lastActionResult,
  }) = _CustomerEditState;
}

enum CustomersStatus {
  initial,
  loading,
  error,
  loaded,
}

class StateAction {
  StateAction({required this.success, required this.message});
  final bool success;
  final String message;
}
