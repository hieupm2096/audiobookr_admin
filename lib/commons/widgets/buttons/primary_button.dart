import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Widget? icon;
  final Function? onTap;
  final EdgeInsets? contentPadding;

  const PrimaryButton({
    Key? key,
    required this.title,
    this.icon,
    this.onTap,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorName.primaryColor,
      borderRadius: BorderRadius.circular(6.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(6.0),
        onTap: () {},
        child: Container(
          padding: contentPadding,
          height: 39,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon ?? const SizedBox.shrink(),
              if (icon != null) const SizedBox(width: 6.0),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
