/// Response models for the HEIC Converter API.

/// API Response wrapper.
class HeicconverterResponse {
  final String status;
  final dynamic error;
  final HeicconverterData? data;

  HeicconverterResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HeicconverterResponse.fromJson(Map<String, dynamic> json) => HeicconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HeicconverterData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the HEIC Converter API.

class HeicconverterData {
  String? id;
  String? inputFormat;
  String? outputFormat;
  int? inputSize;
  int? outputSize;
  String? mimeType;
  int? expires;
  String? downloadURL;

  HeicconverterData({
    this.id,
    this.inputFormat,
    this.outputFormat,
    this.inputSize,
    this.outputSize,
    this.mimeType,
    this.expires,
    this.downloadURL,
  });

  factory HeicconverterData.fromJson(Map<String, dynamic> json) => HeicconverterData(
      id: json['id'],
      inputFormat: json['inputFormat'],
      outputFormat: json['outputFormat'],
      inputSize: json['inputSize'],
      outputSize: json['outputSize'],
      mimeType: json['mimeType'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
    );
}

class HeicconverterRequest {
  String image;
  String outputFormat;
  int? quality;
  int? maxWidth;
  int? maxHeight;

  HeicconverterRequest({
    required this.image,
    required this.outputFormat,
    this.quality,
    this.maxWidth,
    this.maxHeight,
  });

  Map<String, dynamic> toJson() => {
      'image': image,
      'outputFormat': outputFormat,
      if (quality != null) 'quality': quality,
      if (maxWidth != null) 'maxWidth': maxWidth,
      if (maxHeight != null) 'maxHeight': maxHeight,
    };
}
