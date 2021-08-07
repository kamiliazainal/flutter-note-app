import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Awesome List App'),
      ),
    body: Column(
      children: List.generate(
        taskList.length,
          (index) {
          return CustomText(text: taskList[index]);
          }
      )
    ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;

  CustomText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 30),
    );
  }
}

List<String> taskList = [
  'Task 1',
  'Task 2',
  'Task 3',
];
