A minimal [discourse](https://www.discourse.org/) api client for Dart.

## Usage

A simple usage example:

```dart
import 'package:discourse_api/discourse_api.dart';

void main() async {
  final client = DiscourseApiClient('discourse_site_url');
  final about = await client.about();
  print('About: $about');
}
```
