import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_ui/constatnts.dart';
import 'package:furniture_app_ui/models/product.dart';
import 'package:furniture_app_ui/screens/productDetails/components/details_components.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/back.svg'),
      ),
      title: Text(
        'back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart_with_item.svg'))
      ],
    );
  }
}
