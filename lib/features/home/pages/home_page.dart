import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/map_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final placeController = Get.find<PlaceController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page, Build in Process"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // * TITLE
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Click on the buttons to navigate to the pages and check them out!",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              // * MAP
              FilledButton.tonalIcon(
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

              // * REQUEST
              FilledButton.tonalIcon(
                onPressed: () => Get.toNamed("/request"),
                icon: const Icon(Icons.request_page),
                label: const Text('Request'),
              ),

              // * STATUS
              FilledButton.tonalIcon(
                onPressed: () => Get.toNamed("/status"),
                icon: const Icon(Icons.timeline),
                label: const Text('Status'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
