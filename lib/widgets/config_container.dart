import 'package:flutter/material.dart';
import 'package:task_manager/widgets/ongoing_tasks_widget.dart';

import 'hello_widget.dart';
import 'text_field_widget.dart';

class ConfigContainer extends StatelessWidget {
  const ConfigContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*.4,
          child: const Expanded(
            child: Stack(children: [
              HelloWidget(),
              TextFieldWidget(),
            ]),
          ),
        ),
        const SizedBox(height: 5,),
        const OngoingTasksWidget()
      ]);
  }
}
