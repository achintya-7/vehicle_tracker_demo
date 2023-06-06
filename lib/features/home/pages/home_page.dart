import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../controllers/map_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final placeController = Get.find<PlaceController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () async {
                  final permission = await placeController.handleLocationPermission();
                  if (permission) {
                    log("Permission granted");
                    final position = await placeController.getCurrentLocation();
                    if (position != null) {
                      Get.toNamed("/map", arguments: {"position": position});
                    }
                  }
                },
                icon: const Icon(Icons.map),
                label: const Text('Map'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
