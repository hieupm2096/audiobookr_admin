import 'package:audiobookr_admin/commons/widgets/buttons/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshButton extends StatelessWidget {
  final bool isLoading;
  final void Function() onTap;

  const RefreshButton({
    Key? key,
    required this.isLoading,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: !isLoading
          ? const Icon(
              CupertinoIcons.arrow_clockwise,
              color: Colors.white70,
              size: 20.0,
            )
          : const Padding(
              padding: EdgeInsets.all(4.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                color: Colors.white54,
                strokeWidth: 2.4,
              ),
            ),
      onTap: !isLoading ? onTap : null,
    );
  }
}
