# HEIC Converter API - PHP Package

HEIC Converter transforms Apple HEIC and HEIF images to web-friendly formats. Perfect for processing iPhone photos that need to be converted for websites, apps, or services that don't support HEIC.

## Installation

Install via Composer:

```bash
composer require apiverve/heicconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Heicconverter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'image' => '',
    'outputFormat' => 'png',
    'quality' => 90,
    'maxWidth' => 1920,
    'maxHeight' => 1080
]);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Heicconverter\Client;
use APIVerve\Heicconverter\Exceptions\APIException;
use APIVerve\Heicconverter\Exceptions\ValidationException;

try {
    $response = $client->execute(['image' => '', 'outputFormat' => 'png', 'quality' => 90, 'maxWidth' => 1920, 'maxHeight' => 1080]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/heicconverter?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/heicconverter?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/heicconverter?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
