import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/customer_edit_provider.dart';

class CustomerEditPage extends ConsumerStatefulWidget {
  const CustomerEditPage({Key? key}) : super(key: key);

  @override
  _CustomerEditPageState createState() => _CustomerEditPageState();
}

class _CustomerEditPageState extends ConsumerState<CustomerEditPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<CustomerEditState>(customerEditProvider, (previous, next) {
      if (previous?.lastActionResult != next.lastActionResult) {
        // show SnackBar
        if (next.lastActionResult!.success) {
          Navigator.of(context).pop();
        } else {
          // show error
        }
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new customer"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
              onChanged: (value) {
                ref.read(customerEditProvider.notifier).changeName(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Status',
              ),
              onChanged: (value) {
                ref.read(customerEditProvider.notifier).changeStatus(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(customerEditProvider.notifier).save();
                },
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
