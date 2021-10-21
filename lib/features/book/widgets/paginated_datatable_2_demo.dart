import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:data_table_2/paginated_data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomPaginatedDataTable extends StatefulWidget {
  const CustomPaginatedDataTable({
    Key? key,
  }) : super(key: key);

  @override
  _CustomPaginatedDataTableState createState() =>
      _CustomPaginatedDataTableState();
}

class _CustomPaginatedDataTableState extends State<CustomPaginatedDataTable> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  bool _sortAscending = true;
  int? _sortColumnIndex;
  late DessertDataSource _dessertsDataSource;
  bool _initialized = false;
  PaginatorController? _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _dessertsDataSource = DessertDataSource(context);
      _controller = PaginatorController();
      _initialized = true;
    }
  }

  void sort<T>(
    Comparable<T> Function(Dessert d) getField,
    int columnIndex,
    bool ascending,
  ) {
    _dessertsDataSource.sort<T>(getField, ascending);
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });
  }

  @override
  void dispose() {
    _dessertsDataSource.dispose();
    super.dispose();
  }

  List<DataColumn> get _columns {
    return [
      DataColumn(
        label: const Text(
          'Desert',
          style: TextStyle(color: ColorName.primaryColor),
        ),
        onSort: (columnIndex, ascending) =>
            sort<String>((d) => d.name, columnIndex, ascending),
      ),
      DataColumn(
        label:
            Text('Calories', style: TextStyle(color: ColorName.primaryColor)),
        numeric: true,
        onSort: (columnIndex, ascending) =>
            sort<num>((d) => d.calories, columnIndex, ascending),
      ),
      DataColumn(
        label:
            Text('Fat (gm)', style: TextStyle(color: ColorName.primaryColor)),
        numeric: true,
        onSort: (columnIndex, ascending) =>
            sort<num>((d) => d.fat, columnIndex, ascending),
      ),
      DataColumn(
        label:
            Text('Carbs (gm)', style: TextStyle(color: ColorName.primaryColor)),
        numeric: true,
        onSort: (columnIndex, ascending) =>
            sort<num>((d) => d.carbs, columnIndex, ascending),
      ),
      DataColumn(
        label: Text('Protein (gm)',
            style: TextStyle(color: ColorName.primaryColor)),
        numeric: true,
        onSort: (columnIndex, ascending) =>
            sort<num>((d) => d.protein, columnIndex, ascending),
      ),
      DataColumn(
        label: Text('Sodium (mg)',
            style: TextStyle(color: ColorName.primaryColor)),
        numeric: true,
        onSort: (columnIndex, ascending) =>
            sort<num>((d) => d.sodium, columnIndex, ascending),
      ),
      DataColumn(
        label: Text('Calcium (%)',
            style: TextStyle(color: ColorName.primaryColor)),
        numeric: true,
        onSort: (columnIndex, ascending) =>
            sort<num>((d) => d.calcium, columnIndex, ascending),
      ),
      DataColumn(
        label:
            Text('Iron (%)', style: TextStyle(color: ColorName.primaryColor)),
        numeric: true,
        onSort: (columnIndex, ascending) =>
            sort<num>((d) => d.iron, columnIndex, ascending),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: PaginatedDataTable2(
            // horizontalMargin: 20,

            checkboxHorizontalMargin: 12,
            columnSpacing: 8,
            wrapInCard: false,
            rowsPerPage: _rowsPerPage,
            autoRowsToHeight: true,
            minWidth: 800,
            fit: FlexFit.tight,
            showCheckboxColumn: false,
            initialFirstRowIndex: 0,
            onRowsPerPageChanged: (value) {
              // No need to wrap into setState, it will be called inside the widget
              // and trigger rebuild
              //setState(() {
              _rowsPerPage = value!;
              //});
            },
            onPageChanged: (rowIndex) {},
            sortColumnIndex: _sortColumnIndex,
            sortAscending: _sortAscending,
            onSelectAll: _dessertsDataSource.selectAll,
            controller: _controller,
            // controller:
            //     getCurrentRouteOption(context) == custPager ? _controller : null,
            // hidePaginator: getCurrentRouteOption(context) == custPager,
            hidePaginator: false,
            columns: _columns,
            empty: Center(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey[200],
                child: Text('No data'),
              ),
            ),
            source: _dessertsDataSource,
          ),
        ),
        // if (getCurrentRouteOption(context) == custPager)
        // Positioned(bottom: 16, child: _CustomPager(_controller!))
      ],
    );
  }
}

class _PageNumber extends StatefulWidget {
  const _PageNumber({
    required PaginatorController controller,
  }) : _controller = controller;

  final PaginatorController _controller;

  @override
  _PageNumberState createState() => _PageNumberState();
}

class _PageNumberState extends State<_PageNumber> {
  @override
  void initState() {
    super.initState();
    widget._controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(widget._controller.isAttached
        ? 'Page: ${1 + ((widget._controller.currentRowIndex + 1) / widget._controller.rowsPerPage).floor()} of '
            '${(widget._controller.rowCount / widget._controller.rowsPerPage).ceil()}'
        : 'Page: x of y');
  }
}

class _CustomPager extends StatefulWidget {
  const _CustomPager(this.controller);

  final PaginatorController controller;

  @override
  _CustomPagerState createState() => _CustomPagerState();
}

class _CustomPagerState extends State<_CustomPager> {
  static const List<int> _availableSizes = [3, 5, 10, 20];

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () => widget.controller.goToFirstPage(),
              icon: Icon(Icons.skip_previous)),
          IconButton(
              onPressed: () => widget.controller.goToPreviousPage(),
              icon: Icon(Icons.chevron_left_sharp)),
          DropdownButton<int>(
              onChanged: (v) => widget.controller.setRowsPerPage(v!),
              value: _availableSizes.contains(widget.controller.rowsPerPage)
                  ? widget.controller.rowsPerPage
                  : _availableSizes[0],
              dropdownColor: Colors.grey[800],
              items: _availableSizes
                  .map((s) => DropdownMenuItem<int>(
                        child: Text(s.toString()),
                        value: s,
                      ))
                  .toList()),
          IconButton(
              onPressed: () => widget.controller.goToNextPage(),
              icon: Icon(Icons.chevron_right_sharp)),
          IconButton(
              onPressed: () => widget.controller.goToLastPage(),
              icon: Icon(Icons.skip_next))
        ],
      ),
      width: 220,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
      ),
    );
  }
}

class RestorableDessertSelections extends RestorableProperty<Set<int>> {
  Set<int> _dessertSelections = {};

  /// Returns whether or not a dessert row is selected by index.
  bool isSelected(int index) => _dessertSelections.contains(index);

  /// Takes a list of [Dessert]s and saves the row indices of selected rows
  /// into a [Set].
  void setDessertSelections(List<Dessert> desserts) {
    final updatedSet = <int>{};
    for (var i = 0; i < desserts.length; i += 1) {
      var dessert = desserts[i];
      if (dessert.selected) {
        updatedSet.add(i);
      }
    }
    _dessertSelections = updatedSet;
    notifyListeners();
  }

  @override
  Set<int> createDefaultValue() => _dessertSelections;

  @override
  Set<int> fromPrimitives(Object? data) {
    final selectedItemIndices = data as List<dynamic>;
    _dessertSelections = {
      ...selectedItemIndices.map<int>((dynamic id) => id as int),
    };
    return _dessertSelections;
  }

  @override
  void initWithValue(Set<int> value) {
    _dessertSelections = value;
  }

  @override
  Object toPrimitives() => _dessertSelections.toList();
}

class Dessert {
  Dessert(
    this.name,
    this.calories,
    this.fat,
    this.carbs,
    this.protein,
    this.sodium,
    this.calcium,
    this.iron,
  );

  final String name;
  final int calories;
  final double fat;
  final int carbs;
  final double protein;
  final int sodium;
  final int calcium;
  final int iron;
  bool selected = false;
}

class DessertDataSource extends DataTableSource {
  DessertDataSource.empty(this.context) {
    desserts = [];
  }

  DessertDataSource(this.context) {
    desserts = <Dessert>[
      Dessert('Frozen Yogurt', 159, 6.0, 24, 4.0, 87, 14, 1),
      Dessert('Ice Cream Sandwich', 237, 9.0, 37, 4.3, 129, 8, 1),
      Dessert('Eclair', 262, 16.0, 24, 6.0, 337, 6, 7),
      Dessert('Cupcake', 305, 3.7, 67, 4.3, 413, 3, 8),
      Dessert('Gingerbread', 356, 16.0, 49, 3.9, 327, 7, 16),
      Dessert('Jelly Bean', 375, 0.0, 94, 0.0, 50, 0, 0),
      Dessert('Lollipop', 392, 0.2, 98, 0.0, 38, 0, 2),
      Dessert('Honeycomb', 408, 3.2, 87, 6.5, 562, 0, 45),
      Dessert('Donut', 452, 25.0, 51, 4.9, 326, 2, 22),
      Dessert('Apple Pie', 518, 26.0, 65, 7.0, 54, 12, 6),
      Dessert('Frozen Yougurt with sugar', 168, 6.0, 26, 4.0, 87, 14, 1),
      Dessert('Ice Cream Sandich with sugar', 246, 9.0, 39, 4.3, 129, 8, 1),
      Dessert('Eclair with sugar', 271, 16.0, 26, 6.0, 337, 6, 7),
      Dessert('Cupcake with sugar', 314, 3.7, 69, 4.3, 413, 3, 8),
      Dessert('Gingerbread with sugar', 345, 16.0, 51, 3.9, 327, 7, 16),
      Dessert('Jelly Bean with sugar', 364, 0.0, 96, 0.0, 50, 0, 0),
      Dessert('Lollipop with sugar', 401, 0.2, 100, 0.0, 38, 0, 2),
      Dessert('Honeycomd with sugar', 417, 3.2, 89, 6.5, 562, 0, 45),
      Dessert('Donut with sugar', 461, 25.0, 53, 4.9, 326, 2, 22),
      Dessert('Apple pie with sugar', 527, 26.0, 67, 7.0, 54, 12, 6),
      Dessert('Forzen yougurt with honey', 223, 6.0, 36, 4.0, 87, 14, 1),
      Dessert('Ice Cream Sandwich with honey', 301, 9.0, 49, 4.3, 129, 8, 1),
      Dessert('Eclair with honey', 326, 16.0, 36, 6.0, 337, 6, 7),
      Dessert('Cupcake with honey', 369, 3.7, 79, 4.3, 413, 3, 8),
      Dessert('Gignerbread with hone', 420, 16.0, 61, 3.9, 327, 7, 16),
      Dessert('Jelly Bean with honey', 439, 0.0, 106, 0.0, 50, 0, 0),
      Dessert('Lollipop with honey', 456, 0.2, 110, 0.0, 38, 0, 2),
      Dessert('Honeycomd with honey', 472, 3.2, 99, 6.5, 562, 0, 45),
      Dessert('Donut with honey', 516, 25.0, 63, 4.9, 326, 2, 22),
      Dessert('Apple pie with honey', 582, 26.0, 77, 7.0, 54, 12, 6),
    ];
  }

  final BuildContext context;
  late List<Dessert> desserts;

  void sort<T>(Comparable<T> Function(Dessert d) getField, bool ascending) {
    desserts.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });
    notifyListeners();
  }

  int _selectedCount = 0;

  void updateSelectedDesserts(RestorableDessertSelections selectedRows) {
    _selectedCount = 0;
    for (var i = 0; i < desserts.length; i += 1) {
      var dessert = desserts[i];
      if (selectedRows.isSelected(i)) {
        dessert.selected = true;
        _selectedCount += 1;
      } else {
        dessert.selected = false;
      }
    }
    notifyListeners();
  }

  void updateSelectedDessertsFromSet(Set<int> selectedRows) {
    _selectedCount = 0;
    for (var i = 0; i < desserts.length; i += 1) {
      var dessert = desserts[i];
      if (selectedRows.contains(i)) {
        dessert.selected = true;
        _selectedCount += 1;
      } else {
        dessert.selected = false;
      }
    }
    notifyListeners();
  }

  @override
  DataRow getRow(int index) {
    final format = NumberFormat.decimalPercentPattern(
      locale: 'en',
      decimalDigits: 0,
    );
    assert(index >= 0);
    if (index >= desserts.length) throw 'index > _desserts.length';
    final dessert = desserts[index];
    return DataRow.byIndex(
      index: index,
      selected: dessert.selected,
      onSelectChanged: (value) {
        if (dessert.selected != value) {
          _selectedCount += value! ? 1 : -1;
          assert(_selectedCount >= 0);
          dessert.selected = value;
          notifyListeners();
        }
      },
      cells: [
        DataCell(Text(dessert.name)),
        DataCell(Text('${dessert.calories}')),
        DataCell(Text(dessert.fat.toStringAsFixed(1))),
        DataCell(Text('${dessert.carbs}')),
        DataCell(Text(dessert.protein.toStringAsFixed(1))),
        DataCell(Text('${dessert.sodium}')),
        DataCell(Text(format.format(dessert.calcium / 100))),
        DataCell(Text(format.format(dessert.iron / 100))),
      ],
    );
  }

  @override
  int get rowCount => desserts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;

  void selectAll(bool? checked) {
    for (final dessert in desserts) {
      dessert.selected = checked ?? false;
    }
    _selectedCount = (checked ?? false) ? desserts.length : 0;
    notifyListeners();
  }
}
