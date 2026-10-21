# HEIC Converter API - Ruby Gem

HEIC Converter transforms Apple HEIC and HEIF images to web-friendly formats. Perfect for processing iPhone photos that need to be converted for websites, apps, or services that don't support HEIC.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_heicconverter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_heicconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_heicconverter'

# Initialize the client
client = APIVerve::Heicconverter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  image: "",
  outputFormat: "png",
  quality: 90,
  maxWidth: 1920,
  maxHeight: 1080
})

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ outputFormat: "png" })
  puts response["data"]
rescue APIVerve::Heicconverter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Heicconverter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Heicconverter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/heicconverter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/heicconverter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/heicconverter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
