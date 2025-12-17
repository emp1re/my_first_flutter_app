import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:my_first_flutter_application/presentation/stock/models/model.dart';

Future<dynamic> fetchOrders() async {
  print('Fetching orders from BitMEX API...');

  final _channel = WebSocketChannel.connect(
    Uri.parse(
      'wss://ws.bitmex.com/realtime?subscribe=instrument,orderBookL2_25:XBTUSD',
    ), // Use a secure wss:// URL
  );
  await _channel.ready;
  _channel.stream.listen(
    (data) {
      final dataMap = jsonDecode(data) as OrderData;
      print('Received data: $dataMap');
      
      
    },
    onError: (error) => print(error),
  );

}
