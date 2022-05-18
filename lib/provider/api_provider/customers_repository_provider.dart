import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/customer_repository.dart';
import '../../fake/repository/fake_customer_repository_impl.dart';

final customersRepositoryProvider = Provider<CustomerRepository>(
  (ref) => FakeCustomerRepositoryImpl(),
);
