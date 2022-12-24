import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MessageWebSocket extends StatefulWidget {
  const MessageWebSocket({Key? key}) : super(key: key);

  @override
  State<MessageWebSocket> createState() => _MessageWebSocketState();
}

class _MessageWebSocketState extends State<MessageWebSocket> {
  final TextEditingController _controller = TextEditingController();

  final _channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Message Web Socket"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Form(
                child: TextFormField(
                  controller: _controller,
                  decoration: const InputDecoration(
                      labelText: 'Send a message to server'),
                ),
              ),
              StreamBuilder(
                stream: _channel.stream,
                builder: (context, snapshot) {
                  return Text(snapshot.hasData
                      ? '${snapshot.data}'
                      : 'No data are sent from server!');
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _sendMessage,
          tooltip: 'Send message',
          child: const Icon(Icons.send),
        ));
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      _channel.sink.add(_controller.text);
    }
  }

  @override
  void dispose() {
    _channel.sink.close();
    _controller.dispose();
    super.dispose();
  }
}
