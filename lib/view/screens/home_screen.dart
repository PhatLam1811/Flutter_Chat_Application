import 'package:flutter/material.dart';
import 'package:flutter_chat_app/utilities/constant_values.dart';
import 'package:flutter_chat_app/view/widgets/calls_page.dart';
import 'package:flutter_chat_app/view/widgets/chats_page.dart';
import 'package:flutter_chat_app/view/widgets/friends_page.dart';
import 'package:flutter_chat_app/view/widgets/notifications_page.dart';
import 'package:flutter_chat_app/view/widgets/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<String> _titles = [
    'Chats',
    'Calls',
    'Friends',
    'Notifications',
    'Settings'];
  static const List<Widget> _pages = [
    ChatsPage(),
    CallsPage(),
    FriendsPage(),
    NotificationsPage(),
    ProfilePage()
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background1,
      appBar: AppBar(
        backgroundColor: theme1,
        title: Row(
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                shape: const CircleBorder(),
              ),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/eb/b4/24/ebb4240e278b99f7ec49a5a51980e187.jpg'),
              ),
            ),
            const SizedBox(width: 5.0),
            Text(_titles[_selectedIndex]),
          ],
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 30.0),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20.0,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: theme1,
        unselectedItemColor: theme3,
        selectedFontSize: 13.5,
        unselectedFontSize: 13.5,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.pending),
            label: _titles[0],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.call),
            label: _titles[1],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.people_alt),
            label: _titles[2],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.notification_important),
            label: _titles[3],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: _titles[4],
          ),
        ],
      ),
    );
  }
}
