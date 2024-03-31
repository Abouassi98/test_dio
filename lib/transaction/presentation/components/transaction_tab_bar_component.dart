import 'package:flutter/material.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';

class TransactionTabBarComponent extends HookConsumerWidget {
  const TransactionTabBarComponent({
    required this.controller,
    super.key,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabBar(
      indicator: const BoxDecoration(),
      padding: const EdgeInsets.all(8),
      controller: controller,
      tabs: const [
        Tab(icon: Text('Posts')),
        Tab(icon: Text('Users')),
      ],
    );
  }
}
