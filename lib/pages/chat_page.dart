import 'package:flutter/material.dart';
import 'package:imo_clone/messages/chat_messages.dart';
import 'package:imo_clone/model/user_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ChatPage extends StatelessWidget {
  final User user;
  const ChatPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(fontSize: 17, color: Colors.black87),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.blue,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                MdiIcons.video,
                color: Colors.blue,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                MdiIcons.dotsHorizontal,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.897,
          child: Column(
            children: [
              Expanded(
                  flex: 7,
                  child: Container(
                      color: Colors.grey[200], child: const ChatMessages())),
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: 'Your message',
                                    labelStyle:
                                        const TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(35))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: const [
                                  Expanded(
                                    child: Icon(
                                      MdiIcons.emoticonOutline,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      MdiIcons.cameraOutline,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      MdiIcons.imageOutline,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      MdiIcons.plusCircleOutline,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                            color: Colors.grey[200],
                            child: FloatingActionButton(
                              onPressed: () {},
                              elevation: 0,
                              child: const Icon(MdiIcons.microphone),
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
