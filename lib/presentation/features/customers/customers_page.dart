import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_example/provider/customers_provider.dart';
import '../../../model/customer.dart';

class CustomersPage extends ConsumerStatefulWidget {
  const CustomersPage({Key? key}) : super(key: key);

  @override
  _CustomersPageState createState() => _CustomersPageState();
}

class _CustomersPageState extends ConsumerState<CustomersPage> {
  @override
  void initState() {
    super.initState();
    ref.read(customersProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Khách hàng'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: _buildScaffoldBody(),
    );
  }

  Widget _buildScaffoldBody() {
    return Consumer(
      builder: (context, ref, _) {
        final state = ref.watch(customersProvider);
        if (state.loadingStatus == CustomersStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.loadingStatus == CustomersStatus.error) {
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
    final customersState = ref.watch(customersProvider);
    if (customersState.customers.isEmpty) {
      return const Center(
        child: Text('Không có khách hàng nào'),
      );
    }

    return ListView.separated(
      itemBuilder: (context, index) {
        final item = customersState.customers[index];
        return _CustomerItem(
          item: item,
          isBusy: customersState.busyItem.contains(item.id),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: customersState.customers.length,
    );
  }
}

class _CustomerItem extends ConsumerWidget {
  const _CustomerItem({
    Key? key,
    required this.item,
    this.isBusy = false,
  }) : super(key: key);
  final Customer item;
  final bool isBusy;

  @override
  Widget build(BuildContext context, ref) {
    return _CustomerItemWidget(
      name: item.name,
      status: item.status,
      busy: isBusy,
      onMenuPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (_) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text('Xóa'),
                  onTap: () {
                    Navigator.pop(context);
                    ref.read(customersProvider.notifier).delete(item.id);
                  },
                ),
                ListTile(
                  title: const Text('Đổi trạng thái'),
                  onTap: () {
                    Navigator.pop(context);
                    ref
                        .read(customersProvider.notifier)
                        .changeStatus(item.id, 'Khách VIP');
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

class _CustomerItemWidget extends StatelessWidget {
  const _CustomerItemWidget({
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
