import 'package:flutter/material.dart';
import 'package:koncepto/pages/overview/widgets/info_card_small.dart';


class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({super.key});


  @override
  Widget build(BuildContext context) {
   double widthMedia = MediaQuery.of(context).size.width;

    return  Column(
        children: [
                InfoCardSmall(
                  title: "Projects",
                  value: "7",
                  onTap: () {},
                ),
                SizedBox(
                  width: widthMedia / 64,
                ),
                InfoCardSmall(
                  title: "Devices",
                  value: "17",
                  onTap: () {},
                ),
                SizedBox(
                  width: widthMedia / 64,
                ),
                InfoCardSmall(
                  title: "Users",
                  value: "3",
                  onTap: () {},
                ),
                SizedBox(
                  width: widthMedia / 64,
                ),
                InfoCardSmall(
                  title: "Scheduled tasks",
                  value: "32",
                  onTap: () {},
                ),          
        ],
      );
  }
}