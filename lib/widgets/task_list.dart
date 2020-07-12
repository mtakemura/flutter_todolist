import 'package:flutter/material.dart';
import 'package:task_logger/widgets/task.dart';

typedef ToggleTaskCallback = void Function(Task, bool);

class TaskList extends StatelessWidget {
  TaskList({@required this.tasks, this.onTaskToggle});

  final List<Task> tasks;
  final ToggleTaskCallback onTaskToggle;

  Widget _buildItem(BuildContext context, int index) {
    final task = tasks[index];

    return CheckboxListTile(
      value: task.isDone,
      title: Text(task.title),
      onChanged: (bool isChecked) {
        onTaskToggle(task, isChecked);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: tasks.length,
    );
  }
}
