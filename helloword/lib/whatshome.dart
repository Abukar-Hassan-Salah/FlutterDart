import 'package:flutter/material.dart';
import 'package:helloword/whatappcloneassign.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.camera_alt),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.more_vert),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 51, 44, 44),
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.green,
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
              // Tab(icon: Icon(Icons.public)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
            // // SettingsScreen(),
          ],
        ),
      ),
    );
  }
}
