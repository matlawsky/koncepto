import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koncepto/constants/controllers.dart';
import 'package:koncepto/pages/overview/widgets/overview_cards_large.dart';
import 'package:koncepto/pages/overview/widgets/overview_cards_medium.dart';
import 'package:koncepto/pages/overview/widgets/overview_cards_small.dart';
import 'package:koncepto/widgets/custom_text.dart';
import 'package:koncepto/widgets/responsiveness.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10,top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(text: menuController.activeItem.value, size: 24, weight: FontWeight.bold, color: Colors.black,),
            )
          ],
        )),
        const SizedBox(height: 15,),
        Expanded(child: ListView(
          
          children: [
            if(ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context))
              if(ResponsiveWidget.isCustomScreen(context))
                const OverviewCardsMediumScreen()
              else
                const OverviewCardsLargeScreen()
            else
              const OverviewCardsSmallScreen(),
            
              
          ],
          
        ),
        ),
        // Expanded(child: AvailableDriversTable())
      ],
    );
  }
}