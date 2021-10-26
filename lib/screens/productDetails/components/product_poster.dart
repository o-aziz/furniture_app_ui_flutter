import 'package:flutter/material.dart';

import '../../../constatnts.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key? key,
    required this.size,
    required this.img,
  }) : super(key: key);

  final Size size;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(
            img,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
