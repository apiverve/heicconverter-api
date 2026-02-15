# HEIC Converter API - Go Client

HEIC Converter transforms Apple HEIC and HEIF images to web-friendly formats. Perfect for processing iPhone photos that need to be converted for websites, apps, or services that don't support HEIC.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [HEIC Converter API](https://apiverve.com/marketplace/heicconverter?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/heicconverter-api/go
```

---

## Configuration

Before using the HEIC Converter API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The HEIC Converter API documentation is found here: [https://docs.apiverve.com/ref/heicconverter](https://docs.apiverve.com/ref/heicconverter?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/heicconverter-api/go"
)

func main() {
    // Create a new client
    client := heicconverter.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "image": "",
        "outputFormat": "png",
        "quality": 90,
        "maxWidth": 1920,
        "maxHeight": 1080
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
