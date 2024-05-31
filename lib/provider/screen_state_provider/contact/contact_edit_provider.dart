import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/provider/api_provider/contacts_repository_provider.dart';
import 'package:flutter_riverpod_example/provider/screen_state_provider/contact/contact_edit_notifier.dart';
import 'package:flutter_riverpod_example/provider/screen_state_provider/contact/contact_edit_state.dart';

final contactEditProvider =
    StateNotifierProvider<ContactEditNotifier, ContactEditState>(
  (ref) {
    final contactRepository = ref.read(contactsRepositoryProvider);
    return ContactEditNotifier(contactRepository: contactRepository);
  },
);
