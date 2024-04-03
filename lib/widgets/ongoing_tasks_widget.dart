import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_manager/widgets/tasks.dart';

class OngoingTasksWidget extends StatefulWidget {
  const OngoingTasksWidget({super.key});

  @override
  State<OngoingTasksWidget> createState() => _OngoingTasksWidgetState();
}

Widget icon = const Icon(Icons.arrow_forward_ios_outlined);

class _OngoingTasksWidgetState extends State<OngoingTasksWidget> {
  final List<String> items = [
    'Graduation project discussion on zoom',
    'Shooting in Samannoud & editing photos',
  ];
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ongoing tasks',
              style: TextStyle(fontSize: 28, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            IconButton(
              onPressed: () {
                isClicked = true;
                setState(() {});
              },
              icon: isClicked
                  ? GestureDetector(
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                ),
                onTap: () {
                  isClicked = false;
                  setState(() {});
                },
              )
                  : const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
        const SizedBox(height: 4,),
        const SingleChildScrollView(
          child: Column(children: [
            Tasks(task: 'Graduation project discussion on zoom'),
            SizedBox(height: 4,),
            Tasks(task: 'Shooting in Samannoud & editing photos')
          ],),
        )
      ],
    );
  }
}
