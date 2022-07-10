import 'package:flutter/material.dart';
import 'package:flutter_chat_app/utilities/constant_values.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: TabBar(
          labelColor: theme1,
          indicatorColor: theme1,
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.message_outlined)),
            Tab(icon: Icon(Icons.groups)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Chats Page')),
          Center(child: Text('Group Chats')),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 50.0,
        height: 50.0,
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 5.0,
          backgroundColor: theme2,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
