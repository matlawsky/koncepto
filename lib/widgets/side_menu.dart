import 'package:flutter/material.dart';
import 'package:koncepto/constants/controllers.dart';
import 'package:koncepto/constants/style.dart';
import 'package:koncepto/widgets/responsiveness.dart';
import 'package:koncepto/routing/routes.dart';
import 'package:koncepto/widgets/custom_text.dart';
import 'package:koncepto/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthMedia = MediaQuery.of(context).size.width;

    return Container(
            color: light,
            child: ListView(
              children: [
                if(ResponsiveWidget.isSmallScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(width: widthMedia / 48),
                        const Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              'koncept', 
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -.5,
                                ),
                              ),
                          )
                        ),
                        const FittedBox(
                          fit: BoxFit.scaleDown,
                        child: CustomText(
                          text: "Dashboard",
                          size: 20,
                          weight: FontWeight.bold,
                          color: active,
                        ),
                      ),
                        SizedBox(width: widthMedia / 48),
                      ],
                    ),
                const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Divider(color: lightGrey.withOpacity(.1), ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: sideMenuItems.map((item) => SideMenuItem(
                          itemName: item.name,
                          onTap: () {
                            if(item.route == authenticationPageRoute){
                              menuController.changeActiveItemTo(overviewPageDisplayName);
                              Get.offAllNamed(authenticationPageRoute);
                            }
                            if (!menuController.isActive(item.name)) {
                              menuController.changeActiveItemTo(item.name);
                              if(ResponsiveWidget.isSmallScreen(context)) Get.back();
                              navigationController.navigateTo(item.route);
                            }
                          }))
                      .toList(),
                )
              ],
            ),
          );
  }
}