import 'package:flutter/material.dart';
import 'package:task_logger/widgets/task_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What is this title for?',
      home: TaskListScreen(),
    );
  }
}
