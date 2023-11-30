import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'WhatsApp Clone',
    home: HomeScreen(),
  ));
}


class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 44, 44),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 53, 53),
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.green),
        ),
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
      backgroundColor: const Color.fromARGB(255, 51, 44, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 51, 44, 44),
        title: const Text(
          'Status',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            textColor: Color.fromARGB(255, 255, 255, 255),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Abukar Hassan'),
            subtitle: Text('Today, 5:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Isse Hassan'),
            subtitle: Text('Today, 5:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Daud Hassan'),
            subtitle: Text('Today, 5:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Hassan Salah'),
            subtitle: Text('Today, 5:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpeg.jpg'),
            ),
            title: Text('Abukar Hassan'),
            subtitle: Text('Today, 5:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            subtitleTextStyle:
                TextStyle(color: Color.fromARGB(255, 209, 118, 118)),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Daud Hassan'),
            subtitle: Text('Today, 5:30 AM'),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Hassan Salah'),
            subtitle: Text('Today, 5:30 AM'),
          ),

          // Add more chat conversations here
        ],
      ),
    );
  }
}

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 104, 104),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 93, 93),
        title: Text(
          'Calls',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Abukar Hassan'),
            subtitle: Text('Today, 5:30 AM'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Isse Hassan'),
            subtitle: Text('November, 6:30 PM'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Daud Hassan'),
            subtitle: Text('Yesterday,7:30 PM'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Hassan Salah'),
            subtitle: Text('Asc, wilkeyga soma wacnid?'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpeg.jpg'),
            ),
            title: Text('Abukar Hassan'),
            subtitle: Text('Fcn, Aabbe ,adna soma wacnid?'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
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
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Hassan Salah'),
            subtitle: Text('Asc, wilkeyga soma wacnid?'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),

          // Add more chat conversations here
        ],
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 51, 44, 44),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open Popup Menu'),
          onPressed: () {
            _showPopupMenu(context);
          },
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero),
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    final List<PopupMenuEntry<String>> menuItems = [
      const PopupMenuItem<String>(
        value: 'New Group',
        child: Text('New Group'),
      ),
      const PopupMenuItem<String>(
        value: 'New Broadcast',
        child: Text('New Broadcast'),
      ),
      const PopupMenuItem<String>(
        value: 'Linked Device',
        child: Text('Linked Device'),
      ),
      const PopupMenuItem<String>(
        value: 'Started Message',
        child: Text('Started Message'),
      ),
    ];

    showMenu<String>(
      context: context,
      position: RelativeRect.fill,
      items: menuItems,
    ).then((value) {
      if (value != null) {
        // Handle selected option
        print('Selected option: $value');
      }
    });
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 51, 44, 44),
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
