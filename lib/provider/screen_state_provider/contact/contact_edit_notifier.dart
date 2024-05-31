import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/data/repository/contact_repository.dart';
import 'package:flutter_riverpod_example/provider/screen_state_provider/contact/contact_edit_state.dart';
import '../../../model/contact.dart';

class ContactEditNotifier extends StateNotifier<ContactEditState> {
  ContactEditNotifier({required ContactRepository contactRepository})
      : _contactRepository = contactRepository,
        super(ContactEditState());

  late final ContactRepository _contactRepository;

  Future<void> save(Contact contact) async {
    await Future.delayed(const Duration(seconds: 1));
    _contactRepository.insert(contact);
  }

  Future<void> load({Contact? initialContact}) async {
    await Future.delayed(const Duration(seconds: 1));
    Contact? contact;
    if (initialContact != null) {
      contact = await _contactRepository.getById(initialContact.id);
    }

    state = state.copyWith(contact: contact, status: ContactEditStatus.loading);
  }
}
