import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/provider/screen_state_provider/contact/contacts_provider.dart';
import 'package:flutter_riverpod_example/provider/screen_state_provider/contact/contacts_state.dart';
import '../../../model/contact.dart';
import 'contact_edit_page.dart';

class ContactsPage extends ConsumerStatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _CustomersPageState createState() => _CustomersPageState();
}

class _CustomersPageState extends ConsumerState<ContactsPage> {
  @override
  void initState() {
    super.initState();
    ref.read(contactsProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const CustomerEditPage(),
              //   ),
              // );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: _buildScaffoldBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildScaffoldBody() {
    return Consumer(
      builder: (context, ref, _) {
        final state = ref.watch(contactsProvider);
        if (state.loadingStatus == ContactsStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.loadingStatus == ContactsStatus.error) {
          return Center(
            child: Text(state.lastError ?? ''),
          );
        }
        return _BusyIndicator(
          busy: state.isBusy,
          child: const _ListView(),
        );
      },
    );
  }
}

class _ListView extends ConsumerWidget {
  const _ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contactsState = ref.watch(contactsProvider);
    if (contactsState.contacts.isEmpty) {
      return const Center(
        child: Text('No contacts'),
      );
    }

    return ListView.separated(
      itemBuilder: (context, index) {
        final item = contactsState.contacts[index];
        return _ContactItem(
          item: item,
          isBusy: contactsState.busyItem.contains(item.id),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: contactsState.contacts.length,
    );
  }
}

class _ContactItem extends ConsumerWidget {
  const _ContactItem({
    Key? key,
    required this.item,
    this.isBusy = false,
  }) : super(key: key);
  final Contact item;
  final bool isBusy;

  @override
  Widget build(BuildContext context, ref) {
    return _ContactItemWidget(
      name: item.fullName,
      status: item.phone ?? 'No phone',
      busy: isBusy,
      onMenuPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (_) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text('Delete'),
                  onTap: () {
                    Navigator.pop(context);
                    ref.read(contactsProvider.notifier).delete(item.id);
                  },
                ),
                ListTile(
                  title: const Text('Change status to VIP'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _BusyIndicator extends StatelessWidget {
  const _BusyIndicator({
    Key? key,
    required this.child,
    required this.busy,
  }) : super(key: key);

  final Widget child;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (busy)
          Container(
            color: Colors.grey.withOpacity(0.2),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ],
    );
  }
}

class _ContactItemWidget extends StatelessWidget {
  const _ContactItemWidget({
    Key? key,
    required this.name,
    this.onMenuPressed,
    required this.status,
    this.busy = false,
  }) : super(key: key);

  final String name;
  final String status;
  final VoidCallback? onMenuPressed;
  final bool busy;
  @override
  Widget build(BuildContext context) {
    return _BusyIndicator(
      busy: busy,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            name.substring(0, 1),
          ),
        ),
        title: Text(name),
        trailing: IconButton(
          onPressed: onMenuPressed,
          icon: const Icon(Icons.more_vert),
        ),
        subtitle: Text(status),
      ),
    );
  }
}
