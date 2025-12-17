import 'package:flutter/material.dart';
import 'package:my_first_flutter_application/presentation/stock/provider/stock_provider.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    fetchOrders();
    return const Scaffold(
      body: Center(
        child: Text('Stock Screen'),

      ),
    );
  }
}