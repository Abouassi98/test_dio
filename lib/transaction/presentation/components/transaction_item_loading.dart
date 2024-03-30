import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/presentation/styles/styles.dart';

class TransactionItemLoadingWidget extends StatelessWidget {
  const TransactionItemLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black54,
      highlightColor: Colors.white54,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Container(
          height: Sizes.marginV8,
          width: Sizes.marginH64,
          color: Colors.white38,
        ),
        subtitle: Container(
          height: Sizes.marginV8,
          width: Sizes.marginH36,
          color: Colors.white38,
        ),
        leading: const CircleAvatar(
          backgroundColor: Colors.white38,
          radius: Sizes.imageR35,
        ),
        trailing: Container(
          height: Sizes.marginV8,
          width: Sizes.marginH30,
          color: Colors.white38,
        ),
      ),
    );
  }
}
