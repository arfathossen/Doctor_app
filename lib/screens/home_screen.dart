import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
import 'package:online_shopping_app/widgets/griditem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> clrs = [
      const Color.fromARGB(255, 246, 113, 58),
      const Color.fromARGB(255, 36, 131, 233),
      const Color.fromARGB(255, 63, 208, 143),
    ];
    var imageList = [
      "images/slide1.png",
      "images/slide3.png",
      "images/slide4.png",
    ];
    var iconImageList = [
      'images/icon1.png',
      'images/icon2.png',
      'images/icon3.png',
      'images/icon4.png',
      'images/icon5.png',
      'images/icon6.png',
      'images/icon7.png',
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFD4ECF7),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: const Icon(
                    CupertinoIcons.cart,
                    size: 28,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFD4ECF7),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: const Icon(
                    CupertinoIcons.search,
                    size: 28,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello Dear',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Lets shop something!",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                              color: clrs[i],
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      '30% off on winter collection',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),
                                    ),
                                    Container(
                                      width: 90,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Shop Now',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset(
                                imageList[i],
                                height: 180,
                                width: 110,
                              )
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 0),
                  child: Row(
                    children: [
                      for (var i = 0; i < 7; i++)
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color(0xFFD4ECF7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    spreadRadius: 2),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image.asset(iconImageList[i]),
                          ),
                        )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Griditem(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
