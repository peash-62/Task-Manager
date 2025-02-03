import 'package:flutter/material.dart';
import 'package:taskkmanager/ui/screens/cancelled_task_screen.dart';
import 'package:taskkmanager/ui/screens/completed_task_screen.dart';
import 'package:taskkmanager/ui/screens/inprogress_task_screen.dart';
import 'package:taskkmanager/ui/screens/new_task_screen.dart';
import 'package:taskkmanager/ui/widgets/background_screen.dart';

import '../widgets/user_profile_widget.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _selectedScreen = 0;
  final List<Widget> _screens = const [
    NewTaskScreen(),
    CompletedTaskScreen(),
    CancelledTaskScreen(),
    InprogressTaskScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserProfileWidget(),
            
            Expanded(child: _screens[_selectedScreen]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        onTap: (index){
          _selectedScreen = index;
          setState(() {

          });
        },
        elevation: 5,
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.new_label_outlined), label: 'New'),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_outline), label: 'Completed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.close_outlined), label: 'Cancelled'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ad_units), label: 'Progress'),
        ],
      ),
    );
  }
}


