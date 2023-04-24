import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:koncepto/controllers/menu_controller.dart';
import 'package:koncepto/controllers/navigation_controller.dart';
import 'package:koncepto/layout.dart';
import 'package:koncepto/models/data.dart';
import 'package:koncepto/models/project.dart';
import 'package:koncepto/models/user.dart';
import 'package:koncepto/models/device.dart';
import 'package:koncepto/pages/404/error.dart';
import 'package:koncepto/pages/authentication/authentication.dart';
import 'package:koncepto/routing/routes.dart';
import 'package:koncepto/widgets/no_animations_transition_theme.dart';
import 'package:auto_route/auto_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // Hive.registerAdapter(UserAdapter());
  // Hive.registerAdapter(DeviceAdapter());
  // Hive.registerAdapter(ProjectAdapter());
  // Hive.registerAdapter(DataAdapter());
  // await Hive.openBox<User>('users');
  // await Hive.openBox<Project>('projects');
  // await Hive.openBox<Device>('devices');
  // await Hive.openBox<Data>('data');
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const KonceptoApp());
}

// MyApp = KonceptoApp
class KonceptoApp extends StatelessWidget {
  const KonceptoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      unknownRoute: GetPage(
          name: "/not-found",
          page: () => const PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(
            name: authenticationPageRoute,
            page: () => AuthenticationPage(),
            maintainState: false),
      ],
      debugShowCheckedModeBanner: false,
      title: 'koncepto',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black54),
          //bodyText1: TextStyle(color: Colors.black54),
          // pageTransitionsTheme: PageTransitionsTheme(
          //   builders: kIsWeb ? {
          //     for (final platform in TargetPlatform.values)
          //       platform:const NoTransitionsBuilder(),
          //   } : const {
          //     TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          //     TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          //   }),

          //   }
          // ),
          primaryColor: Colors.white),

      // home: AuthenticationPage(),
    );
  }
}
