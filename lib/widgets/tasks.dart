import 'dart:math';

import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key, required this.task});

  final String task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
        // height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.more_horiz)],
            ),
            Text(
              '  $task',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
              // Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.network(
                    'https://toppng.com/uploads/preview/stock-person-png-stock-photo-man-11563049686zqeb9zmqjd.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          size: 10,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '9:00',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.task,
                          size: 10,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('4 tasks', style: TextStyle(color: Colors.black))
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
