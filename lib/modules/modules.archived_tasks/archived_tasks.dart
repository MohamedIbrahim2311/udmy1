import 'package:flutter/material.dart';

class archivedTasksScreen extends StatelessWidget {
  const archivedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'archived Tasks',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),


      ),
    );
  }
}
