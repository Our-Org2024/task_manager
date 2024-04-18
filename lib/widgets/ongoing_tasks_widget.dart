import 'package:flutter/material.dart';
import 'package:task_manager/widgets/tasks.dart';

import '../constants.dart';

class OngoingTasksWidget extends StatefulWidget {
  const OngoingTasksWidget({super.key});

  @override
  State<OngoingTasksWidget> createState() => _OngoingTasksWidgetState();
}

Widget icon = const Icon(Icons.arrow_forward_ios_outlined);

class _OngoingTasksWidgetState extends State<OngoingTasksWidget> {

  bool _isClicked = false;

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
                _isClicked = true;
                setState(() {});
              },
              icon: _isClicked
                  ? GestureDetector(
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                ),
                onTap: () {
                  _isClicked = false;
                  setState(() {});
                },
              )
                  : const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        if (_isClicked)
          SingleChildScrollView(
            child: Column(
              children: [
                if(isSearchButtonClicked)
                  for(int i = 0; i < searchItems.length; i++)
                    Column(
                      children: [
                        Tasks(task: searchItems[i]),
                        const SizedBox(height: 4,)
                      ],
                    )
                else
                  for(int i = 0; i < items.length; i++)
                    Column(
                      children: [
                        Tasks(task: items[i]),
                        const SizedBox(height: 4,)
                      ],
                    )
              ],
            ),
          )
      ],
    );
  }
}
