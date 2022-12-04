import 'package:flutter/material.dart';
import 'package:koncepto/pages/overview/widgets/info_card.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({super.key});


  @override
  Widget build(BuildContext context) {
   double widthMedia = MediaQuery.of(context).size.width;

    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
              InfoCard(
                title: "Projects",
                value: "7",
                onTap: () {},
                topColor: Colors.orange,
              ),
              SizedBox(
                width: widthMedia / 64,
              ),
              InfoCard(
                title: "Devices",
                value: "17",
                topColor: Colors.lightGreen,
                onTap: () {},
              ),
              ],
            ),
        SizedBox(height: widthMedia / 64),
        Row(
            children: [
            InfoCard(
              title: "Users",
              value: "3",
              topColor: Colors.redAccent,
              onTap: () {},
            ),
            SizedBox(
              width: widthMedia / 64,
            ),
            InfoCard(
              title: "Scheduled tasks",
              value: "32",
              onTap: () {},
            ),
            ],
          ),
      ],
    );
  }
}