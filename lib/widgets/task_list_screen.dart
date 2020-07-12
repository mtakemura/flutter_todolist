import 'package:flutter/material.dart';
import 'package:task_logger/widgets/task_list.dart';
import 'package:task_logger/widgets/task.dart';
import 'package:task_logger/widgets/new_task_dialog.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];

  _toggleTask(Task task, bool isChecked) {
    setState(() {
      task.isDone = isChecked;
    });
  }

  _addTask() async {
    final task = await showDialog<Task>(
      context: context,
      builder: (BuildContext context) {
        return NewTaskDialog();
      },
    );

    if (task != null) {
      setState(() {
        tasks.add(task);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What are you going to do now?'),
      ),
      body: TaskList(
        tasks: tasks,
        onTaskToggle: _toggleTask,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTask,
      ),
    );
  }
}
