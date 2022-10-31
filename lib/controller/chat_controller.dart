import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me_chat/model/chat_repo./chat_repo.dart';
import 'package:me_chat/model/user_model.dart';

final chatControllerProvider = Provider((ref) {
  final chatRepository = ref.watch(chatRepoProvider);
  return ChatController(chatRepository: chatRepository, ref: ref);
});

class ChatController {
  final ChatRepository chatRepository;
  final ProviderRef ref;

  ChatController({
    required this.chatRepository,
    required this.ref,
  });

  void sendTextMessage(
      BuildContext context, String text, String recieverUserId) {
    chatRepository.sendTextMessage(
      context: context,
      text: text,
      recieverUserId: recieverUserId,
      senderUser: UserModel(
        name: "Mahamudul Hasan",
        uid: "123456789101112",
        profilePic:
            "https://media.istockphoto.com/vectors/user-icon-flat-isolated-on-white-background-user-symbol-vector-vector-id1300845620?k=20&m=1300845620&s=612x612&w=0&h=f4XTZDAv7NPuZbG0habSpU0sNgECM0X7nbKzTUta3n8=",
        isOnline: true,
      ),
    );
  }
}
