import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../domain/transaction_history/users/users.dart';

class BokRechargeItem extends StatelessWidget {
  const BokRechargeItem({required this.item, super.key});

  final User item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      item.name,
                      style: TextStyles.f14(context)
                          .copyWith(fontWeight: FontStyles.fontWeightNormal),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item.email,
                      textAlign: TextAlign.end,
                      style: TextStyles.f12(context)
                          .copyWith(fontWeight: FontStyles.fontWeightNormal),
                    ),
                  ),
                ],
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const SizedBox(width: Sizes.paddingH6),
                  Card(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        item.status,
                        textAlign: TextAlign.right,
                        style: TextStyles.f10(context)
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
