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
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: SizedBox(
            height: 80,
            width: double.infinity,
            child: Obx(() {
              if (placeController.placeLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Sublocality: ${placeController.place.value.subLocality} \nLocality: ${placeController.place.value.locality} \nCountry: ${placeController.place.value.country} ",
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