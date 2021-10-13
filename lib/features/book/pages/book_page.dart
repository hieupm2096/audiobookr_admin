import 'package:audiobookr_admin/commons/responsive/responsive.dart';
import 'package:audiobookr_admin/features/book/pages/paginated_datatable_2_demo.dart';
import 'package:audiobookr_admin/features/music/widgets/text_field/search_field.dart';
import 'package:audiobookr_admin/gen/assets.gen.dart';
import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Upper
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text("Add New"),
                ),
                const SizedBox(width: 16.0),
                if (Responsive.isDesktop(context)) const Spacer(),
                const Expanded(child: SearchField()),
                const SizedBox(width: 8.0),
                Material(
                  color: ColorName.illusion,
                  borderRadius: BorderRadius.circular(6.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(6.0),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Assets.icons.filter.svg(color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20.0),

            // Lower
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: ColorName.illusion,
                ),
                child: const PaginatedDataTable2Demo(),
              ),
            ),

            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
