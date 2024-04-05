import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 8.0, right: 8.0),
          child: Container(
            height: 170,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text(
                        'Hello User,\nGood Morning',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      subtitle: Text('10 Tasks Pending',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://toppng.com/uploads/preview/stock-person-png-stock-photo-man-11563049686zqeb9zmqjd.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
