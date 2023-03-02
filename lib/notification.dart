import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.prodirectselect.com/productimages/V3_1_Gallery_1/95099_Gallery_1_0564205.jpg?imwidth=768'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Adidas Superstar')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 5, bottom: 3),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Min 70% off',
                            style: TextStyle(backgroundColor: Colors.amber),
                          )),
                    )
                  ],
                ),
              ),
              Container(
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.prodirectselect.com/productimages/V3_1_Gallery_1/95099_Gallery_1_0564205.jpg?imwidth=768'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Adidas Superstar')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 5, bottom: 3),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Min 70% off',
                            style: TextStyle(backgroundColor: Colors.amber),
                          )),
                    )
                  ],
                ),
              ),
              Container(
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.prodirectselect.com/productimages/V3_1_Gallery_1/95099_Gallery_1_0564205.jpg?imwidth=768'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Adidas Superstar')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 5, bottom: 3),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Min 70% off',
                            style: TextStyle(backgroundColor: Colors.amber),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 170,
            width: 170,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.prodirectselect.com/productimages/V3_1_Gallery_1/95099_Gallery_1_0564205.jpg?imwidth=768'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Adidas Superstar')),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 5, bottom: 3),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Min 70% off',
                        style: TextStyle(backgroundColor: Colors.amber),
                      )),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
