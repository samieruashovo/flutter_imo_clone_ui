import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:imo_clone/data/data.dart';
import 'package:imo_clone/model/user_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> user = onlineUsers;
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.84,
          child: ListView(
            shrinkWrap: true,
            children: [
              const ListTile(
                leading: Icon(
                  Icons.person_add_outlined,
                  color: Colors.blue,
                ),
                title: Text("New Contacts"),
                trailing: Icon(
                  Icons.chevron_right,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              const ListTile(
                leading: Icon(
                  Icons.call_outlined,
                  color: Colors.blue,
                ),
                title: Text("Call History"),
                trailing: Icon(Icons.chevron_right),
              ),
              const Divider(
                thickness: 1,
              ),
              const ListTile(
                leading: Icon(
                  MdiIcons.messageOutline,
                  color: Colors.cyan,
                ),
                title: Text("New Group Chat"),
                trailing: Icon(Icons.chevron_right),
              ),
              const Divider(
                thickness: 1,
              ),
              const ListTile(
                leading: Icon(
                  Icons.bookmark_outline,
                  color: Colors.purple,
                ),
                title: Text("Chanels"),
                trailing: Icon(Icons.chevron_right),
              ),
              const Divider(
                thickness: 10,
              ),
              ListTile(
                leading: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
                title: const Text("Follow"),
                trailing: const Icon(Icons.chevron_right),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user[0].imageUrl),
                ),
                title: const Text("Aria"),
                trailing: const Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user[1].imageUrl),
                ),
                title: const Text("Aida A."),
                trailing: const Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user[2].imageUrl),
                ),
                title: const Text("Bill Brown"),
                trailing: const Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user[3].imageUrl),
                ),
                title: const Text("Lilly kr."),
                trailing: const Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user[4].imageUrl),
                ),
                title: const Text("Milly Holms"),
                trailing: const Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user[5].imageUrl),
                ),
                title: const Text("Jayed hr."),
                trailing: const Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user[6].imageUrl),
                ),
                title: const Text("Md jamal"),
                trailing: const Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey[300]!, width: 1),
            ),
          ),
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
