import 'package:get/get.dart';
import 'package:koncepto/constants/style.dart';
import 'package:koncepto/routing/routes.dart';
import 'package:flutter/material.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageDisplayName.obs;
  var hoverItem  =  "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName){
    switch (itemName) {
      case overviewPageDisplayName:
        return _customIcon(Icons.home, itemName);
      case projectsPageDisplayName:
        return _customIcon(Icons.topic, itemName);
      case devicesPageDisplayName:
        return _customIcon(Icons.devices_other, itemName);
      case viewsPageDisplayName:
        return _customIcon(Icons.dashboard, itemName);
      case usersPageDisplayName:
        return _customIcon(Icons.group, itemName);
      // case FAQPageDisplayName:
      //   return _customIcon(Icons.help, itemName);          
      default: 
        return _customIcon(Icons.home, itemName);
    }

  }

  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)) return Icon(icon, size: 22, color: dark,);

    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}