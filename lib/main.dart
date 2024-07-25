import 'package:country_list/views/home_page.dart';
import 'package:country_list/views/splash_screen.dart';
import 'package:flutter/material.dart';

import 'views/country_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SplashScreen(),
        'home_page':(context) => HomePage(),
        'country_details':(context) => CountryDetails(),
      },
    );
  }
}
