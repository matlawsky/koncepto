import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koncepto/constants/controllers.dart';
import 'package:koncepto/widgets/custom_text.dart';
import 'package:koncepto/widgets/responsiveness.dart';

class ViewsPage extends StatelessWidget {
  const ViewsPage({super.key});

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
          const SizedBox(width: 16.0),
          ElevatedButton.icon(
            onPressed: () {
              // Respond to button press
            },
            icon: const Icon(Icons.add, size: 24),
            label: const Text("New View"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 150, 132, 253)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              )), 
              ),
          ),
          ],
        )),
      ]);
  
  }
}