import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/map_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final mapController = Get.find<MapController>();

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
                  bool permission = await mapController.handleLocationPermission();
                  if (permission) {
                    Get.toNamed("/map");
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
