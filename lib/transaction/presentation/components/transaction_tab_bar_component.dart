import 'package:flutter/material.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../providers/transaction_tabs_provider.dart';
import '../utils/tab_bar_type.dart';
import '../widgets/filter_chip_widget.dart';

class TransactionTabBarComponent extends HookConsumerWidget {
  const TransactionTabBarComponent({
    required this.controller,
    required this.transactionTabs,
    super.key,
  });

  final TabController controller;
  final List<TabBarType> transactionTabs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void selectItem() {
      ref
          .read(transactionTabsProvider.notifier)
          .update((state) => [...transactionTabs]);
    }

    useEffect(
      () {
        void updateController() => selectItem();
        controller.addListener(updateController);
        return () => controller.removeListener(updateController);
      },
      [controller],
    );

    return TabBar(
      indicator: const BoxDecoration(),
      padding: const EdgeInsets.all(8),
      controller: controller,
      // isScrollable: true,
      tabs: [
        for (final TabBarType data in transactionTabs)
          CustomFilterChipWidget(
            isSelected: controller.index == data.index,
            title: data.title,
          ),
      ],
    );
  }
}
