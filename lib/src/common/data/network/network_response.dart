class NetworkResponse {
  final bool isSucceeded;
  final String? messageCode;
  final int? message;
  final dynamic data;
  NetworkResponse({
    required this.isSucceeded,
    this.messageCode,
    this.message,
    required this.data,
  });

  factory NetworkResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResponse(
      isSucceeded: map['status'] as bool,
      messageCode: map['cod'] as String?,
      message: map['message'] as int?,
      data: map['data'],
    );
  }

  factory NetworkResponse.fromJson(Map<String, dynamic> source) =>
      NetworkResponse.fromMap(source);

  @override
  String toString() {
    return 'NetworkResponse(isSucceeded: $isSucceeded, messageCode: $messageCode, message: $message, data: $data)';
  }
}
