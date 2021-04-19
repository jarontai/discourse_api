import 'package:discourse_api/discourse_api.dart';

void main() {
  var client = DiscourseApiClient('siteurl');
  print('About: ${client.about()}');
}
