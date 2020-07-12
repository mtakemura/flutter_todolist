import 'package:flutter/material.dart';
import 'task.dart';

class NewTaskDialog extends StatelessWidget {
  final controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New Task'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            final task = new Task(title: controller.value.text);
            controller.clear();
            Navigator.of(context).pop(task);
          },
        ),
      ],
    );
  }
}
