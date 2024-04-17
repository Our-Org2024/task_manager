import 'package:flutter/material.dart';

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
            cursorHeight: 30,
            cursorColor: Colors.blue,
            controller: _controller,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
              _controller.clear();
            },
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              border: InputBorder.none,
              // prefixIconConstraints: BoxConstraints.loose(Size(100, 50)),
              floatingLabelAlignment: FloatingLabelAlignment.center,
              hintText: 'Searching for something...',
              prefixIcon: Icon(
                Icons.search,
                size: 35,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
