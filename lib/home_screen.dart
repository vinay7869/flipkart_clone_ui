import 'package:flipkart/notification.dart';
import 'package:flutter/material.dart';
import 'homeScreenFeatures/container.dart';
import 'homeScreenFeatures/grid_1.dart';
import 'homeScreenFeatures/grid_2.dart';
import 'homeScreenFeatures/search_bar.dart';
import 'homeScreenFeatures/top_selection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://logos-world.net/wp-content/uploads/2020/11/Flipkart-Emblem.png')),
                accountName: Text('Vinay Yadav'),
                accountEmail: Text('vrockstarg1997@gmail.com')),
            const ListTile(
              title: Text('Settings'),
              trailing: Icon(Icons.settings),
              iconColor: Colors.blue,
            ),
            const ListTile(
              title: Text('Help'),
              trailing: Icon(Icons.help),
              iconColor: Colors.blue,
            ),
            ListTile(
              onTap: () => Navigator.pop(context),
              title: const Text('Close'),
              trailing: const Icon(Icons.close),
              iconColor: Colors.blue,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2.8),
            const ListTile(
              title: Text('Logout'),
              trailing: Icon(Icons.logout),
              iconColor: Colors.blue,
            ),
          ],
        )),
        appBar: AppBar(
          elevation: 7,
          backgroundColor: Colors.blue[550],
          title: Container(
              width: 140,
              height: 140,
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/Flipkart.jpg')),
              )),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen())),
                icon: const Icon(Icons.notification_add)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              SearchBar(),
              Grid1(),
              SizedBox(height: 5),
              ContainerView(),
              SizedBox(height: 10),
              Grid2(),
              SizedBox(height: 10),
              TopSelection(),
            ],
          ),
        ));
  }
}
