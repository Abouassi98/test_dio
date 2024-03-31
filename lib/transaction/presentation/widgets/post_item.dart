import 'package:flutter/material.dart';
import '../../domain/posts/posts.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({required this.item, super.key});

  final Post item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Text(
        item.id.toString(),
      ),
      title: Text(
        item.title,
      ),
      subtitle: Text(
        item.body,
      ),
    );
  }
}
