import 'package:flutter/material.dart';
import 'package:flutter_riverpod_example/presentation/features/contacts/contacts_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactsPage(),
    );
  }
}
