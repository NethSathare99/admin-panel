
import 'package:admin_panel/screens/feedback.dart';
import 'package:admin_panel/screens/login_page.dart';
import 'package:admin_panel/screens/orderMan.dart';
import 'package:admin_panel/screens/productMan.dart';
import 'package:admin_panel/screens/profile.dart';
import 'package:admin_panel/screens/reports.dart';

import 'package:flutter/material.dart';


void main()  {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/product_management': (context) => ProductManagementScreen(),
        '/order_management': (context) => OrderManagementScreen(),
        '/feedback': (context) => FeedbackScreen(),
        '/reports': (context) => ReportsScreen(),
        '/profile': (context) => ProfileScreen(),
       
      },
    );
  }
}