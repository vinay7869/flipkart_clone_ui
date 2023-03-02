import 'package:flutter/material.dart';

class Grid1 extends StatelessWidget {
  const Grid1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: GridView.count(
          childAspectRatio: 1.0,
          crossAxisCount: 1,
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            GridExtended(label: 'Mobiles', url: 'assets/mobile.jpg'),
            GridExtended(label: 'TV', url: 'assets/tv.jpg'),
            GridExtended(label: 'Kitchen', url: 'assets/kitchen.jpg'),
            GridExtended(label: 'Fashion', url: 'assets/fash.jpg'),
            GridExtended(label: 'HI', url: 'assets/mobile.jpg'),
            GridExtended(label: 'HI', url: 'assets/mobile.jpg'),
            GridExtended(label: 'HI', url: 'assets/mobile.jpg'),
            GridExtended(label: 'HI', url: 'assets/mobile.jpg'),
          ]),
    );
  }
}

class GridExtended extends StatelessWidget {
  final String url;
  final String label;
  const GridExtended({required this.label, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding( 
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(url),
            radius: 30,
          ),
        ),
        const SizedBox(height: 2),
        Text(label)
      ],
    );
  }
}


