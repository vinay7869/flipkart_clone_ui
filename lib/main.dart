import 'package:flipkart/accounts.dart';
import 'package:flipkart/home_screen.dart';
import 'package:flipkart/notification.dart';
import 'package:flutter/material.dart';
import 'category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flipkart',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List<Widget> tabs = [
    const HomeScreen(),
    const CategoryScreen(),
    const NotificationScreen(),
    const AccountsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Account')
        ],
      ),
    );
  }
}
