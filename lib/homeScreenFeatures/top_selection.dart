import 'package:flutter/material.dart';

class TopSelection extends StatelessWidget {
  const TopSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Top Offers',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('See all >>')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 170,
                height: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
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
                      ),
                    ]),
              ),
              Container(
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images-na.ssl-images-amazon.com/images/I/61%2BpaS1uwjL._SL1500_.jpg'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Align(
                          alignment: Alignment.bottomLeft, child: Text('Boat')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 5, bottom: 3),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Min 40% off',
                            style: TextStyle(backgroundColor: Colors.amber),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/shoes.jpg'))),
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
                            'https://cdn.sweatband.com/adidas_2_x_15kg_rubber_dumbbells_adidas_2_x_15kg_rubber_dumbbells_2000x2000.jpg'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Dumbells')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 5, bottom: 3),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Min 60% off',
                            style: TextStyle(backgroundColor: Colors.amber),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
