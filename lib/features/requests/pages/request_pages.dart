import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:vehicle_tracker_demo/features/requests/widgets/request_item.dart';

class RequestPage extends StatelessWidget {
  RequestPage({super.key});

  final Placemark place = Get.arguments["place"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request Page"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const RequestItem(),
        itemCount: 4,
      ),
    );
  }
}
