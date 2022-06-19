import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageUrl =
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(MdiIcons.close),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Me',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(MdiIcons.qrcode))
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: CachedNetworkImageProvider(imageUrl),
            ),
            title: const Text("Shovo"),
            subtitle: const Text("+880123456789"),
            trailing: const Icon(MdiIcons.chevronRight),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(
              MdiIcons.swapHorizontal,
              color: Colors.blue,
            ),
            title: Text("Switch Account"),
            trailing: Icon(MdiIcons.chevronRight),
          ),
          Container(
            color: Colors.grey[200],
            height: 17,
          ),
          const ListTile(
            leading: Icon(
              MdiIcons.cogOutline,
              color: Colors.blue,
            ),
            title: Text("Settings"),
            trailing: Icon(MdiIcons.chevronRight),
          ),
          Container(
            color: Colors.grey[200],
            height: 17,
          ),
          const ListTile(
            leading: Icon(
              MdiIcons.walletOutline,
              color: Colors.green,
            ),
            title: Text("Imo Wallet"),
            trailing: Icon(MdiIcons.chevronRight),
          ),
          const ListTile(
            leading: Icon(
              MdiIcons.folderOutline,
              color: Colors.yellow,
            ),
            title: Text("My Files"),
            trailing: Icon(MdiIcons.chevronRight),
          ),
          Container(
            color: Colors.grey[200],
            height: 17,
          ),
          const ListTile(
            leading: Icon(
              MdiIcons.circleMultipleOutline,
              color: Colors.deepOrange,
            ),
            title: Text("iBubble"),
            trailing: Icon(MdiIcons.chevronRight),
          ),
          Container(
            color: Colors.grey[200],
            height: 17,
          ),
          const ListTile(
            leading: Icon(
              MdiIcons.shareOutline,
              color: Colors.blue,
            ),
            title: Text("Share imo"),
            trailing: Icon(MdiIcons.chevronRight),
          ),
          const ListTile(
            leading: Icon(
              MdiIcons.commentTextOutline,
              color: Colors.blue,
            ),
            title: Text("Help & Feedback"),
            trailing: Icon(MdiIcons.chevronRight),
          ),
          Expanded(
              child: Container(
            color: Colors.grey[200],
          ))
        ],
      ),
    );
  }
}
