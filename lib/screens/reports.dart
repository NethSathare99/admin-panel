import 'package:flutter/material.dart';

class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
        title: Text('Reports Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Reports Screen!'),
      ),
   );
  }
  
}
