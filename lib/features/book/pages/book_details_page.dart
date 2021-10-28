import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('canPop: ${Navigator.of(context).canPop()}');

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
    );
  }
}
