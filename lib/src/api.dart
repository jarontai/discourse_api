import 'package:dio/dio.dart';

import 'models/models.dart';

main(List<String> args) async {
  var dio = Dio();

  var response = await dio.get('https://www.dart-china.org/about.json');
  var jsonMap = response.data['about'];
  var about = About.fromMap(jsonMap);
  print(about);
}
