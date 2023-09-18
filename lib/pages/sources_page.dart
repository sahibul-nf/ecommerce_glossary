import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SourcesPage extends StatelessWidget {
  const SourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sources"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: TextButton(
                  child: const Text(
                    "https://www.spasslerndenk.com/ihk-lernkarten",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    launchUrl(
                      Uri.parse("https://www.spasslerndenk.com/ihk-lernkarten"),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
