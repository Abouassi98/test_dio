import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../styles/styles.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

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
        trailing: const CircleAvatar(
          backgroundColor: Colors.white38,
          radius: 10,
        ),
      ),
    );
  }
}
