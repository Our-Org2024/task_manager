import 'package:flutter/material.dart';
import 'package:task_manager/widgets/ongoing_tasks_widget.dart';

import 'hello_widget.dart';
import 'text_field_widget.dart';

class ConfigContainer extends StatelessWidget {
  const ConfigContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .365,
                child: const Stack(
                  children: [
                    HelloWidget(),
                    TextFieldWidget(),
                ],
              ),
            ),
            const OngoingTasksWidget(),
          ],
                ),
        ),
        
        // const NavBar()
      ]
    );
  }
}
