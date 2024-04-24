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
            LatLng(29.177776305778682, 23.485178388655186),
            LatLng(27.81555559487373, 25.75435470789671),
            LatLng(27.695353113553033, 23.764830194413662),

          ]),
        },
        polylines: {
          const Polyline(
              polylineId: PolylineId("hello saiful"),
              color: Colors.green,
              points: [
                LatLng(22.878703253751713, 24.8275076597929),
                LatLng(23.7957375042351, 27.679958157241344)
              ]),
        },
      ),
    );
  }
}
