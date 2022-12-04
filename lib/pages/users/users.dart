import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koncepto/constants/controllers.dart';
import 'package:koncepto/pages/users/user_datasource.dart';
import 'package:koncepto/widgets/custom_text.dart';
import 'package:koncepto/widgets/responsiveness.dart';

class UsersPage extends StatelessWidget {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Obx(() => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          )),
      // Expanded(child: DataTable2SimpleDemo())
      const SizedBox(height: 16.0),
      Row(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              // Respond to button press
            },
            icon: const Icon(Icons.add, size: 18),
            label: const Text("New User"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 150, 132, 253))),
          ),
          const SizedBox(width: 8.0),
          ElevatedButton.icon(
            onPressed: () {
              // Respond to button press
            },
            icon: const Icon(Icons.close, size: 18),
            label: const Text("Remove User"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 150, 132, 253))),
          ),
          const SizedBox(width: 8.0),
          ElevatedButton.icon(
            onPressed: () {
              // Respond to button press
            },
            icon: const Icon(Icons.edit, size: 18),
            label: const Text("Edit User Data"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 150, 132, 253))),
          ),
          const SizedBox(width: 8.0),
          ElevatedButton.icon(
            onPressed: () {
              // Respond to button press
            },
            icon: const Icon(Icons.assignment, size: 18),
            label: const Text("Assignments/Privileges"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 150, 132, 253))),
          ),
        ],
      ),
      const SizedBox(height: 8.0),
      // SizedBox(
      //   width: double.infinity,
      //   child: DataTable(
      //     columns: const <DataColumn>[
      //       DataColumn(
      //         label: Text('Id'),
      //       ),
      //       DataColumn(
      //         label: Text('Name'),
      //       ),
      //       DataColumn(
      //         label: Text('Surname'),
      //       ),
      //       DataColumn(
      //         label: Text('Email'),
      //       ),
      //     ],
      //     rowsPerPage: 10,
      //     // source: ValueListenableBuilder,
      //   ),
      // ),
    ]);
  }
}
