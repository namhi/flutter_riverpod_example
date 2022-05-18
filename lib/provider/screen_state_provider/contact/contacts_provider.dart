import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/provider/api_provider/contacts_repository_provider.dart';
import 'package:flutter_riverpod_example/provider/screen_state_provider/contact/contacts_state.dart';

import '../../../data/repository/contact_repository.dart';

final contactsProvider = StateNotifierProvider<ContactsNotifier, ContactsState>(
  (ref) {
    final contactRepository = ref.read(contactsRepositoryProvider);
    return ContactsNotifier(contactRepository: contactRepository);
  },
);

class ContactsNotifier extends StateNotifier<ContactsState> {
  ContactsNotifier({required ContactRepository contactRepository})
      : _contactRepository = contactRepository,
        super(ContactsState());

  late final ContactRepository _contactRepository;

  Future<void> init() async {
    state = state.copyWith(loadingStatus: ContactsStatus.loading);

    try {
      final contacts = await _contactRepository.gets();
      //throw Exception('error rổi');
      state = ContactsState(
        loadingStatus: ContactsStatus.loaded,
        contacts: contacts,
      );
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
      } //TODO add logs
      state = ContactsState(
        contacts: [],
        loadingStatus: ContactsStatus.error,
        lastError: e.toString(),
      );
    }
  }

  Future<void> delete(int id) async {
    try {
      // throw Exception('On errr');
      await _contactRepository.delete(id);
      final customers = state.contacts.toList();
      customers.removeWhere((element) => element.id == id);

      state = state.copyWith(contacts: customers);
    } catch (e, s) {
      print(e);
      state = state.copyWith(lastError: e.toString());
    }
  }
}
