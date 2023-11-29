import 'package:flutter/material.dart';

class ChatMessage {
  String sender;
  String message;

  ChatMessage({required this.sender, required this.message});
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _messages.add(ChatMessage(sender: "You", message: text));
    });
  }

  Widget _buildTextComposer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration.collapsed(
                hintText: "Send a message",
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => _handleSubmitted(_textController.text),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp Clone"),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (_, int index) => _buildMessage(_messages[index]),
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(ChatMessage message) {
    return ListTile(
      title: Text(message.sender),
      subtitle: Text(message.message),
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          title: Text('WhatsApp Clone'),
          bottom: TabBar(
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