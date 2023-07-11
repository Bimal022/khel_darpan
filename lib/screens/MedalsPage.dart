import 'package:flutter/material.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';
import 'package:khel_darpan/ComponentsMedalsScreen/TableHeading.dart';

import '../ComponentsMedalsScreen/TableContent.dart';

class MedalsPage extends StatelessWidget {
  const MedalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Olympics Medals 2023",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 400,
                height: 40,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                child: const TableHeading(),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    TableContent(),
                    TableContent(),
                    TableContent(),
                    TableContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
