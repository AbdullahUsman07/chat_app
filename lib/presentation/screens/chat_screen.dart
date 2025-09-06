import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.chatName, required this.avatarUrl});

  final String chatName;
  final String avatarUrl;
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  // Mock messages
  final List<Map<String, dynamic>> messages = [
    {
      "text": "I'm waiting to get my keys. Could you help check if they are still here?",
      "time": "5:34 PM",
      "isMe": true,
      "isRead": true,
    },
    {
      "text": "Yes I will check in 5 min",
      "time": "5:35 PM",
      "isMe": false,
    },
    {
      "text": "Thank you",
      "time": "5:35 PM",
      "isMe": true,
      "isRead": true,
    },
    {
      "text": "You got a new package, it's downstairs",
      "time": "5:36 PM",
      "isMe": false,
    },
    {
      "text": "Thanks I will get it after lunch today",
      "time": "5:37 PM",
      "isMe": true,
      "isRead": false,
    },
  ];

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      messages.add({
        "text": _controller.text.trim(),
        "time": "Now",
        "isMe": true,
        "isRead": false,
      });
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18181b), // zinc-900
      appBar: AppBar(
        backgroundColor: const Color(0xFF18181b),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                widget.avatarUrl,
              ),
              radius: 18,
            ),
            const SizedBox(width: 8),
            Text(widget.chatName, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: const [
          Icon(Icons.videocam, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.call, color: Colors.white),
          SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          // Messages
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                final isMe = msg["isMe"] as bool;
                return Align(
                  alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        padding: const EdgeInsets.all(12),
                        constraints: const BoxConstraints(maxWidth: 300),
                        decoration: BoxDecoration(
                          color: isMe ? const Color(0xFF38e07b) : const Color(0xFF29382f),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(16),
                            topRight: const Radius.circular(16),
                            bottomLeft: isMe ? const Radius.circular(16) : const Radius.circular(0),
                            bottomRight: isMe ? const Radius.circular(0) : const Radius.circular(16),
                          ),
                        ),
                        child: Text(
                          msg["text"],
                          style: TextStyle(
                            color: isMe ? Colors.black : Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            msg["time"],
                            style: const TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                          if (isMe)
                            Icon(
                              msg["isRead"] ? Icons.done_all : Icons.done,
                              size: 14,
                              color: msg["isRead"] ? Colors.blue : Colors.grey,
                            ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Input
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xFF27272a))),
              color: Color(0xFF18181b),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF29382f),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.emoji_emotions, color: Color(0xFF9eb7a8)),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: "Message",
                              hintStyle: TextStyle(color: Color(0xFF9eb7a8)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.attach_file, color: Color(0xFF9eb7a8)),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.photo_camera, color: Color(0xFF9eb7a8)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: _sendMessage,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Color(0xFF38e07b),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.send, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
