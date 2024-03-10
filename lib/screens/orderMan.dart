
import 'package:flutter/material.dart';

class OrderManagementScreen extends StatefulWidget {
  @override
  _OrderManagementScreenState createState() => _OrderManagementScreenState();
}

class _OrderManagementScreenState extends State<OrderManagementScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
        title: Text('Order Management Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Order Management Screen!'),
      ),
   );
  }
  
}
