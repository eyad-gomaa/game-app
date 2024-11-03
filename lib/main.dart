import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/navigation/app_router.dart';
import 'package:zone_game_app/zone_app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => ZoneApp(
        appRouter: AppRouter(),
      ), // Wrap your app
    ),
  );
}
