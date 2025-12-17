import 'package:my_first_flutter_application/presentation/garage_sales/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_providers.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return const {};
  }

  void addToCart(Product product) {
  if (!state.any((p) => p.id == product.id)) {
    state = {...state, product};
  }
  
  }
  void removeFromCart(Product product) {
    state = state.where((item) => item.id != product.id).toSet();
  }
}

@riverpod
int cartTotal(ref){
  final cartProducts = ref.watch(cartProvider);
  int total = 0;
  for (var product in cartProducts) {
    total += int.parse(product.price.toString());
  }
  return total;
}
