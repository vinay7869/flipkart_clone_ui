import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8.0),
            prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.blueAccent)),
            hintText: 'Search for products/groceries/accessories',
            suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mic, color: Colors.blue)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue))),
      ),
    );
  }
}
