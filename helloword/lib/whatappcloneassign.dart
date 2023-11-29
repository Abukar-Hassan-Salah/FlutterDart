import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 53, 53),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 44, 44),
        title: const Text('Chats'),
      ),
      body: ListView(
        children: const [
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Abukar Hassan'),
            subtitle: Text('Hello, sidee tahay?'),
            trailing: Text('1:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Isse Hassan'),
            subtitle: Text('Haa, fcn alx?'),
            trailing: Text('1:50 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Daud Hassan'),
            subtitle: Text('Hye, Intee joogtaa?'),
            trailing: Text('11:30 PM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Hassan Salah'),
            subtitle: Text('Asc, wilkeyga soma wacnid?'),
            trailing: Text('5:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpeg.jpg'),
            ),
            title: Text('Abukar Hassan'),
            subtitle: Text('Fcn, Aabbe ,adna soma wacnid?'),
            trailing: Text('10:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            subtitleTextStyle:
                TextStyle(color: Color.fromARGB(255, 209, 118, 118)),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Daud Hassan'),
            subtitle: Text('Hye, Intee joogtaa?'),
            trailing: Text('11:30 PM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Hassan Salah'),
            subtitle: Text('Asc, wilkeyga soma wacnid?'),
            trailing: Text('5:30 AM'),
          ),

          // Add more chat conversations here
        ],
      ),
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 44, 44),
        title: Text('Status'),
      ),
      body: Center(
        child: Text('Status Screen'),
      ),
    );
  }
}

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 44, 44),
        title: Text('Calls'),
      ),
      body: Center(
        child: Text('Calls Screen'),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 44, 44),
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 51, 44, 44),
          title: Text('WhatsApp Clone'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(icon: Icon(Icons.call)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'WhatsApp Clone',
    home: HomeScreen(),
  ));
}
