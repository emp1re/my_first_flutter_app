import 'package:my_first_flutter_application/presentation/garage_sales/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_providers.g.dart';

const List<Product> productList = [
  Product(
    id: '1',
    title: 'Backpack',
    price: 29,
    image: './assets/images/products/backpack.png',
  ),
  Product(
    id: '2',
    title: 'Drum',
    price: 199,
    image: './assets/images/products/drum.png',
  ),
  Product(
    id: '3',
    title: 'Guitar',
    price: 149,
    image: './assets/images/products/guitar.png',
  ),
  Product(
    id: '4',
    title: 'Jeans',
    price: 49,
    image: './assets/images/products/jeans.png',
  ),
  Product(
    id: '5',
    title: 'Karate Uniform',
    price: 39,
    image: './assets/images/products/karati.png',
  ),
  Product(
    id: '6',
    title: 'Shorts',
    price: 19,
    image: './assets/images/products/shorts.png',
  ),
  Product(
    id: '7',
    title: 'Skates',
    price: 89,
    image: './assets/images/products/skates.png',
  ),
  Product(
    id: '8',
    title: 'Suitcase',
    price: 79,
    image: './assets/images/products/suitcase.png',
  ),
];


@riverpod
List<Product> products(ref) {
  return productList;
}

@riverpod
List<Product> reducedProduct(ref) {
  return  productList.where((product) => product.price < 100).toList();
}