import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:imo_clone/data/data.dart';
import 'package:imo_clone/model/user_model.dart';
import 'package:imo_clone/pages/chat_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Users extends StatelessWidget {
  final List<User> users = onlineUsers;
  final String subtitle;
  Users({Key? key, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _addStoryWidget(),
                _storyWidget(users[1].imageUrl, "David"),
                _storyWidget(users[2].imageUrl, "Brooks"),
                _storyWidget(users[3].imageUrl, "Jane"),
                _storyWidget(users[4].imageUrl, "Doe"),
                _storyWidget(users[5].imageUrl, "Amy"),
                _storyWidget(users[6].imageUrl, "Smith"),
                _storyWidget(users[7].imageUrl, "Morris"),
                _storyWidget(users[8].imageUrl, "Ed"),
              ],
            )),
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.84,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                //horizontal: 4.0,
              ),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final User user = users[index];
                return Column(
                  children: [
                    ListTile(
                      horizontalTitleGap: 10.0,
                      leading: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                CachedNetworkImageProvider(user.imageUrl),
                          ),
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                color: Colors.green,
                                shape: BoxShape.circle),
                            child: const Center(
                              child: Icon(
                                Icons.check,
                                size: 10,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      subtitle: Text(subtitle),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChatPage(user: user),
                        ));
                      },
                      trailing: _trailing(),
                      title: Text(
                        user.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 145, 0),
                  child: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(145, 0, 20, 0),
                  child: const Icon(
                    Icons.search,
                    color: Colors.blue,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

Widget? _trailing() {
  return SizedBox(
    width: 85,
    height: 30,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "10:56 PM",
          style: TextStyle(
              fontSize: 10, color: Colors.grey[500], letterSpacing: -1),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.blue,
            ))
      ],
    ),
  );
}

Widget _storyWidget(
  String imageUrl,
  String name,
) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              minRadius: 28,
              backgroundImage: CachedNetworkImageProvider(imageUrl),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.white),
              color: Colors.green,
              shape: BoxShape.circle),
          child: const Center(
              child: Text(
            "1",
            style: TextStyle(color: Colors.white, fontSize: 13),
          )),
        )
      ],
    ),
  );
}

Widget _addStoryWidget() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.grey[300],
              onPressed: () {},
              child: const Icon(
                MdiIcons.camera,
                size: 35,
                color: Colors.grey,
              ),
            ),
            const Icon(
              MdiIcons.plusCircle,
              color: Colors.blue,
            ),
          ],
        ),
        const Text(
          "Add a story",
          style: TextStyle(fontSize: 12),
        )
      ],
    ),
  );
}
