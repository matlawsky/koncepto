import 'package:flutter/material.dart';
import 'package:koncepto/constants/style.dart';
import 'package:koncepto/models/device.dart';



class DeviceDialog extends StatefulWidget {
  final Device? device;
  final Function(String name, String model, String type, String address, String serialPort) onConfirm;

  const DeviceDialog({
    Key? key,
    this.device,
    required this.onConfirm
  }) : super(key:key);

  @override
  _DeviceDialogState createState() => _DeviceDialogState();
}

class _DeviceDialogState extends State<DeviceDialog> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final modelController = TextEditingController();
  final typeController = TextEditingController();
  final addressController = TextEditingController();
  final serialPortController = TextEditingController();

  // additional controller for checking who is the owner of the device

  @override
  void initState() {
    
    super.initState();
    if (widget.device != null) {
      final device = widget.device!;

      nameController.text = device.name;
      modelController.text = device.model;
      typeController.text = device.type;
      addressController.text = device.address.toString();
      serialPortController.text = device.serialPort;      

    }
  }

  @override
  void dispose() {
    nameController.dispose();
    modelController.dispose();
    typeController.dispose();
    addressController.dispose();
    serialPortController.dispose();
    super.dispose();
  }

  // @override
  // Widget build(BuildContext context) {
  //   final isEditing = widget.device != null;
  //   final title = isEditing ? 'Edit Device' : 'Add Device';

  //   return Form(
  //       key: formKey,
  //       child: SingleChildScrollView(
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             SizedBox(height: 8),
  //             buildName(),
  //             SizedBox(height: 8),
  //             buildAmount(),
  //             SizedBox(height: 8),
  //             buildRadioButtons(),
  //           ],
  //         ),
  //       ),
  //     ),
  //     actions: <Widget>[
  //       buildCancelButton(context),
  //       buildAddButton(context, isEditing: isEditing),
  //     ],
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black), 
        backgroundColor: Colors.white,
        title: const Text(
          "Add new device to the system",
          style: TextStyle(color: active)
        )
      ),
      bottomNavigationBar: ElevatedButton(onPressed: () {}, 
      child: const Text("Confirm")),
      body: Center(
          child: Column(
          children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              ),

              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                decoration: InputDecoration(
                  labelText: "Model",
                  hintText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                decoration: InputDecoration(
                  labelText: "Type",
                  hintText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                decoration: InputDecoration(
                  labelText: "Address",
                  hintText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              ),
            ],
            )
      )
      );
  
  
  }
}