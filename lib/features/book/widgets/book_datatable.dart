import 'package:audiobookr_admin/commons/models/book/book.dart';
import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:data_table_2/paginated_data_table_2.dart';
import 'package:flutter/material.dart';

class BookPaginatedDataTable extends StatelessWidget {
  final BookDataTableSource dataSource;

  const BookPaginatedDataTable({
    Key? key,
    required this.dataSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: PaginatedDataTable2(
        // horizontalMargin: 20,

        checkboxHorizontalMargin: 12,
        columnSpacing: 32,
        wrapInCard: false,
        rowsPerPage: PaginatedDataTable.defaultRowsPerPage,
        // autoRowsToHeight: true,
        minWidth: 800,
        fit: FlexFit.tight,
        showCheckboxColumn: false,
        initialFirstRowIndex: 0,
        onRowsPerPageChanged: (value) {
          print('onRowPerPageChanged');
        },
        onPageChanged: (rowIndex) {
          print('onPageChanged');
        },
        // sortColumnIndex: 0,
        // sortAscending: false,
        // controller: _controller,
        // controller:
        //     getCurrentRouteOption(context) == custPager ? _controller : null,
        // hidePaginator: getCurrentRouteOption(context) == custPager,
        hidePaginator: false,
        columns: _buildColumn(),
        source: dataSource,
        smRatio: 0.2,
        lmRatio: 2.0,
      ),
    );
  }

  List<DataColumn> _buildColumn() {
    return [
      const DataColumn2(
        size: ColumnSize.S,
        label: Text(
          '#',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      DataColumn2(
        size: ColumnSize.L,
        label: const Text(
          'Name',
          style: TextStyle(color: ColorName.primaryColor),
        ),
        onSort: (columnIndex, ascending) {
          print('onName sort: $columnIndex ascending: $ascending');
        },
      ),
      DataColumn2(
        size: ColumnSize.M,
        label: const Text(
          'Genre',
          style: TextStyle(color: ColorName.primaryColor),
        ),
        onSort: (columnIndex, ascending) {
          print('onGenere sort: $columnIndex ascending: $ascending');
        },
      ),
      DataColumn2(
        size: ColumnSize.M,
        label: const Text(
          'Author',
          style: TextStyle(color: ColorName.primaryColor),
        ),
        onSort: (columnIndex, ascending) {
          print('onAuthor sort: $columnIndex ascending: $ascending');
        },
      ),
    ];
  }
}

class BookDataTableSource extends DataTableSource {
  final List<Book> books;
  final bool isLoading;

  BookDataTableSource(
    this.books, {
    this.isLoading = false,
  });

  @override
  DataRow? getRow(int index) {
    var book = books[index];
    return DataRow2.byIndex(
      index: index,
      onTap: () {
        print('onRowTap: ${book.name}');
      },
      onSecondaryTap: () {
        print('onSecondRowTap: ${book.name}');
      },
      cells: [
        DataCell(
          !isLoading ? Text((index + 1).toString()) : const SizedBox.shrink(),
        ),
        DataCell(
          !isLoading ? Text(book.name) : const SizedBox.shrink(),
        ),
        DataCell(
          !isLoading ? Text(book.description ?? '') : const SizedBox.shrink(),
        ),
        DataCell(
          !isLoading
              ? Text(book.createdDate?.toIso8601String() ?? '')
              : const SizedBox.shrink(),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => books.length;

  @override
  int get selectedRowCount => 0;
}
