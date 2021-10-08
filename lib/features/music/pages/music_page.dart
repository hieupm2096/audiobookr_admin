import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.backgroundColor,
      child: const Center(
        child: Text('MusicPage'),
      ),
    );
  }
}
