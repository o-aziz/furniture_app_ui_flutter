import 'package:flutter/material.dart';

import '../../../constatnts.dart';
import 'details_components.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ColorDot(
            fillColor: Color(0xff80989a),
            isSelected: true,
          ),
          ColorDot(fillColor: Color(0xffff5200)),
          ColorDot(fillColor: kPrimaryColor),
        ],
      ),
    );
  }
}
