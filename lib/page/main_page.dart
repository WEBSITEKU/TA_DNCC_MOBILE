import 'package:flutter/material.dart';
import 'package:mobile_tugas_akhir/page/home_page.dart';
import 'package:mobile_tugas_akhir/page/profil_page.dart';
import 'package:mobile_tugas_akhir/page/search_page.dart';
import 'package:mobile_tugas_akhir/config/color_config.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;

  void changeIndexPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndexPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:
                  _selectedIndex == 0 ? ColorConfig.primaryColor : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color:
                  _selectedIndex == 1 ? ColorConfig.primaryColor : Colors.grey,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: _selectedIndex == 3
                    ? ColorConfig.primaryColor
                    : Colors.grey),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
