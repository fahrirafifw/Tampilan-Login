import 'package:flutter/material.dart';
import 'package:jobstreetcopy/Theapps/login_screen.dart';
import 'package:jobstreetcopy/Theapps/profile.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  _DrawwerScreenState createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Fahri Rafif Waskito"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/img/Fahri.jpeg")),
            accountEmail: Text("fahri@gmail.com"),
          ),
          DrawerListTile(
            iconData: Icons.person,
            title: "Profile",
            onTilePressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile(),
                  ));
            },
          ),
          DrawerListTile(
            iconData: Icons.file_copy,
            title: "Your Data",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.chat_bubble_sharp,
            title: "Chats",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "contacs",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: "Calls",
            onTilePressed: () {},
          ),
          SizedBox(
            height: 320,
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: "Sign Out",
            onTilePressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  const DrawerListTile(
      {Key? key, this.iconData, this.title, this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!.toString(),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
