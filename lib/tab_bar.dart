import 'package:flutter/material.dart';
import 'package:nav_tab_ui/family.dart';
import 'package:nav_tab_ui/cruch.dart';
import 'package:nav_tab_ui/friend.dart';
import 'package:nav_tab_ui/my_image.dart';

class MainTabbarPage extends StatefulWidget {
  const MainTabbarPage({super.key});

  @override
  State<MainTabbarPage> createState() => _MainTabbarPageState();
}

class _MainTabbarPageState extends State<MainTabbarPage> {
  int currentPage = 0;
  List<Widget> pages = [
    const MyImage(),
    const Family(),
    const Friends(),
    const Cruch(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Saminom don",
            style: TextStyle(
              color: Color(0xff7E14AF),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.circle_outlined),
            color: const Color(0xff7E14AF),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: const Color(0xff7E14AF),
            ),
          ],
          bottom: TabBar(
            onTap: (value) {
              currentPage = value;
              setState(() {});
            },
            tabs: [
              Container(
                alignment: Alignment.center,
                height: 30,
                child: const Text(
                  "MyImage",
                  style: TextStyle(
                    color: Color(0xff7E14AF),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                child: const Text(
                  "Family",
                  style: TextStyle(
                    color: Color(0xff7E14AF),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                child: const Text(
                  "Friends",
                  style: TextStyle(
                    color: Color(0xff7E14AF),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                child: const Text(
                  "Curch",
                  style: TextStyle(
                    color: Color(0xff7E14AF),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: pages[currentPage],
      ),
    );
  }
}
