import 'package:flutter/material.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../components/transaction_tab_bar_component.dart';
import 'users_screen.dart';
import 'posts_screen.dart';

class TabBarScreen extends StatefulHookConsumerWidget {
  const TabBarScreen({super.key});

  @override
  ConsumerState<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends ConsumerState<TabBarScreen> with SingleTickerProviderStateMixin {
  late final TabController controller;
  @override
  void initState() {
    controller = TabController(
      length: 2,
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //https://github.com/flutter/flutter/issues/75517
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[];
        },
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TransactionTabBarComponent(
              controller: controller,
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: const [
                  PostsScreen(
                    key: PageStorageKey<String>('tap1'),
                  ),
                  UsersScreen(
                    key: PageStorageKey<String>('tap2'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
