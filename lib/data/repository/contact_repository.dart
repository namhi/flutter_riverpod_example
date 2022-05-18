import '../../model/contact.dart';

abstract class ContactRepository {
  Future<List<Contact>> gets();
  Future<Contact?> getById(int id);
  Future<void> delete(int id);
  Future<void> update(Contact customer);
  Future<void> insert(Contact customer);
}
