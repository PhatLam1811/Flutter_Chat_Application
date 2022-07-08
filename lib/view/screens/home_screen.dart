import 'package:flutter/material.dart';
import 'package:flutter_chat_app/utilities/constant_values.dart';
import 'package:flutter_chat_app/view/widgets/call_page.dart';
import 'package:flutter_chat_app/view/widgets/chat_page.dart';
import 'package:flutter_chat_app/view/widgets/contacts_page.dart';
import 'package:flutter_chat_app/view/widgets/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<String> _titles = ['Chats', 'Calls', 'Contacts', 'Profile'];
  static const List<Widget> _pages = [ChatPage(), CallPage(), ContactsPage(), ProfilePage()];
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
        title: Text(_titles[_selectedIndex]),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20.0,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: theme1,
        unselectedItemColor: theme3,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
