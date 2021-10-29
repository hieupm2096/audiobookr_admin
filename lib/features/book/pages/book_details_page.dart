import 'package:audiobookr_admin/commons/responsive/responsive.dart';
import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('canPop: ${Navigator.of(context).canPop()}');

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(36.0, 20.0, 36.0, 36.0),
        child: Container(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Book Name',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Name",
                        fillColor: ColorName.illusion,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 16.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white10,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  if (!Responsive.isMobile(context)) const Spacer(flex: 1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
