import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_family_modifier/dummy_weather.dart';

final weatherProvier =
    FutureProvider<String>((ref) => fetchWeatherReport('Khulna, 33'));
