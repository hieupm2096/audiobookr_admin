import 'package:audiobookr_admin/commons/responsive/responsive.dart';
import 'package:audiobookr_admin/commons/routes/auto_router_x.dart';
import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:audiobookr_admin/commons/widgets/buttons/custom_icon_button.dart';
import 'package:audiobookr_admin/commons/widgets/buttons/primary_button.dart';
import 'package:audiobookr_admin/features/book/bloc/book_bloc.dart';
import 'package:audiobookr_admin/features/book/widgets/book_cells_shimmer.dart';
import 'package:audiobookr_admin/features/book/widgets/book_datatable.dart';
import 'package:audiobookr_admin/commons/widgets/text_fields/search_field.dart';
import 'package:audiobookr_admin/features/book/widgets/refresh_button.dart';
import 'package:audiobookr_admin/gen/assets.gen.dart';
import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:audiobookr_admin/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocProvider(
          create: (context) => getIt<BookBloc>()..add(const BooksFetchEvent()),
          child: Builder(
            builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Upper
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryButton(
                        title: 'Add new',
                        icon: const Icon(Icons.add),
                        contentPadding:
                            const EdgeInsets.fromLTRB(12.0, 0.0, 16.0, 0.0),
                        onTap: () =>
                            context.navigateTo(const BookDetailsRoute()),
                      ),
                      const SizedBox(width: 16.0),
                      if (Responsive.isDesktop(context)) const Spacer(),
                      BlocBuilder<BookBloc, BookState>(
                        builder: (context, state) {
                          return RefreshButton(
                            isLoading: state is BookLoading,
                            onTap: () => context
                                .read<BookBloc>()
                                .add(const BooksFetchEvent()),
                          );
                        },
                      ),
                      const SizedBox(width: 8.0),
                      CustomIconButton(
                        icon: Assets.icons.filter.svg(color: Colors.white70),
                        onTap: () {},
                      ),
                      const SizedBox(width: 8.0),
                      const Expanded(child: SearchField()),
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
                      child: BlocBuilder<BookBloc, BookState>(
                        builder: (context, state) {
                          return Stack(
                            children: [
                              IgnorePointer(
                                ignoring: state is BookLoading,
                                child: BookPaginatedDataTable(
                                  dataSource: BookDataTableSource(
                                    state is BooksLoaded ? state.books : [],
                                    isLoading: state is BookLoading,
                                  ),
                                ),
                              ),
                              if (state is BookLoading)
                                const BookCellsShimmer(),
                            ],
                          );
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 20.0),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
