import 'package:flutter/material.dart';

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
            navigationDestination(
                Icons.home_outlined, 'Home', Icons.home_rounded),
            navigationDestination(
                Icons.person_outline, 'Profile', Icons.person),
            navigationDestination(Icons.calendar_today_outlined, 'Calender',
                Icons.calendar_today),
            navigationDestination(
                Icons.notifications_none, 'Notification', Icons.notifications),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        tooltip: 'Add',
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  NavigationDestination navigationDestination(
      IconData icon, String txt, IconData selectedIcon) {
    return NavigationDestination(
      selectedIcon: Icon(selectedIcon),
      icon: Icon(icon),
      label: txt,
    );
  }
}
