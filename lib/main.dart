import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:mustard_ng/utils/approutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
       
        theme: ThemeData(
          fontFamily: 'Lato',
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(color: AppColor.black,fontWeight: FontWeight.w700, fontSize: 20 ),
            elevation: 0.3,
            backgroundColor: Colors.white,
            foregroundColor: AppColor.maincolor),
        ),
        debugShowCheckedModeBanner: false,
        routes: AppRoutes().routes,);
  }
}
