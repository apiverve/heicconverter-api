# HEIC Converter API - Dart/Flutter Client

HEIC Converter transforms Apple HEIC and HEIF images to web-friendly formats. Perfect for processing iPhone photos that need to be converted for websites, apps, or services that don't support HEIC.

[![pub package](https://img.shields.io/pub/v/apiverve_heicconverter.svg)](https://pub.dev/packages/apiverve_heicconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [HEIC Converter API](https://apiverve.com/marketplace/heicconverter?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_heicconverter: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_heicconverter/apiverve_heicconverter.dart';

void main() async {
  final client = HeicconverterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'image': '',
      'outputFormat': 'png',
      'quality': 90,
      'maxWidth': 1920,
      'maxHeight': 1080
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "id": "f8e7d6c5-4321-09ab-fedc-ba0987654321",
    "inputFormat": "heic",
    "outputFormat": "jpg",
    "inputSize": 3145728,
    "outputSize": 892456,
    "mimeType": "image/jpeg",
    "expires": 1707350400000,
    "downloadURL": "https://storage.googleapis.com/apiverve/heicconverter/f8e7d6c5.jpg"
  },
  "code": 200
}
```

## API Reference

- **API Home:** [HEIC Converter API](https://apiverve.com/marketplace/heicconverter?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/heicconverter](https://docs.apiverve.com/ref/heicconverter?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
