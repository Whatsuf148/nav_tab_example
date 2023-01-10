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
    const Cruch(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: MyCustomAppBar(
          onChange: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
        body: pages[currentPage],
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function(int) onChange;
  const MyCustomAppBar({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Icon(Icons.circle_outlined), Icon(Icons.menu)],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "samuel joseph",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff8439B3),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TabBar(
              isScrollable: true,
              onTap: (value) {
                onChange.call(value);
              },
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xff8439B3),
              indicator: BoxDecoration(
                color: Color(0xff8439B3),
                borderRadius: BorderRadius.circular(15)
              ),
              tabs: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: const Text(
                    "MyImage",
                    style: TextStyle(
                      // color: Color(0xff7E14AF),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: const Text(
                    "Family",
                    style: TextStyle(
                      // color: Color(0xff7E14AF),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: const Text(
                    "Friends",
                    style: TextStyle(
                      // color: Color(0xff7E14AF),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: const Text(
                    "Curch",
                    style: TextStyle(
                      // color: Color(0xff7E14AF),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: const Text(
                    "Mosque",
                    style: TextStyle(
                      // color: Color(0xff7E14AF),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 110);
}
