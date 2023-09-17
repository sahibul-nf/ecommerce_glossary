import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
    required this.controller,
    this.onChanged,
    this.onClose,
  }) : super(key: key);

  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: 'Schreibe etwas...',
          prefixIcon: const Icon(Icons.search),
          isDense: true,
          suffixIcon: IconButton(
            onPressed: onClose,
            icon: const Icon(Icons.close),
          ),
        ),
      ),
    );
  }
}
