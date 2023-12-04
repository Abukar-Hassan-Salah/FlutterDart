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
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.camera_alt),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: PopupMenuButton<String>(
                color: const Color.fromARGB(255, 51, 44, 44),
                onSelected: (value) {
                  // Handle menu item selection
                  switch (value) {
                    case 'New Group':
                      // Handle item1 selection
                      break;
                    case 'New Broadcast':
                      break;
                    case 'Linked device':
                      // Handle item1 selection
                      break;
                    case 'Started Message':
                      // Handle item2 selection
                      break;
                    case 'Setting':
                      break;
                    // Add more cases for additional menu items
                  }
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem<String>(
                    value: 'New Group',
                    child: Text(
                      'New Group',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'New Broadcast',
                    child: Text(
                      'New Broadcast',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Linked device',
                    child: Text(
                      'Linked device',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Started Message',
                    child: Text(
                      'Started Message',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Setting',
                    child: Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // Add more PopupMenuItem widgets for additional menu items
                ],
                child: const Icon(Icons.more_vert),
              ),
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
          ],
        ),
      ),
    );
  }
}
