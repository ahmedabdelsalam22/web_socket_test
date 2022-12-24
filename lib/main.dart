import 'package:flutter/material.dart';

import 'chat_app_socket_io/core/route.dart';

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
      routes: Routes.routes(),
      initialRoute: Routes.initScreen(),
    );
  }
}
