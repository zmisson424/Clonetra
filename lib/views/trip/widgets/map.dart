import 'package:clonetra/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class ClonetraMap extends StatefulWidget {

  _ClonetraMapState createState()=> _ClonetraMapState();
}

class _ClonetraMapState extends State<ClonetraMap> {

  CameraPosition? _initialPosition;

  Location? _location;

  @override
  void initState() {
    _setIntialLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: _initialPosition != null ? Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              initialCameraPosition: _initialPosition!,
              mapType: MapType.normal,
              zoomControlsEnabled: false,
              myLocationButtonEnabled: false,
              myLocationEnabled: true,
            ),
          ),
          Positioned(
            top: 12,
            left: 12,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => print("Handle Favorite Button"),
              child: Material(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                color: ClonetraColors.white,
                child: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.favorite_outline,
                    color: ClonetraColors.darkGray,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => print("Handle Current Location"),
              child: Material(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                color: ClonetraColors.white,
                child: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.location_searching,
                    color: ClonetraColors.darkGray,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 12,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => print("Handle Route Button"),
              child: Material(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                color: ClonetraColors.buttonBlue,
                child: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: ClonetraColors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ) : Container(),
    );
  }

  void _setIntialLocation() async {
    try{
      _location = new Location();
      bool _locationEnabled = await _location?.serviceEnabled() ?? false;
      if(!_locationEnabled){
        throw "Location Disabled";
      }

      PermissionStatus _permission = await _location!.hasPermission();
      if(_permission == PermissionStatus.denied){
        _permission = await _location!.requestPermission();
        if(_permission != PermissionStatus.granted){
          throw "Location Permission Denied";
        }
      }

      LocationData _locationData = await _location!.getLocation();
      _initialPosition = new CameraPosition(
        target: LatLng(
          _locationData.latitude!, 
          _locationData.longitude!
        ),
        zoom: 17.25,
      );
      setState(() {});
    }
    catch(e){
      print("Error setting location");
      _initialPosition = new CameraPosition(
        target: LatLng(37.42796133580664, -122.085749655962),
        zoom: 20,
      );
      setState(() {});
    }
  }
}