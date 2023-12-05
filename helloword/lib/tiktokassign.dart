import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TikTok'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Comments'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (BuildContext context) {
                return Container(
                  height: 4000,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    children: [
                      const Text(
                        '4 Comments',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: ListView(
                          children: [
                            CommentTile(
                              name: 'Abukar',
                              image: 'assets/Abukar',
                              time: '7h    Reply',
                              message: 'Asc sxp sre',
                            ),
                            CommentTile(
                              name: 'Isse Hassan',
                              image: 'assets/bakar.jpeg',
                              time: '7h    Reply',
                              message: 'Asc sethy',
                            ),
                            CommentTile(
                              name: 'Isse Hassan',
                              image: 'assets/hassan.jpeg',
                              time: '8h    Reply',
                              message: 'Asc warka keen',
                            ),
                            CommentTile(
                              image: 'assets/Abukar.jpeg',
                              name: 'Daud Hassan',
                              message: 'qosol waaye !',
                              time: '3h    Reply',
                            ),
                            // Add more CommentTile widgets here for additional comments
                          ],
                        ),
                      ),
                      const SizedBox(height: 36),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Add Your Comment....',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(80.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class CommentTile extends StatelessWidget {
  final String name;
  final String image;
  final String time;
  final String message;

  const CommentTile({super.key, 
    required this.name,
    required this.image,
    required this.time,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message),
          const SizedBox(height: 2),
          Text(time),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              // Handle love icon press
            },
            child: const Icon(
              Icons.favorite_outline,
              // color: Color.fromARGB(255, 245, 110, 101),
            ),
          ),
          const SizedBox(width: 19),
          GestureDetector(
            onTap: () {
              // Handle like icon press
            },
            child: const Icon(
              Icons.thumb_down_outlined,
              // color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}