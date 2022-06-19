import 'package:flutter/material.dart';
import 'package:imo_clone/data/data.dart';
import 'package:imo_clone/model/message_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Message> messages = messagesList;
    const _chatBackgroundColor = Color.fromARGB(255, 161, 220, 250);
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final _message = messages[index];
        return Align(
          alignment:
              _message.isMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: _message.isMe ? _chatBackgroundColor : Colors.white,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 20,
                  ),
                  child: Text(
                    _message.text,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        _message.time,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black38,
                          //letterSpacing: -1,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      _message.isMe
                          ? const Icon(
                              MdiIcons.circleOutline,
                              size: 10,
                              color: Colors.blue,
                            
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
