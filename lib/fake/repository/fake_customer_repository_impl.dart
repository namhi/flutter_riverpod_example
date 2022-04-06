import 'package:collection/collection.dart';

import '../../data/repository/customer_repository.dart';
import '../../model/customer.dart';

class FakeCustomerRepositoryImpl implements CustomerRepository {
  final List<Customer> _customers = [
    const Customer(id: 1, name: 'Dominic'),
    const Customer(id: 2, name: 'Darius'),
    const Customer(id: 3, name: 'Aatrox'),
    const Customer(id: 4, name: 'Ahri'),
    const Customer(id: 5, name: 'Akali'),
    const Customer(id: 6, name: 'Alistar'),
  ];
  @override
  Future<void> delete(int id) async {
    if (!_customers.any((element) => element.id == id)) {
      throw Exception('Id does not exists');
    }
    _customers.removeWhere((element) => element.id == id);
  }

  @override
  Future<Customer> getById(int id) async {
    final result = _customers.firstWhereOrNull((element) => element.id == id);
    if (result == null) {
      throw Exception('Item does not exists');
    }
    return result;
  }

  @override
  Future<List<Customer>> gets() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    return _customers.toList();
  }

  @override
  Future<void> insert(Customer customer) async {
    _customers.add(customer);
  }

  @override
  Future<void> update(Customer customer) async {
    final item =
        _customers.firstWhereOrNull((element) => element.id == customer.id);
    if (item == null) {
      throw Exception('Customer does not exists');
    }

    final indexOfItem = _customers.indexOf(item);
    _customers[indexOfItem] = customer;
  }

  @override
  Future<void> changeStatus({
    required int customerId,
    required String newStatus,
  }) async {
    final item =
        _customers.firstWhereOrNull((element) => element.id == customerId);
    if (item == null) {
      throw Exception('Customer does not exists');
    }
    await Future<void>.delayed(const Duration(seconds: 3));
    final indexOfItem = _customers.indexOf(item);
    _customers[indexOfItem] = item.copyWith(status: newStatus);
  }
}
