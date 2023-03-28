import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Anil Chauhan"),
                  accountEmail: Text("asc@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                  textScaleFactor: 1.2,
                  "Home",
                  style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                  textScaleFactor: 1.2,
                  "Profile",
                  style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                  textScaleFactor: 1.2,
                  "Email me",
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
