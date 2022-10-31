import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me_chat/controller/chat_controller.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key, required this.recieveruserID});
  final String recieveruserID;

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  TextEditingController? _messageController;

  void sendTextMessage() async {
    ref.read(chatControllerProvider).sendTextMessage(
        context, _messageController!.text.trim(), widget.recieveruserID);
  }

  @override
  void initState() {
    // TODO: implement initState
    _messageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _messageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          TextField(
            controller: _messageController,
          ),
          MaterialButton(
            onPressed: () {},
            child: const Center(
              child: Text("sent data"),
            ),
          )
        ],
      ),
    );
  }
}
