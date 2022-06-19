import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:imo_clone/pages/contact_list_page.dart';
import 'package:imo_clone/pages/profile_page.dart';
import 'package:imo_clone/pages/rooms_page.dart';
import 'package:imo_clone/users/users.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var imageUrl =
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  TabController? defaultTabController;
  int _homePageIndex = 0;
  List<Widget> homePage = [
    Users(subtitle: "is back on imo!"),
    const RoomsPage(),
    const ContactListPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: homePage[_homePageIndex],
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      elevation: 0.5,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ));
            },
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(imageUrl),
                )),
          ),
          SizedBox(
            width: 300,
            child: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.blue,
                controller: tabController,
                tabs: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              tabController.index = 0;
                              _homePageIndex = 0;
                            });
                          },
                          icon: const Icon(MdiIcons.chat))),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            tabController.index = 1;
                            _homePageIndex = 1;
                          });
                        },
                        icon: const Icon(MdiIcons.chatMinus)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            tabController.index = 2;
                            _homePageIndex = 2;
                          });
                        },
                        icon: const Icon(MdiIcons.accountDetails)),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
