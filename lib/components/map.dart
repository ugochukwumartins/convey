import 'dart:async';

import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class ConveyMap extends StatefulWidget {
  ConveyMap({Key? key}) : super(key: key);

  @override
  State<ConveyMap> createState() => _ConveyMapState();
}

class _ConveyMapState extends State<ConveyMap> {
  @override
  void initState() {
    getPolyPoint();
    getCurrentLocation();
    setCustomMakerIcon();
    super.initState();
  }

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationicon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentlocationIcon = BitmapDescriptor.defaultMarker;
  LocationData? currentlocation;

  void setCustomMakerIcon() {
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, trucks)
        .then((icon) {
      sourceIcon = icon;
    });
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, trucks)
        .then((icon) {
      destinationicon = icon;
    });
    BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, person)
        .then((icon) {
      currentlocationIcon = icon;
    });
  }

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        currentlocation = location;
      },
    );
    GoogleMapController googleMapController = await _controller.future;
    location.onLocationChanged.listen((newLocation) {
      currentlocation = newLocation;
      googleMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            zoom: 13.5,
            target: LatLng(
              newLocation.latitude!,
              newLocation.longitude!,
            ),
          ),
        ),
      );
      setState(() {});
    });
  }

  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);

  List<LatLng> polyLinecoordinate = [];

  void getPolyPoint() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      goolgle_api_key,
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng element) => polyLinecoordinate.add(
          LatLng(element.latitude, element.longitude),
        ),
      );
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return currentlocation == null
        ? Center(
            child: Text("loading"),
          )
        : GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(
                currentlocation!.latitude!,
                currentlocation!.longitude!,
              ),
              zoom: 13.5,
            ),
            polylines: {
              Polyline(
                  polylineId: PolylineId("route"),
                  points: polyLinecoordinate,
                  color: AppColors.blue,
                  width: 6)
            },
            markers: {
              Marker(
                markerId: MarkerId("currentLocation"),
                position: LatLng(
                  currentlocation!.latitude!,
                  currentlocation!.longitude!,
                ),
                icon: currentlocationIcon,
              ),
              Marker(
                markerId: MarkerId("source"),
                position: sourceLocation,
                icon: sourceIcon,
              ),
              Marker(
                markerId: MarkerId("destination"),
                position: destination,
                icon: destinationicon,
              ),
            },
            onMapCreated: (mapController) {
              _controller.complete(mapController);
            },
          );
  }
}
