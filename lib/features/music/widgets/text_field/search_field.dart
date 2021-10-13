import 'package:audiobookr_admin/gen/assets.gen.dart';
import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        hintText: "Search",
        fillColor: ColorName.illusion,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Assets.icons.search.svg(color: Colors.white54),
        ),
      ),
    );
  }
}
