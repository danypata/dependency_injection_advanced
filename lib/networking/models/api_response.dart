class ApiResponse {
  final Map<String, dynamic> rawResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(rawResponse: json);
  }

  Map<String, dynamic> toJson() => rawResponse;

  const ApiResponse({
    required this.rawResponse,
  });
}
