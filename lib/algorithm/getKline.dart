import 'package:dio/dio.dart';

void dayK() async {
  try {
    var dio = Dio();
    var response = await dio.get(
      'https://api.binance.com/api/v3/klines',
      queryParameters: {
        'symbol': 'BTCUSDT',
        'interval': '1d',
        'limit': '500',
      },
    );

    if (response.statusCode == 200) {
      print(response.data);
    } else {
      print('Failed to fetch data. Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}