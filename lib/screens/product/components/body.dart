import 'package:flutter/material.dart';
import 'package:furniture_app_ui/constatnts.dart';
import 'package:furniture_app_ui/models/product.dart';
import 'package:furniture_app_ui/screens/product/components/product_components.dart';
import 'package:furniture_app_ui/screens/productDetails/product_details.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(onChanged: (value) {}),
        const CategoryList(),
        const SizedBox(height: kDefaultPadding / 2),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  product: products[index],
                  pressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetails(
                                  product: products[index],
                                )));
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
