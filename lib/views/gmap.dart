import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

    class GMap extends StatefulWidget {
      const GMap({Key? key}) : super(key: key);
      @override
      State<GMap> createState() => _GMapState();
    }
    class _GMapState extends State<GMap> {

      Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
      late GoogleMapController myController;

      @override
      Widget build(BuildContext context) {
        return GoogleMap(
          // mapType: MapType.satellite,
         onMapCreated: _onMapCreated,
          compassEnabled: true,
          // myLocationEnabled: true,
          // myLocationButtonEnabled: true,
          markers: markers.values.toSet(),
          initialCameraPosition: CameraPosition(
            target:LatLng(11.016844,76.955833),
            zoom: 10.0,

          ),

        );

      }
      void _onMapCreated(GoogleMapController controller) {
        myController = controller;

        final marker = Marker(
       // visible: false,
          markerId: MarkerId('place_name'),
          position: LatLng(11.016844,76.955833),
          // icon: BitmapDescriptor.,
          infoWindow: InfoWindow(
            // title: 'title',
            // snippet: 'address',
          ),
        );

        setState(() {
          markers[MarkerId('place_name')] = marker;
        });
      }
    }

