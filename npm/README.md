# HEIC Converter API

HEIC Converter transforms Apple HEIC and HEIF images to web-friendly formats. Perfect for processing iPhone photos that need to be converted for websites, apps, or services that don't support HEIC.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/heicconverter.svg)](https://www.npmjs.com/package/@apiverve/heicconverter)

This is a Javascript Wrapper for the [HEIC Converter API](https://apiverve.com/marketplace/heicconverter?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/heicconverter
```

Using yarn:
```shell
yarn add @apiverve/heicconverter
```

---

## Configuration

Before using the HEIC Converter API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The HEIC Converter API documentation is found here: [https://docs.apiverve.com/ref/heicconverter](https://docs.apiverve.com/ref/heicconverter?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const heicconverterAPI = require('@apiverve/heicconverter');
const api = new heicconverterAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

### File Upload

This API requires a file upload. Use `executeWithFile()` to upload files:

```javascript
// Upload a file (path, Buffer, or ReadStream)
api.executeWithFile('/path/to/file.image', options, callback);
```

**Accepted file types:** .heic, .heif
**Maximum file size:** 10 MB

### Available Parameters

Pass additional parameters via `options.fields`:

| Parameter | Type | Description |
|-----------|------|-------------|
| `outputFormat` | string | Target format *(required)* |
| `quality` | integer | Output quality (applies to jpg/webp) |
| `maxWidth` | integer | Maximum width in pixels (maintains aspect ratio) |
| `maxHeight` | integer | Maximum height in pixels (maintains aspect ratio) |

```javascript
api.executeWithFile('/path/to/file', {
    fields: {
        outputFormat: 'png',
        quality: 90,
        maxWidth: 1920,
        maxHeight: 1080
    }
});
```

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/image.heic';

api.executeWithFile(filePath,
    {
        fields: {
        outputFormat: 'png',
        quality: 90,
        maxWidth: 1920,
        maxHeight: 1080
        }
    }, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/image.heic';

api.executeWithFile(filePath, { fields: { /* parameters */ } })
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    // This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/image.heic';

    try {
        const data = await api.executeWithFile(filePath, { fields: { /* parameters */ } });
        console.log(data);
    } catch (error) {
        console.error(error);
    }
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
