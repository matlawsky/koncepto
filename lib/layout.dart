import 'package:flutter/material.dart';
import 'package:koncepto/widgets/large_screen.dart';
import 'package:koncepto/widgets/responsiveness.dart';
import 'package:koncepto/widgets/side_menu.dart';
import 'package:koncepto/widgets/small_screen.dart';
import 'package:koncepto/widgets/top_navbar.dart';

class SiteLayout extends StatelessWidget {
  //final Authenticator _authenticator = Get.put(Authenticator());
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
      ),
    );
  }
}
