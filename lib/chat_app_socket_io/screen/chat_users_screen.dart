import 'package:flutter/material.dart';

class ChatUsersScreen extends StatefulWidget {
  const ChatUsersScreen({Key? key}) : super(key: key);

  static const String ROUTE_ID = 'chat_users_list_screen';

  @override
  State<ChatUsersScreen> createState() => _ChatUsersScreenState();
}

class _ChatUsersScreenState extends State<ChatUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Users'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                ///
              }),
        ],
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            //  Text(_connectedToSocket ? 'Connected' : _errorConnectMessage),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,

                ///
                itemBuilder: (_, index) {
                  // User user = _chatUsers[index];
                  return GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      title: Text('user.name'),
                      // subtitle: Text('ID: ${user.id}, ${user.email}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
