import 'package:audiobookr_admin/commons/widgets/fade_shimmer/cell_fade_shimmer.dart';
import 'package:flutter/material.dart';

class BookCellsShimmer extends StatelessWidget {
  const BookCellsShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          SizedBox(height: 56.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
          SizedBox(height: 16.0),
          CellFadeShimmer(),
        ],
      ),
    );
  }
}
