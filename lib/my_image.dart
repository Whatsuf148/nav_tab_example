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
    return Container(
      width: double.infinity,
      color: const Color(0xff7E14AF),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: img.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    height: 170,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Straight Face\n Dad",
                          ),
                          Image.asset(
                            img[index],
                            height: 900,
                            width: 200,
                            fit: BoxFit.fitHeight,
                          )
                        ]),
                  ),
                );
              })),
        ],
      ),
    );
  }
}
