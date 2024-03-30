import 'package:flutter/material.dart';
import '../styles/styles.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    required this.listItemModel,
    super.key,
  });

  final ListItemModel listItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: Colors.grey,
        ), // Add border styling
      ),
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          minVerticalPadding: 12,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: Sizes.paddingH24,
          ),
          onTap: listItemModel.onTap,
          title: Text(
            listItemModel.title,
            style: TextStyles.f14(context).copyWith(
              color: Colors.black,
            ),
          ),
          leading: listItemModel.trailing,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 16,
          ),
        ),
      ),
    );
  }
}

class ListItemModel {
  ListItemModel({
    required this.onTap,
    required this.title,
    this.trailing,
  });

  final void Function()? onTap;
  final String title;
  final Widget? trailing;
}
