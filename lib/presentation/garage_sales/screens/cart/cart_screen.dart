import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_flutter_application/presentation/garage_sales/providers/cart_providers.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(cartProvider);
    final total = ref.watch(cartTotalProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: products.map((product) {
                return Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Image.asset(product.image, width: 60, height: 60),
                      const SizedBox(width: 10),
                      Text('${product.title}...'),
                      const Expanded(child: SizedBox()),
                      Text('\$${product.price}'),
                    ],
                  ),
                );
              }).toList(), // output cart products here
            ),
            Text('Total price: \$${total}'),
            // output totals here
          ],
        ),
      ),
    );
  }
}
