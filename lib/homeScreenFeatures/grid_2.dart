import 'package:flipkart/category_screen.dart';
import 'package:flutter/material.dart';

class Grid2 extends StatelessWidget {
  const Grid2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Mobile Offers <3',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            )),
        SizedBox(
          height: 120,
          width: double.infinity,
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(),
                )),
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 0.9,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const <Widget>[
                GridItems(
                    label: 'Realme 11 pro 21000/-', url: 'assets/realme.jpg'),
                GridItems(
                    label: 'Readmi 13 pro max 27000/-',
                    url: 'assets/readmi.jpg'),
                GridItems(
                    label: 'Samsung lite 15000/-', url: 'assets/samsung1.jpg'),
                GridItems(
                    label: 'Realme 11 pro 21000/-', url: 'assets/realme.jpg'),
                GridItems(
                    label: 'Realme 11 pro 21000/-', url: 'assets/realme.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GridItems extends StatelessWidget {
  final String url;
  final String label;
  const GridItems({required this.label, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(url))),
          ),
        ),
        const SizedBox(height: 3),
        Text(
          label,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
