import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final void Function()? onTap;

  const CustomIconButton({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: 40.0,
      child: Material(
        color: ColorName.illusion,
        borderRadius: BorderRadius.circular(6.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(6.0),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8.0,
            ),
            child: icon,
          ),
        ),
      ),
    );
  }
}
