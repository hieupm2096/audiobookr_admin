import 'package:flutter/material.dart';

class CreateBookPage extends StatelessWidget {
  const CreateBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('canPop: ${Navigator.of(context).canPop()}');

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
