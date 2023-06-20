Future<String> fetchWeatherReport(String city) async {
  return await Future.delayed(const Duration(seconds: 2), () => city);
}
