import 'package:flutter/material.dart';
import '../Components/Constants/constants.dart';

class CustomTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DataTable(
        headingTextStyle: tableHeadingTextStyle,
        columnSpacing: 16,
        columns: [
          DataColumn(
            label: Center(
              child: Text('Position'),
            ),
          ),
          DataColumn(
            label: Center(
              child: Text('Country'),
            ),
          ),
          DataColumn(
            label: Center(
              child: Image.asset(
                "assets/medals/gold.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
          DataColumn(
            label: Center(
              child: Image.asset(
                "assets/medals/silver.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
          DataColumn(
            label: Center(
              child: Image.asset(
                "assets/medals/bronze.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
          DataColumn(
            label: Center(
              child: Text('Total'),
            ),
          ),
        ],
        rows: [
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('1'),
              ),
            ),
            DataCell(
              Center(
                child: Text('USA'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('2'),
              ),
            ),
            DataCell(
              Center(
                child: Text('China'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('3'),
              ),
            ),
            DataCell(
              Center(
                child: Text('Japan'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('4'),
              ),
            ),
            DataCell(
              Center(
                child: Text('Britain'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('5'),
              ),
            ),
            DataCell(
              Center(
                child: Text('India'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('6'),
              ),
            ),
            DataCell(
              Center(
                child: Text('France'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('7'),
              ),
            ),
            DataCell(
              Center(
                child: Text('Hungry'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('9'),
              ),
            ),
            DataCell(
              Center(
                child: Text('Cuba'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Center(
                child: Text('10'),
              ),
            ),
            DataCell(
              Center(
                child: Text('Italy'),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: goldTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: silverTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text(
                  '0',
                  style: bronzeTextStyle.textStyle,
                ),
              ),
            ),
            DataCell(
              Center(
                child: Text('0'),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
