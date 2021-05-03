A minimal [discourse](https://www.discourse.org/) api client for Dart.

## Usage

A simple usage example:

```dart
import 'package:discourse_api/discourse_api.dart';

main() {
  var client = DiscourseApiClient('siteurl');
  print('${client.about()}');
}
```
