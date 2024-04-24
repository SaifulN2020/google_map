import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapApi extends StatefulWidget {
  const GoogleMapApi({Key? key}) : super(key: key);

  @override
  State<GoogleMapApi> createState() => _GoogleMapApiState();
}

class _GoogleMapApiState extends State<GoogleMapApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Google map",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(24.2555, 25.235),
        ),
        onTap: (LatLng latLng) {
          print("Taped on map$latLng");
        },
        circles: {
          const Circle(
            circleId: CircleId("saiful-shop"),
          ),
          const Circle(circleId: CircleId("new shop"))
        },
        polygons: {
          const Polygon(polygonId: PolygonId("My road"),
          points: [
              LatLng(24.258213792579546, 25.236462727189064),
              LatLng(24.25386705814166, 25.235959477722645),
              LatLng(24.25426566782533, 25.233727879822254),
              LatLng(24.25849134272725, 25.23340802639723),

          ]),

        },
      ),
    );
  }
}
