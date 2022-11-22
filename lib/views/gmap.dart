import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

    class GMap extends StatefulWidget {
      const GMap({Key? key}) : super(key: key);

      @override
      State<GMap> createState() => _GMapState();


    }



    class _GMapState extends State<GMap> {


      late GoogleMapController myController;
      final LatLng _center = const LatLng(45.521563, -122.677433);

      void _onGMapCreated(GoogleMapController controller) {
        myController = controller;

        
        Future<Position> getUserCurrentLocation() async {
          await Geolocator.requestPermission().then((value){
          }).onError((error, stackTrace) async {
            await Geolocator.requestPermission();
            print("ERROR"+error.toString());
          });
          return await Geolocator.getCurrentPosition();
        }

      }
      @override
      Widget build(BuildContext context) {
        return GoogleMap(
          // mapType: MapType.satellite,
          onMapCreated: _onGMapCreated,
          compassEnabled: true,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          //markers: LatLng.values.toSet(),
          initialCameraPosition: CameraPosition(
            target:LatLng(11.016844,76.955833),
            zoom: 10.0,

          ),

        );

      }
    }

