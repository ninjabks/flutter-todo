import 'package:flutter/material.dart';
import 'package:flutter_app_new/models/task_data.dart';
import 'package:flutter_app_new/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
