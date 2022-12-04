import 'package:koncepto/constants/style.dart';
import 'package:koncepto/widgets/custom_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';


/// Example without datasource
class AvailableDriversTable extends StatelessWidget {
  const AvailableDriversTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const <Widget> [
              SizedBox(width: 10),
              CustomText(
                text: "Available Drivers",
                color: lightGrey,
                weight: FontWeight.bold,
              ),
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: const [
                DataColumn2(
                  label: Text("Name"),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                  7,
                  (index) => DataRow(cells: [
                        const DataCell(CustomText(text: "Santos Enoque",
                              color: Colors.black,)),
                        const DataCell(CustomText(text: "New yourk city",
                              color: Colors.black,)),
                        DataCell(Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.deepOrange,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomText(
                              text: "4.5",
                              color: Colors.black,
                            )
                          ],
                        )),
                        DataCell(Container(
                            decoration: BoxDecoration(
                              color: light,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: active, width: .5),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            child: CustomText(
                              text: "Assign Delivery",
                              color: active.withOpacity(.7),
                              weight: FontWeight.bold,
                            ))),
                      ]))),
        ],
      ),
    );
  }
}

// /// Example without a datasource
// class DataTable2SimpleDemo extends StatelessWidget {
//   const DataTable2SimpleDemo();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: DataTable2(
//           columnSpacing: 12,
//           horizontalMargin: 12,
//           minWidth: 600,
//           columns: [
//             DataColumn2(
//               label: Text('Column A'),
//               size: ColumnSize.L,
//             ),
//             DataColumn(
//               label: Text('Column B'),
//             ),
//             DataColumn(
//               label: Text('Column C'),
//             ),
//             DataColumn(
//               label: Text('Column D'),
//             ),
//             DataColumn(
//               label: Text('Column NUMBERS'),
//               numeric: true,
//             ),
//           ],
//           rows: List<DataRow>.generate(
//               100,
//               (index) => DataRow(cells: [
//                     DataCell(Text('A' * (10 - index % 10))),
//                     DataCell(Text('B' * (10 - (index + 5) % 10))),
//                     DataCell(Text('C' * (15 - (index + 5) % 10))),
//                     DataCell(Text('D' * (15 - (index + 10) % 10))),
//                     DataCell(Text(((index + 0.1) * 25.4).toString()))
//                   ]))),
//     );
//   }
// }



// /// Example without a datasource
// class PacketsTable extends StatelessWidget {
//   const PacketsTable();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 30), 
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//         boxShadow: [BoxShadow(
//           offset: Offset(0,6),
//           color: lightGrey.withOpacity(.1),
//           blurRadius: 12,
//         ),]
//       ),
//       child: Column( 
//       mainAxisSize: MainAxisSize.min,
//       children: [
//       Row(
//         children: [
//           SizedBox(width: 10,),
//           CustomText(text: "Packets Exchanged", color: lightGrey, weight: FontWeight.bold,)
//         ],
//       ),
//       DataTable2(
//           columnSpacing: 12,
//           horizontalMargin: 12,
//           minWidth: 600,
//           columns: [
//             DataColumn2(
//               label: Text('Request Line'),
//               size: ColumnSize.L,
//             ),
//             DataColumn(
//               label: Text('Headers'),
//             ),
//             DataColumn(
//               label: Text('Body'),
//             ),
//           ],
//           rows: List<DataRow>.generate(
//               12,
//               (index) => DataRow(cells: [
//                     DataCell(CustomText(text: "Hello", color: Colors.black,)),
//                     DataCell(CustomText(text: "Custom", color: Colors.black,)),
//                     DataCell(CustomText(text: "Black", color: Colors.black,)),
//                   ]))),
//       ])
//     );
//   }
// }