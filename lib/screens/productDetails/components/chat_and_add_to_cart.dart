import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constatnts.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: const Color(0xfffcbf1e),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: 18,
          ),
          const SizedBox(width: kDefaultPadding / 2),
          const Text(
            'Chat',
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/icons/cart_with_item.svg',
            height: 18,
            color: Colors.white,
          ),
          const SizedBox(width: kDefaultPadding / 2),
          const Text(
            'Add to Cart',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
