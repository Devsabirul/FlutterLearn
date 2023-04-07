import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Md Sabirul Islam"),
            accountEmail: Text("shishir8089@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.shutterstock.com/image-photo/close-portrait-young-smiling-handsome-260nw-1180874596.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
