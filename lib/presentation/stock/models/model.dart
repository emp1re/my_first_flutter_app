
class OrderData {
  final String symbol;
  final int id;
  final String side;
  final int size;
  final double price;
  final DateTime timestamp;
  final DateTime transactTime;

  OrderData({
    required this.symbol,
    required this.id,
    required this.side,
    required this.size,
    required this.price,
    required this.timestamp,
    required this.transactTime,
  });
}
class OrderModel {
  final String table;
  final String action;
  final List<OrderData> data;
  OrderModel({
    required this.table,
    required this.action,
    required this.data,
  });
  
}