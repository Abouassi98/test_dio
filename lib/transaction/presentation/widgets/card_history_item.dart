import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';

class CardHistoryItem extends HookWidget {
  const CardHistoryItem({
    required this.disbursementsDateRange,
    required this.onTap,
    required this.hint,
    super.key,
  });
  final ValueNotifier<DateTime?> disbursementsDateRange;
  final void Function() onTap;
  final String hint;
  @override
  Widget build(BuildContext context) {
    final dateTime = useValueListenable(disbursementsDateRange);
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: Sizes.marginV20),
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.paddingV12,
          horizontal: Sizes.paddingH20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              dateTime == null ? hint : dateTime.toString().substring(0, 10),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: Sizes.icon16,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
