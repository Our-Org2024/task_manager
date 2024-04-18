import 'package:flutter/material.dart';
import 'package:task_manager/screens/add_task.dart';

import '../constants.dart';
import '../widgets/config_container.dart';
import 'calendar_screen.dart';
import 'notification_screen.dart';
import 'profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  final List<Widget> _screens = const [
    ConfigContainer(),
    ProfileScreen(),
    CalendarScreen(),
    NotificationScreen(),
    NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notes),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: _screens[_index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          height: 85,
          indicatorColor: Colors.blueGrey.shade200,
          labelTextStyle: const MaterialStatePropertyAll(
              TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
        ),
        child: NavigationBar(
          elevation: 4,
          selectedIndex: _index,
          onDestinationSelected: (value) {
            setState(() {
              _index = value;
            });
          },
          destinations: [
            _buildNavigationDestination(
                Icons.task_outlined, 'Tasks', Icons.task_rounded),
            _buildNavigationDestination(
                Icons.person_outline, 'Profile', Icons.person),
            _buildNavigationDestination(Icons.calendar_today_outlined,
                'Calender', Icons.calendar_today),
            _buildNavigationDestination(
                Icons.notifications_none, 'Notification', Icons.notifications),
            // DropdownButton(
            //   items: [DropdownMenuItem(child: Text('df'))],
            //   onChanged: (value) {},
            // ),
            // _buildNavigationDestination(
            //     Icons.settings_applications_outlined, 'Settings', Icons.settings_applications_rounded
// )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        tooltip: 'Add',
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Scaffold(
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    if (myTask != '') {
                      items.add(myTask.trim());
                      isClicked = false;
                    }
                    Navigator.of(context).pop();
                    myTask = '';
                    setState(() {});
                  },
                  child: const Icon(Icons.add),
                ),
                body: TextField(
                  style: const TextStyle(color: Colors.black),
                  maxLines: 99999,
                  scrollPadding: const EdgeInsets.all(20.0),
                  autofocus: true,
                  onChanged: (String task) {
                    myTask = task;
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  NavigationDestination _buildNavigationDestination(
      IconData icon, String txt, IconData selectedIcon) {
    return NavigationDestination(
      selectedIcon: Icon(selectedIcon),
      icon: Icon(icon),
      label: txt,
    );
  }
}
