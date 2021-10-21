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
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        isDense: true,
        hintText: "Search",
        fillColor: ColorName.illusion,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6.0),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Assets.icons.search.svg(color: Colors.white54),
        ),
      ),
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
