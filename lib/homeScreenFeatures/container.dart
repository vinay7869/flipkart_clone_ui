import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.black38,
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        childAspectRatio: 0.67,
        children: const <Widget>[
          SlideView(),
          SlideView(),
          SlideView(),
        ],
      ),
    );
  }
}

class SlideView extends StatelessWidget {
  const SlideView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mac.jpg'), fit: BoxFit.fill)),
      child: Stack(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'APPLE 2023 Macbook \nAir M2 - (8 GB/512 GB\n13.3 inch, Gold, 1.29 kg)',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 70),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(3),
                height: 27,
                width: 100,
                decoration: const BoxDecoration(color: Colors.purple),
                child: const Text(
                  textAlign: TextAlign.center,
                  '₹1,17,900',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.all(5),
                color: Colors.purpleAccent,
                child: const Text(
                  'No cost EMI ₹39,300/month',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, right: 40),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                  // margin: const EdgeInsets.all(8),
                  height: 70,
                  width: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/offer.jpg')))),
            ),
          )
        ],
      ),
    );
  }
}
