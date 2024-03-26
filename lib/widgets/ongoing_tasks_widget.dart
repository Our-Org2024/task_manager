import 'package:flutter/material.dart';

class OngoingTasksWidget extends StatefulWidget {
  const OngoingTasksWidget({super.key});

  @override
  State<OngoingTasksWidget> createState() => _OngoingTasksWidgetState();
}

Widget icon = const Icon(Icons.arrow_forward_ios_outlined);

class _OngoingTasksWidgetState extends State<OngoingTasksWidget> {
  final List<String> items = [
    'Item1',
    'Item2',
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
      ],
    );
  }
}
