import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CellFadeShimmer extends StatelessWidget {
  const CellFadeShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black26,
      highlightColor: Colors.black12,
      child: Container(
        height: 32,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}
