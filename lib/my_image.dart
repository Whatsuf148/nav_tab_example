import 'package:flutter/material.dart';

List<String> img = [
  "photo/hero.jpg",
  "photo/hero.jpg",
  "photo/hero.jpg",
];

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xffC29ED9),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: img.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    clipBehavior: Clip.hardEdge,
                    height: 170,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Text(
                      "Straight Face\n Dad",
                    ),
                  ),
                  Image.asset(
                    img[index],
                    height: 190,
                    width: 190,
                    fit: BoxFit.fitWidth,
                  )
                ],
              );
            })),
      ),
    );
  }
}
