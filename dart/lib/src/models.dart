/// Response models for the HEIC Converter API.

/// API Response wrapper.
class HeicconverterResponse {
  final String status;
  final dynamic error;
  final HeicconverterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HeicconverterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HeicconverterResponse.fromJson(Map<String, dynamic> json) => HeicconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HeicconverterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the HEIC Converter API.

class HeicconverterData {
  String? id;
  String? inputFormat;
  String? outputFormat;
  num? inputSize;
  num? outputSize;
  String? mimeType;
  num? expires;
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
  String outputFormat;

  HeicconverterRequest({
    required this.outputFormat,
  });

  Map<String, dynamic> toJson() => {
      'outputFormat': outputFormat,
    };
}
