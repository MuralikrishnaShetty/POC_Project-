import 'package:demopoc/Widget/order_top_bar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OrderTopBar(),
      // full body column
      body: SingleChildScrollView(
        child: Column(
          children: [
            // first row
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                  child: const Text("Order #",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(213, 20, 0, 0),
                  child: const Text("School District:",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                )
              ],
            ),
            // second row
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: const Text(
                    "6472949502",
                    style: TextStyle(
                      color: Color.fromRGBO(5, 76, 184, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 173),
                  child: const Text(
                    "Cincinnati",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            // third row
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                  child: const Text("Address:",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(233, 25, 0, 0),
                  child: const Text("Order Date",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ],
            ),
            // forth row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 177,
                  height: 60,
                  margin: const EdgeInsets.only(left: 12),
                  child: const Text(
                      "2121 Hatmaker St #126, Cincinnati, OH 45204, United States",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Container(
                  width: 86,
                  height: 20,
                  margin: const EdgeInsets.only(left: 103),
                  child: const Text("05 April 2024",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // fifth row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: const Text("Route ID:08247001",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            //  table content
            DataTable(
                columnSpacing: 30.0,
                border: const TableBorder(
                    bottom: BorderSide(width: 0.5, color: Colors.grey),
                    verticalInside: BorderSide(width: 0.5, color: Colors.grey)),
                columns:const  [
                  DataColumn(
                    label: Text(
                      'Name',
                    ),
                  ),
                  DataColumn(
                    label: Text('Trips'),
                  ),
                  DataColumn(
                    label: Text('Distance'),
                  ),
                  DataColumn(
                    label: Text('Cost'),
                  ),
                ],
                rows:const  [
                  DataRow(
                    cells: [
                      DataCell(Text('Pick-Up')),
                      DataCell(Text('05')),
                      DataCell(Text('80miles')),
                      DataCell(Text('85.83')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Drop-Off')),
                      DataCell(Text('05')),
                      DataCell(Text('80miles')),
                      DataCell(Text('85.83')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Off time Charge*')),
                      DataCell(Text('01')),
                      DataCell(Text('16miles')),
                      DataCell(Text('20.00')),
                    ],
                  ),
                ]),
            // table ends
            const SizedBox(
              height: 14,
            ),
            // firts row after table
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 215),
                  child: const Text("Total",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                const SizedBox(
                  width: 59,
                ),
                const Text(
                  "191.66",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            // second row after table
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 215),
                  child: const Text("Tax (10%)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                const SizedBox(
                  width: 37,
                ),
                const Text(
                  "20.00",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Container(
              width: 184,
              margin: const EdgeInsets.only(left: 180),
              child: const Divider(
                color: Colors.black,
              ),
            ),

            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 215),
                  child: const Text(
                    "Balance Due",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "211.66",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: const Text("Note:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  width: 300,
                  height: 40,
                  child: const Text(
                    "*Called in early due to Tornado warning. Charged extra based on contract Section 233.4",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 44,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(218, 41, 28, 1)),
              width: 367,
              height: 48,
              alignment: Alignment.center,
              // color:const  Color.fromRGBO(218, 41, 28, 1),
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Close",
              style: TextStyle(
                color: Color.fromRGBO(11, 34, 101, 1),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
