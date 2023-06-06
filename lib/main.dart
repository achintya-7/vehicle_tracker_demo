import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vehicle_tracker_demo/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        scaffoldBackgroundColor: Colors.grey[350],
        useMaterial3: true,
      ),
      getPages: getPages,
      initialRoute: "/",
    );
  }
}

