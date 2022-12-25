import 'package:chat_web_socket_test/test_web_socket/message_web_socket.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat With SocketIo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MessageWebSocket(),
    );
  }
}
