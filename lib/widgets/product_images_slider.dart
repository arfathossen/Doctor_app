import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesSlider extends StatelessWidget {
  const ProductImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(9),
          child: Image.asset('images/p1.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(9),
          child: Image.asset('images/p2.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(9),
          child: Image.asset('images/p1.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(9),
          child: Image.asset('images/p2.png'),
        ),
      ],
    );
  }
}
