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
    Comment(username: 'Abukar Hassan', comment: 'waa muqaal fcn!'),
    Comment(username: 'Isse Hassan', comment: 'waan ka heley muqaalka!'),
    Comment(username: 'Daud Hassan', comment: 'ka fogow waa halisee'),
    Comment(username: 'Ali Hassan', comment: 'waa muqaal fcn!'),
    Comment(username: 'Mohamed Hassan', comment: 'waan ka heley muqaalka!'),
    Comment(username: 'Isack Hassan', comment: 'ka fogow waa halisee'),
  ];

  TextEditingController _commentController = TextEditingController();

  void _addComment() {
    setState(() {
      String commentText = _commentController.text.trim();
      if (commentText.isNotEmpty) {
        Comment newComment =
            Comment(username: 'Abukar Hassan Salah', comment: commentText);
        Comment(username: 'Isse Hassan Salah', comment: commentText);
        Comment(username: 'Daud Hassan Salah', comment: commentText);
        Comment(username: 'Ali Hassan Salah', comment: commentText);
        Comment(username: 'Mohamed Hassan Salah', comment: commentText);
        Comment(username: 'Isack Hassan Salah', comment: commentText);
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

  void _showEmojiBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: GridView.count(
            crossAxisCount: 8,
            children: List.generate(
              32,
              (index) {
                return IconButton(
                  icon: Text(String.fromCharCode(0x1F600 + index),
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    // Handle emoji selection
                    // Add your code here
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          '666 Comments',
          style: TextStyle(color: Colors.black),
        )),
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
                  icon: const Icon(Icons.emoji_emotions),
                  onPressed: _showEmojiBottomSheet,
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
