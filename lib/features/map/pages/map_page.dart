// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '../../home/controllers/map_controller.dart';
import '../widgets/map_markers.dart';
import '../widgets/place_details.dart';

class MapPage extends StatelessWidget {
  MapPage({super.key});

  final LatLng position = Get.arguments["position"];
  final PlaceController placeController = Get.find<PlaceController>();

  @override
  Widget build(BuildContext context) {
    placeController.getPlaceDetails(position);
    return SafeArea(
      child: Scaffold(
        body: FlutterMap(
          options: MapOptions(
            center: position,
            zoom: 13.0,
          ),
          nonRotatedChildren: [
            PlaceDetails(position: position, placeController: placeController),
            ConfirmButton(placeController: placeController)
          ],
          children: [
            TileLayer(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: const ['a', 'b', 'c'],
            ),
            Markers(position: position)
          ],
        ),
      ),
    );
  }
}
