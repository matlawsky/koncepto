import 'package:flutter/material.dart';
import 'package:koncepto/widgets/local_navigator.dart';
import 'package:koncepto/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  // const LargeScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: SideMenu()),
          //Container(width: 0.4, color: Colors.black),
          Expanded(flex: 5, 
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator()),
          )

        ],
      ),
    );
  }
}