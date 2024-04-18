import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager/widgets/tasks.dart';

import '../constants.dart';

class OngoingTasksWidget extends StatefulWidget {
  const OngoingTasksWidget({super.key});

  @override
  State<OngoingTasksWidget> createState() => _OngoingTasksWidgetState();
}

Widget icon = const Icon(Icons.arrow_forward_ios_outlined);

class _OngoingTasksWidgetState extends State<OngoingTasksWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListTile(
                trailing: isClicked
                    ? const Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                      )
                    //    GestureDetector(
                    //   child: const Icon(
                    //     Icons.keyboard_arrow_down,
                    //     size: 30,
                    //   ),
                    //   onTap: () {
                    //     isClicked = false;
                    //     setState(() {});
                    //   },
                    // )
                    : const Icon(Icons.arrow_forward_ios_outlined),
                title: const Text(
                  'Ongoing tasks',
                  style: TextStyle(fontSize: 28, color: Colors.black),
                  textAlign: TextAlign.start,
                ),
                onTap: () {
                  isClicked = !isClicked;
                  setState(() {});
                },
              ),
            ),
            // const Text(
            //   'Ongoing tasks',
            //   style: TextStyle(fontSize: 28, color: Colors.black),
            //   textAlign: TextAlign.start,
            // ),
            // IconButton(
            //   onPressed: () {
            //     isClicked = true;
            //     setState(() {});
            //   },
            //   icon: isClicked
            //       ? GestureDetector(
            //           child: const Icon(
            //             Icons.keyboard_arrow_down,
            //             size: 30,
            //           ),
            //           onTap: () {
            //             isClicked = false;
            //             setState(() {});
            //           },
            //         )
            //       : const Icon(Icons.arrow_forward_ios_outlined),
            // ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        if (isClicked)
          SingleChildScrollView(
            child: Column(
              children: [
                if (isSearchButtonClicked)
                  for (int i = 0; i < searchItems.length; i++)
                    Column(
                      children: [
                        Tasks(task: searchItems[i]),
                        const SizedBox(
                          height: 4,
                        )
                      ],
                    )
                else
                  for (int i = 0; i < items.length; i++)
                    Column(
                      children: [
                        Tasks(task: items[i]),
                        const SizedBox(
                          height: 4,
                        )
                      ],
                    )
              ],
            ),
          )
      ],
    );
  }
}
