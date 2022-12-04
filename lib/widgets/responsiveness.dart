import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 480;
const int customScreenSize = 1100;



class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  //final Widget customScreen;

  const ResponsiveWidget(
    {Key? key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen
    }) 
    : super(key:key);
   // required this.customScreen
  static bool isSmallScreen(BuildContext context) => MediaQuery.of(context).size.width < mediumScreenSize;
  static bool isMediumScreen(BuildContext context) => MediaQuery.of(context).size.width >= mediumScreenSize && MediaQuery.of(context).size.width < largeScreenSize;
  static bool isLargeScreen(BuildContext context) => MediaQuery.of(context).size.width >= largeScreenSize;
  static bool isCustomScreen(BuildContext context) => MediaQuery.of(context).size.width >= mediumScreenSize && MediaQuery.of(context).size.width <= customScreenSize;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        double widthMedia = constraints.maxWidth;
        if(widthMedia >= largeScreenSize) {
          return largeScreen;
        } 
        else if(widthMedia < largeScreenSize && widthMedia >= mediumScreenSize) {
          return mediumScreen;
        }
        else {
          return smallScreen;
        }
      }),
    );
  }
}