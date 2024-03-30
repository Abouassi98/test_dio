import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../domain/transaction_history/posts/posts.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({required this.item, super.key});

  final Post item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Text(
        item.id.toString(),
        style: TextStyles.f14(context)
            .copyWith(fontWeight: FontStyles.fontWeightNormal),
      ),
      title: Text(
        item.title,
        style: TextStyles.f14(context)
            .copyWith(fontWeight: FontStyles.fontWeightNormal),
      ),
      subtitle: Text(
        item.body,
        style: TextStyles.f10(context)
            .copyWith(fontWeight: FontStyles.fontWeightLight),
      ),
    );
  }
}
