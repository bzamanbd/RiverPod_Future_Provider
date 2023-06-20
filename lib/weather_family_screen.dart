import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_family_modifier/providers.dart';

class WeatherFamilyScreen extends ConsumerWidget {
  const WeatherFamilyScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(weatherProvier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today Weather'),
        centerTitle: true,
      ),
      body: weatherData.when(
        data: (data) => Center(child: Text(data.toString())),
        error: (error, _) => const Center(
          child: Text('some error occurred'),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
