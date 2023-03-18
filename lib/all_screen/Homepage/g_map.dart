import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/all_screen/Homepage/homepage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GooglMap extends StatefulWidget {
  const GooglMap({Key? key}) : super(key: key);

  @override
  State<GooglMap> createState() => _GooglMapState();
}

class _GooglMapState extends State<GooglMap> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

      static const LatLng sourceLocation =LatLng(22.36055395381113, 91.8110489834);




  @override
  void initState() {
    super.initState();
  }
  late GoogleMapController maplocation;
  Map<String,Marker>_marker = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xffdaf0e4),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
            icon: Icon(Icons.arrow_back),color: Color(0xff2C3E50),),

        title: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,

                fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search,color: Color(0xff9CA3AF),),
                hintText: 'Scearch',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 1, color: Color(0xfffcfeff)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  borderSide: BorderSide(
                      width: 1, color: Color(0xffffffff)), //<-- SEE HERE
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              width: 50,
              child: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage('assets/homepage_icon/shawon.JPG'),
              )
            ),
          ),
        ],
      ),
      body:
      GoogleMap(
        initialCameraPosition: CameraPosition(
          target:sourceLocation,
          zoom: 10,
        ),
        onMapCreated: (control){
maplocation = control;
addmarker('test',sourceLocation);
        },
        markers: _marker.values.toSet(),
      ),
    );
  }
 addmarker(String id,LatLng location)async{
    var markerplace = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'assets/homepage_icon/katsu.png');

    var marker = Marker(markerId: MarkerId(id),
    position: location,
      icon: markerplace,
    );
    _marker[id] = marker;
    setState(() {});
 }

}
