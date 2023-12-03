import 'package:flutter/material.dart';

class Comment {
  final String username;
  final String comment;
  bool isLiked;
  bool isDisliked;
  int likes;
  int replies;

  Comment({
    required this.username,
    required this.comment,
    this.isLiked = false,
    this.isDisliked = false,
    this.likes = 0,
    this.replies = 0,
  });
}

class TikTokCommentClone extends StatefulWidget {
  @override
  _TikTokCommentCloneState createState() => _TikTokCommentCloneState();
}

class _TikTokCommentCloneState extends State<TikTokCommentClone> {
  List<Comment> comments = [
    Comment(username: 'user1', comment: 'Great video!'),
    Comment(username: 'user2', comment: 'I love this!'),
    Comment(username: 'user3', comment: 'Awesome content!'),
  ];

  TextEditingController _commentController = TextEditingController();

  void _addComment() {
    setState(() {
      String commentText = _commentController.text.trim();
      if (commentText.isNotEmpty) {
        Comment newComment =
            Comment(username: 'Abukar Hassan Salah', comment: commentText);
        comments.add(newComment);
        _commentController.clear();
      }
    });
  }

  void _toggleLike(int index) {
    setState(() {
      Comment comment = comments[index];
      if (comment.isLiked) {
        comment.isLiked = false;
        comment.likes--;
      } else {
        comment.isLiked = true;
        comment.likes++;
        if (comment.isDisliked) {
          comment.isDisliked = false;
        }
      }
    });
  }

  void _toggleDislike(int index) {
    setState(() {
      Comment comment = comments[index];
      if (comment.isDisliked) {
        comment.isDisliked = false;
        comment.likes++;
      } else {
        comment.isDisliked = true;
        comment.likes--;
        if (comment.isLiked) {
          comment.isLiked = false;
        }
      }
    });
  }

  void _addReply(int index) {
    setState(() {
      Comment comment = comments[index];
      comment.replies++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tik Tok Comments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                Comment comment = comments[index];
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/Abukar.jpeg.jpg'),
                  ),
                  title: Text(comment.username),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(comment.comment),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.thumb_up,
                              color: comment.isLiked ? Colors.blue : null,
                            ),
                            onPressed: () => _toggleLike(index),
                          ),
                          Text(comment.likes.toString()),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: Icon(
                              Icons.thumb_down,
                              color: comment.isDisliked ? Colors.red : null,
                            ),
                            onPressed: () => _toggleDislike(index),
                          ),
                          Text(comment.replies.toString() + ' Replies'),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: const Icon(Icons.reply),
                            onPressed: () => _addReply(index),
                          ),
                        ],
                      ),
                    ],
                  ),
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
    title: 'TikTok Comment Clone',
    home: TikTokCommentClone(),
  ));
}
