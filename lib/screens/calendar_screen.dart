import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarDatePicker(
          firstDate: DateTime(1950-1-1),
          onDateChanged: (DateTime value) {},
          lastDate:DateTime.now() ,
          initialDate: null,
        ),
        Center(
          child: Text(
            'Calendar',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
