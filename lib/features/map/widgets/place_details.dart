// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '../../home/controllers/map_controller.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({
    Key? key,
    required this.position,
    required this.placeController,
  }) : super(key: key);

  final LatLng position;
  final PlaceController placeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Obx(() {
              if (placeController.placeLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Sublocality: ${placeController.place.value.subLocality} \nLocality: ${placeController.place.value.locality} \nPinCode: ${placeController.place.value.postalCode} \nCountry: ${placeController.place.value.country} ",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    Key? key,
    required this.placeController,
  }) : super(key: key);

  final PlaceController placeController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FilledButton.tonalIcon(
          icon: const Icon(Icons.check, size: 30),
          onPressed: () {
            Get.toNamed("/request", arguments: {"place": placeController.place.value});
          },
          label: const Text("Confirm", style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
