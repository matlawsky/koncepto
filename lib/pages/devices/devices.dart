import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koncepto/boxes.dart';
import 'package:koncepto/constants/controllers.dart';
import 'package:koncepto/models/device.dart';
import 'package:koncepto/pages/devices/repl.dart';
import 'package:koncepto/widgets/custom_text.dart';
import 'package:koncepto/widgets/responsiveness.dart';
import 'package:uuid/uuid.dart';
import 'device_dialog.dart';


class DevicesPage extends StatelessWidget {
  static const int numItems = 10;
  final List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  DevicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(text: menuController.activeItem.value, size: 24, weight: FontWeight.bold, color: Colors.black,),
            ),
          ],
        )),
        const SizedBox(height: 16.0),
        Row(children: [
          ElevatedButton.icon(
            onPressed: () async {
              Get.dialog(Dialog(
                child: DeviceDialog(onConfirm:(name, model, type, address, serialPort) => {

                })
              ));
            },
            icon: const Icon(Icons.add, size: 18),
            label: const Text("Add Device"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253))
              ),
          ),
          const SizedBox(width: 8.0),
          ElevatedButton.icon(
            onPressed: () async {
              Get.dialog(const Dialog(
                child:REPLPage()
              ));
            },
            icon: const Icon(Icons.wifi, size: 18),
            label: const Text("WebREPL"),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253))),
          ),
          const SizedBox(width: 8.0),
          ElevatedButton.icon(
            onPressed: () async {},
            icon: const Icon(Icons.settings_input_hdmi, size: 18),
            label: const Text("Serial"),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253))),
          ),
        ],),
        const SizedBox(height: 8.0),
        SizedBox(
          width: double.infinity,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('Id'),),
              DataColumn(label: Text('Name'),),
              DataColumn(label: Text('Model'),),
              DataColumn(label: Text('Project'),),
              DataColumn(label: Text('Edit')),
              DataColumn(label: Text('Delete'))
            ],
            rows: [
              DataRow(
                cells: <DataCell>[
                  const DataCell(Text('D13114')),
                  const DataCell(Text('MyESP32')),
                  const DataCell(Text('ESP32')),
                  const DataCell(Text('Master')),
                  DataCell(
                    ElevatedButton.icon(
                    onPressed: () {
                      // Respond to button press
                      },
                      icon: const Icon(Icons.edit, size: 18),
                      label: const Text("Edit Device"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253))),
                    ),),
                    DataCell(
                      ElevatedButton.icon(
                          onPressed: () {
                            // Respond to button press
                          },
                          icon: const Icon(Icons.close, size: 18),
                          label: const Text("Delete Device"),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253))),
                        ),
                    ),
                    
                    ],
                    ),
              DataRow(
                cells: <DataCell>[
                  const DataCell(Text('D13124')),
                  const DataCell(Text('MyESP8266')),
                  const DataCell(Text('ESP32')),
                  const DataCell(Text('Master')),
                  DataCell(
                    ElevatedButton.icon(
                    onPressed: () {
                      // Respond to button press
                      },
                      icon: const Icon(Icons.edit, size: 18),
                      label: const Text("Edit Device"),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253))),
                    ),),
                    DataCell(
                      ElevatedButton.icon(
                          onPressed: () {
                            // Respond to button press
                          },
                          icon: const Icon(Icons.close, size: 18),
                          label: const Text("Delete Device"),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253))),
                        ),
                    ),
                    
                    ],
                    ),
                  ]
          )
      )
      ]
      );
      
  }
}

  Future addProject(String name, String description) async {
    final project = Device()
      ..name = name
      ..id = const Uuid().v1()
      ..description = description;

    final box = Boxes.getDevices();
    box.add(project);

  }
// Color.fromARGB(255, 150, 132, 253)