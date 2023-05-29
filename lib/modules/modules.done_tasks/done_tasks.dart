import 'package:flutter/material.dart';

class doneTasksScreen extends StatelessWidget {
  const doneTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Dones Tasks',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),


      ),
    );
  }
}
