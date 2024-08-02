import 'package:flutter/material.dart';
import 'package:online_shopping_app/screens/items_screen.dart';

// ignore: must_be_immutable
class Griditem extends StatelessWidget {
  Griditem({super.key});
  var pName = [
    'AppleWatch',
    'EarHeadphone',
    'NikeShoe',
    'WhiteTshirt',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pName.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.6),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color(0xFFD4ECF7),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 4, spreadRadius: 2)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '30% off',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ItemsScreen()));
                      },
                      child: Image.asset(
                        "images/${pName[index]}.png",
                        width: 150,
                        height: 120,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pName[index],
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              '\$100',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '\$130',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(0.4)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
