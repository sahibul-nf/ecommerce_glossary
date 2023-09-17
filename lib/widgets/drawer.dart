import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/happy.gif"),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text("Quellen"),
            onTap: () {
              // Navigate to Source Page
            },
          ),
        ],
      ),
    );
  }
}
