import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/cart/widget/cart_bottomnavigation_bar.dart';
import 'package:esnatch/features/shop/screens/cart/widget/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CartScreenBottomNavigationBar(),
      appBar: TAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TCartItems(),
        ),
      ),
    );
  }
}
