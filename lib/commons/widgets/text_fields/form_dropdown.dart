import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormDropdownOption extends Equatable {
  final String label;
  final String value;

  const FormDropdownOption({
    required this.label,
    required this.value,
  });

  @override
  List<Object> get props => [label, value];
}

class FormDropdown extends StatefulWidget {
  final FormDropdownOption selectedItem;
  final List<FormDropdownOption> items;

  const FormDropdown({
    Key? key,
    required this.selectedItem,
    required this.items,
  }) : super(key: key);

  @override
  State<FormDropdown> createState() => _FormDropdownState();
}

class _FormDropdownState extends State<FormDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<FormDropdownOption>(
      elevation: 0,
      isDense: true,
      // alignment: AlignmentDirectional.topStart,
      icon: const Icon(
        CupertinoIcons.chevron_down,
        size: 16.0,
      ),
      onChanged: print,
      value: widget.selectedItem,
      items: widget.items
          .map((e) => DropdownMenuItem<FormDropdownOption>(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    e.label,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                value: e,
              ))
          .toList(),
      decoration: InputDecoration(
        isDense: true,
        hintText: 'Choose category',
        fillColor: ColorName.illusion,
        filled: true,
        // suffix: suffix,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 16.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}
