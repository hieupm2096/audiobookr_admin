import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  final String text;

  const FormLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
