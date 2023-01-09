import 'package:avtoelon/ui/details_page.dart';
import 'package:avtoelon/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'ui/home_page.dart';

void main() {
  runApp(const AvtoelonApp());
}

class AvtoelonApp extends StatelessWidget {
  const AvtoelonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Constants.HOME_PAGE,
      routes: {
        Constants.HOME_PAGE: (context) => HomePage(),
        Constants.DETAILS_PAGE: (context) => DetailsPage(),
      },
    );
  }
}
