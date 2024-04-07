import 'package:flutter/Material.dart';
import 'package:task_manager/constants.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        if (myTask != ''){
          items.add(myTask);
        }
        Navigator.of(context).pop();
        myTask = '';
      },
        child: const Icon(Icons.add),
      ),
      body: Expanded(
        child: TextField(
          style: const TextStyle(color: Colors.black),
          maxLines: 99999,
          scrollPadding: const EdgeInsets.all(20.0),
          autofocus: true,
          onChanged: (String task){
            myTask = task;
          },
        ),
      ),
    );
  }
}
