import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  final Function addTaskCallback;

  AddTask(this.addTaskCallback);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String newTaskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Add Task",
              style: TextStyle(fontSize: 25.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                newTaskTitle = newValue;
              },
            ),
            Container(
              color: Colors.lightBlueAccent,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  widget.addTaskCallback(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
