import 'package:flutter_riverpod_example/data/repository/contact_repository.dart';
import 'package:flutter_riverpod_example/model/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FakeContactRepositoryImpl implements ContactRepository {
  final List<Contact> _customers = [
    const Contact(id: 1, fullName: 'Dominic', phone: '0908155299'),
    const Contact(id: 2, fullName: 'Darius', phone: '0978522399'),
    const Contact(id: 3, fullName: 'Aatrox', phone: '0379555234'),
    const Contact(id: 4, fullName: 'Ahri', phone: '1923434355'),
    const Contact(id: 5, fullName: 'Akali', phone: '0987333222'),
  ];
  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Contact?> getById(int id) async {
    return _customers.toList().firstWhereOrNull((element) => element.id == id);
  }

  @override
  Future<List<Contact>> gets() async {
    return _customers.toList();
  }

  @override
  Future<void> insert(Contact customer) async {
    _customers.add(customer);
  }

  @override
  Future<void> update(Contact customer) async {
    final index = _customers.indexWhere((element) => element.id == customer.id);
    if (index > -1) {
      _customers[index] = customer;
    }
  }
}
