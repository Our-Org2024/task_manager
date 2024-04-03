import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 10, left: 20, right: 20,
        child: Container(
          alignment: Alignment.center,
          width: 300, height: 45,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.home),
                    Text('Home', style: TextStyle(color: Colors.black),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.person),
                    Text('Profile', style: TextStyle(color: Colors.black),)
                  ],
                ),
                Icon(Icons.add_circle_rounded, size: 35,),
                Column(
                  children: [
                    Icon(Icons.calendar_today),
                    Text('Calender', style: TextStyle(color: Colors.black),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.notifications),
                    Text('Notifications', style: TextStyle(color: Colors.black),)
                  ],
                ),
              ],),
          ),
        ));
  }
}
