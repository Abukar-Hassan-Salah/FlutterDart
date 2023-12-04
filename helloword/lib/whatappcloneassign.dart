import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'whatshome.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'WhatsApp',
    home: HomeScreen(),
  ));
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 44, 44),
      body: ListView(
        children: const [
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Abukar Hassan Hassan'),
            subtitle: Text(
              'Hello, sidee tahay?',
              style: TextStyle(fontSize: 12),
            ),
            trailing: Text(
              '1:30 AM',
              style: TextStyle(color: Colors.green, fontSize: 10),
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Isse Hassan Salah', style: TextStyle(fontSize: 12)),
            subtitle: Text('Haa, fcn alx?'),
            trailing: Text(
              '1:50 AM',
              style: TextStyle(color: Colors.green, fontSize: 10),
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Salah Hassan Salah', style: TextStyle(fontSize: 12)),
            subtitle: Text('Hye, Intee joogtaa?'),
            trailing: Text(
              '11:30 PM',
              style: TextStyle(color: Colors.green, fontSize: 10),
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Mohamud Hassan Salah', style: TextStyle(fontSize: 12)),
            subtitle: Text('Asc, wilkeyga soma wacnid?'),
            trailing: Text(
              '5:30 AM',
              style: TextStyle(color: Colors.green, fontSize: 10),
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpeg.jpg'),
            ),
            title: Text('Abukar Hassan Salah', style: TextStyle(fontSize: 12)),
            subtitle: Text('Fcn, Aabbe ,adna soma wacnid?'),
            trailing: Text(
              '10:30 AM',
              style: TextStyle(color: Colors.green, fontSize: 10),
            ),
          ),
          ListTile(
            textColor: Colors.white,
            subtitleTextStyle:
                TextStyle(color: Color.fromARGB(255, 209, 118, 118)),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/Abukar.jpg'),
            ),
            title: Text('Daud Hassan Salah', style: TextStyle(fontSize: 12)),
            subtitle: Text('Hye, Intee joogtaa?'),
            trailing: Text(
              '11:30 PM',
              style: TextStyle(color: Colors.green, fontSize: 10),
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Hassan Salah  Ali', style: TextStyle(fontSize: 12)),
            subtitle: Text('Asc, wilkeyga soma wacnid?'),
            trailing: Text(
              '5:30 AM',
              style: TextStyle(
                color: Colors.green,
                fontSize: 10,
              ),
            ),
          ),

          // Add more chat conversations here
        ],
      ),
    );
  }
}

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 44, 44),
      body: ListView(
        children: const [
          ListTile(
            textColor: Color.fromARGB(255, 255, 255, 255),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
          ),
          ListTile(
            title: Text(
              "Recent updates",
              style: TextStyle(color: Colors.grey),
            ),
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
            title: Text('Abukar Hassan Salah'),
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
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 44, 44),
      body: ListView(
        children: const [
          ListTile(
            textColor: Color.fromARGB(255, 255, 255, 255),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/bakar.jpg'),
            ),
            title: Text('Create call link'),
            subtitle: Text(
              'Share link for your whatsapp call',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text(
              "Recent ",
              style: TextStyle(color: Colors.white),
            ),
          ),
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
