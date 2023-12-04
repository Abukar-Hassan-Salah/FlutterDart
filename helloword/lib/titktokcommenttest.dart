import 'package:flutter/material.dart';

class Comment {
  final String username;
  final String comment;

  Comment({required this.username, required this.comment});
}

class TikTokCommentSection extends StatefulWidget {
  @override
  _TikTokCommentSectionState createState() => _TikTokCommentSectionState();
}

class _TikTokCommentSectionState extends State<TikTokCommentSection> {
  List<Comment> comments = [
    Comment(username: 'Abukar Hassan Salah', comment: 'Waa war fcn!'),
    Comment(username: 'Iise Hassan Salah', comment: 'I love this!'),
    Comment(username: 'Daud Hassan Salah', comment: 'Awesome content!'),
    Comment(username: 'Hawa Hassan Salah', comment: 'Waa war fcn!'),
    Comment(username: 'Salah Hassan Salah', comment: 'I love this!'),
    Comment(username: 'Jimal Hassan Salah', comment: 'Awesome content!'),
    Comment(username: 'Abukar Hassan Salah', comment: 'Waa war fcn!'),
    Comment(
        username: 'Iise Hassan Salah', comment: 'I love this it is amazing!'),
    Comment(username: 'Daud Hassan Salah', comment: 'Awesome content!'),
  ];

  TextEditingController _commentController = TextEditingController();

  void _addComment() {
    setState(() {
      String commentText = _commentController.text.trim();
      if (commentText.isNotEmpty) {
        Comment newComment =
            Comment(username: 'Abukar hassan', comment: commentText);
        comments.add(newComment);
        _commentController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(comments[index].username[0]),
                  ),
                  title: Text(comments[index].username),
                  subtitle: Text(comments[index].comment),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: const InputDecoration(
                      hintText: 'Add a comment...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _addComment,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Comments',
    home: TikTokCommentSection(),
  ));
}
