import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_flutter_application/presentation/garage_sales/providers/cart_providers.dart';
import 'package:my_first_flutter_application/presentation/garage_sales/providers/product_providers.dart';
import 'package:my_first_flutter_application/presentation/garage_sales/shared/cart_icon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final products = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 219, 76),
        title: const Text('Garage Sale Products'),
        actions: const [CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
          ),
          itemBuilder:(context, index) {
            return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey.withOpacity(0.05),
              child: Column(
                children: [
                  Image.asset(products[index].image),
                  Text(products[index].title, style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('\$${products[index].price.toStringAsFixed(2)}', style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),),  
                  if (cartProducts.contains(products[index]))
                    ElevatedButton(
                      onPressed: () {
                        ref.read(cartProvider.notifier).removeFromCart(products[index]);
                      },
                      child: const Text('Remove'),
                    )
                  else
                    ElevatedButton(
                      onPressed: () {
                        ref.read(cartProvider.notifier).addToCart(products[index]);
                      },
                      child: const Text('Add to Cart'),
                    ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}