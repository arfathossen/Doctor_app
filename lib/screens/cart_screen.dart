import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> pName = [
      'AppleWatch',
      'EarHeadphone',
      'NikeShoe',
      'WhiteTshirt',
    ];
    List<String> pSize = [
      '36',
      'M',
      'S',
      '40',
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            const Align(
              child: Text(
                'My cart',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.only(right: 10),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          margin: const EdgeInsets.only(left: 8),
                          width: MediaQuery.of(context).size.width / 4,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color(0xFFD4ECF7),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image.asset(
                            "images/${pName[i]}.png",
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 15,
                              bottom: 20,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  pName[i],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "Size:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 17),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      pSize[i],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '"\$50.55',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                  fontSize: 18),
                            ),
                            Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.minus),
                                  Text('01'),
                                  Icon(CupertinoIcons.plus)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total!',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  '\$300',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 50,
                width: MediaQuery.of(context).size.width / 2 * 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent),
                child: const Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
