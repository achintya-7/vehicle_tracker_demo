import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class PlaceController extends GetxController {

  Rx<Placemark> place = Rx<Placemark>(Placemark());
  RxBool placeLoading = false.obs;

  Future<bool> handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: "Location services are disabled. Please enable the services");
      return false;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: "Location permissions are denied. Please enable the permissions");
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: "Location permissions are permanently denied, we cannot request permissions.");
      return false;
    }

    return true;
  }

  Future<LatLng?> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      return LatLng(position.latitude, position.longitude);
    } on Exception catch (e) {
      log(e.toString());
      Fluttertoast.showToast(msg: "Error getting current location");
      return null;
    }
  }

  getPlaceDetails(LatLng cord) async {
    placeLoading.toggle();
    place.value = (await placemarkFromCoordinates(cord.latitude, cord.longitude)).first;
    placeLoading.toggle();
  }
}
