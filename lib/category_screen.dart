import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: const[
                  MyWidget(label: 'Hi', url: 'assets/tv.jpg'),
                  MyWidget(label: 'Hi', url: 'assets/tv.jpg'),
                  MyWidget(label: 'Hi', url: 'assets/tv.jpg'),
                  MyWidget(label: 'Hi', url: 'assets/tv.jpg')
                  
                ],
              );
            }));
  }
}

class MyWidget extends StatelessWidget {
  final String url;
  final String label;
  const MyWidget({required this.label, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(url),
            radius: 30,
          ),
        ),
        Text(label)
      ],
    );
  }
}
