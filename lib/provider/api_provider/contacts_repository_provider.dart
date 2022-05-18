import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/data/repository/contact_repository.dart';
import 'package:flutter_riverpod_example/fake/repository/fake_contact_repository_impl.dart';

final contactsRepositoryProvider = Provider<ContactRepository>(
  (ref) => FakeContactRepositoryImpl(),
);
