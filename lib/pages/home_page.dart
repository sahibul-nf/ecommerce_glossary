import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/list_terms.dart';
import '../widgets/search_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  final List _items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kaufleute - Begriffe"),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          // Search Form
          SearchForm(
            controller: _controller,
            onChanged: null,
            onClose: null,
          ),
          // List of Terms
          ListOfTerms(items: _items)
        ],
      ),
    );
  }
}
