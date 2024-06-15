import 'dart:async';

import 'package:bkk_drugstore_app/core/viewmodels/viewmodels.dart';
import 'package:bkk_drugstore_app/helpers/extensions/route_ext.dart';
import 'package:bkk_drugstore_app/views/site_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:bkk_drugstore_app/helpers/helpers.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

import 'widgets/search_textfield.dart';

class MapPinScreen extends StatefulWidget {
  const MapPinScreen({super.key});

  @override
  State<MapPinScreen> createState() => _MapPinScreenState();
}

class _MapPinScreenState extends State<MapPinScreen> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
  bool isLocationEnabled = false;
  LatLng? currentLatLng = const LatLng(13.813881369216276, 100.56029985291974);
  static const CameraPosition _centralLadprao = CameraPosition(
    target: LatLng(13.813881369216276, 100.56029985291974),
    zoom: 14.4746,
  );

  @override
  void initState() {
    _initialize();

    super.initState();
  }

  _initialize() async {
    await getCurrentLocation();
  }

  Future<void> getCurrentLocation() async {
    await _geolocatorPlatform.requestPermission();
    isLocationEnabled = await _geolocatorPlatform.isLocationServiceEnabled();
    setState(() {});
    if (isLocationEnabled) {
      final position = await _geolocatorPlatform.getCurrentPosition();

      currentLatLng = LatLng(position.latitude, position.longitude);
      setState(() => currentLatLng = currentLatLng);
      final GoogleMapController controller = await _controller.future;
      await controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: currentLatLng!,
        zoom: 14,
      )));
    } else {
      await _geolocatorPlatform.requestPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'เลือกที่อยู่ส่งด่วน',
          style: context.themeData.appBarText,
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              GoogleMap(
                  myLocationButtonEnabled: false,
                  mapType: MapType.normal,
                  initialCameraPosition: _centralLadprao,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  onCameraIdle: () async {
                    GoogleMapController googleMapController = await _controller.future;
                    LatLngBounds bounds = await googleMapController.getVisibleRegion();
                    final lat = (bounds.northeast.latitude + bounds.southwest.latitude) / 2;
                    final lng = (bounds.northeast.longitude + bounds.southwest.longitude) / 2;
                    setState(() => currentLatLng = LatLng(lat, lng));
                  }),
              Center(
                  child: Image.asset(
                'assets/images/marker.png',
                width: 48,
                height: 48,
              )),
              const Align(
                alignment: Alignment.topCenter,
                child: SearchTextfield(
                  borderWidth: 0,
                ),
              ),
            ],
          )),
          Container(
            width: double.infinity,
            color: Colors.white,
            height: 250,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 16, 10, 0),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [context.appStyles.shadow1],
                  ),
                  height: 124,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ที่อยู่* (ตำบล, อำเภอ, จังหวัด, รหัสไปรษณีย์)',
                        style: context.themeData.bodyBold,
                      ),
                      const Spacer(),
                      Container(
                        width: double.infinity,
                        height: 64,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFE7E7E7),
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(12.0),
                              child: const Icon(
                                Icons.pin_drop,
                                size: 24,
                                color: Colors.red,
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'ที่อยู่* (ตำบล, อำเภอ, จังหวัด, รหัสไปรษณีย์)',
                                style: context.themeData.body14,
                              ),
                            ),
                            GestureDetector(
                              onTap: getCurrentLocation,
                              child: Container(
                                margin: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.my_location,
                                  size: 24,
                                  color: context.appColors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () async {
                          await context.read<SiteViewModel>().setMyLocation(currentLatLng!);
                          await context.push(const SiteListScreen().pathName);
                        },
                        style: TextButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: context.appColors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: Text(
                          'ยืนยันตำแหน่ง',
                          style: context.themeData.body.copyWith(color: Colors.white),
                        ))),
                const SizedBox(
                  height: 28,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
