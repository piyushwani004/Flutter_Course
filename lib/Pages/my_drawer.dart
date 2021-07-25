import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final imageUrl = "https://xenforo.com/community/data/avatars/o/202/202502.jpg?1587654225";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Piyush Wani"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                accountEmail: Text("piyushwani04@gmail.com")),
          ),
        ],
      ),
    );
  }
}
