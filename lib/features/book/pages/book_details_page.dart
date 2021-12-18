import 'package:audiobookr_admin/commons/responsive/responsive.dart';
import 'package:audiobookr_admin/commons/widgets/text_fields/form_dropdown.dart';
import 'package:audiobookr_admin/commons/widgets/text_fields/form_field.dart';
import 'package:audiobookr_admin/commons/widgets/text_fields/form_label.dart';
import 'package:flutter/cupertino.dart';
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
          child: const BookDetailsForm(),
        ),
      ),
    );
  }
}

class BookDetailsForm extends StatefulWidget {
  const BookDetailsForm({
    Key? key,
  }) : super(key: key);

  @override
  State<BookDetailsForm> createState() => _BookDetailsFormState();
}

class _BookDetailsFormState extends State<BookDetailsForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  final _categories = const [
    FormDropdownOption(label: 'Novel', value: 'novel'),
    FormDropdownOption(label: 'Adventure', value: 'adventure'),
    FormDropdownOption(label: 'Detective', value: 'detective'),
  ];

  FormDropdownOption _selectedCategory =
      const FormDropdownOption(label: 'Novel', value: 'novel');

  @override
  void initState() {
    _selectedCategory = _categories[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const fieldDistance = 24.0;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // BOOK NAME
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: FormLabel(text: 'Book Name'),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: FormInput(
                  controller: _nameController,
                  hintText: 'Name',
                ),
              ),
              if (!Responsive.isMobile(context)) const Spacer(flex: 1),
            ],
          ),

          const SizedBox(height: fieldDistance),

          // BOOK DESCRIPTION
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: FormLabel(text: 'Description'),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 3,
                child: FormInput(
                  controller: _descriptionController,
                  hintText: 'Describe new book',
                  maxLines: 4,
                ),
              ),
              if (!Responsive.isMobile(context)) const Spacer(flex: 1),
            ],
          ),

          const SizedBox(height: fieldDistance),

          // BOOK CATEGORY
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 1,
                child: FormLabel(text: 'Category'),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 2,
                child: FormDropdown(
                  selectedItem: _selectedCategory,
                  items: _categories,
                ),
              ),
              if (!Responsive.isMobile(context)) const Spacer(flex: 2),
            ],
          )

          // BOOK AUTHOR

          // FEATURE IMAGE

          // COVER IMAGE

          // AUDIO
        ],
      ),
    );
  }
}
