// ignore_for_file: avoid_dynamic_calls
// TODO(Abouassi): Remove above comment to handle Method invocation or property access on a 'dynamic' target
import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';

class CustomTabBar<T> extends HookWidget {
  const CustomTabBar({
    required this.controller,
    required this.filterChips,
    super.key,
  });

  final TabController controller;
  //pass (useValueNotifier) ValueNotifier of type list of enums that include a title() method
  final ValueNotifier<List<T>> filterChips;

  @override
  Widget build(BuildContext context) {
    final filters = useValueListenable(filterChips);

    void selectItem() {
      filterChips.value = [...filters];
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
      padding: const EdgeInsets.symmetric(vertical: 24),
      controller: controller,
      isScrollable: true,
      tabs: [
        for (final dynamic data in filters)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: controller.index == data.index
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              border: Border.all(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                // TODO(Abouassi): Refactor and optimize this logic for better performance and readability
                data.title(context) as String,
                style: controller.index == data.index
                    ? TextStyles.f16(context).copyWith(color: Colors.white)
                    : TextStyles.f12(context),
              ),
            ),
          ),
      ],
    );
  }
}
