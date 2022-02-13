import 'package:flutter/material.dart';
import 'package:sozashop_app/core/constants/colors.dart';
import 'package:sozashop_app/presentation/screens/sales_screen/sales_details_screen.dart';

class CatTable extends StatelessWidget {
  const CatTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final columns = [
      'Name',
      'Description',
      'Product Type',
      'Total Sale',
      '',
    ];
    final listRows = [
      'Name',
      'Description',
      'Product Type',
      'Total Sale',
      'row',
      'row',
      'row',
      'row',
      'row',
      'row',
      'row',
      'row',
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: DataTable(
          showCheckboxColumn: true,
          columns: getColumns(columns),
          rows: getRows(listRows),
        ),
      ),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map(
        (String column) => DataColumn(
          label: Text(column),
        ),
      )
      .toList();

  List<DataRow> getRows(List<String> listRows) => listRows
      .map(
        (String listRow) => DataRow(
          cells: [
            DataCell(
              Builder(
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SalesDetailsScreen(),
                        ),
                      );
                    },
                    child: const Text('Hi'),
                  );
                },
              ),
            ),
            const DataCell(Text('Hi')),
            const DataCell(Text('Hi')),
            const DataCell(Text('Hi')),
            DataCell(
              Builder(
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SalesDetailsScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                        color: kPrimary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 25,
                      child: const Center(
                        child: Icon(
                          Icons.list,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )
      .toList();
}
