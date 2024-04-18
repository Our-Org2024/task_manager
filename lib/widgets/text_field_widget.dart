import 'package:flutter/material.dart';
import 'package:task_manager/constants.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: 145,
      left: 70,
      child: Container(
        width: 280,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            onChanged: (String value){
              searchTask = value;
            },
            cursorHeight: 30,
            cursorColor: Colors.blue,
            controller: _controller,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
              _controller.clear();
            },
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              // prefixIconConstraints: BoxConstraints.loose(Size(100, 50)),
              floatingLabelAlignment: FloatingLabelAlignment.center,
              hintText: 'Searching for something...',
              prefixIcon: IconButton(
                icon: const Icon(Icons.search), onPressed: (){
                  searchItems.clear();
                  isSearchButtonClicked = true;
                  for(int i = 0; i < items.length; i++){
                    if(items[i].contains(searchTask)){
                      searchItems.add(items[i]);
                    }
                  }
                  searchTask = '';
              },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
