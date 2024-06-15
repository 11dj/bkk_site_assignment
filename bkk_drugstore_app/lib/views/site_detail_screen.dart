import 'dart:async';

import 'package:bkk_drugstore_app/core/models/models.dart';
import 'package:bkk_drugstore_app/core/viewmodels/viewmodels.dart';
import 'package:bkk_drugstore_app/views/site_list_screen.dart';
import 'package:bkk_drugstore_app/views/widgets/site_card.dart';
import 'package:flutter/material.dart';
import 'package:bkk_drugstore_app/helpers/helpers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class SiteDetailScreen extends StatefulWidget {
  final SiteEntity? data;
  const SiteDetailScreen({super.key, this.data});

  @override
  State<SiteDetailScreen> createState() => _SiteDetailScreenState();
}

class _SiteDetailScreenState extends State<SiteDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> googleMapController = Completer<GoogleMapController>();
    SiteEntity data = widget.data!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          data.siteDesc ?? 'N/A',
          style: context.themeData.appBarText,
        ),
      ),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              AbsorbPointer(
                absorbing: true,
                child: GoogleMap(
                  myLocationButtonEnabled: false,
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(data.location!.coordinates.last, data.location!.coordinates.first),
                    zoom: 16,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    googleMapController.complete(controller);
                  },
                ),
              ),
              Center(
                  child: Image.asset(
                'assets/images/marker.png',
                width: 48,
                height: 48,
              )),
              Align(
                alignment: Alignment.topCenter,
                child: AddressCard(
                  address: data.siteAddress,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: Consumer<SiteViewModel>(builder: (context, SiteViewModel state, child) {
                    return SiteCard(
                      isNavigateMap: true,
                      data: data,
                    );
                  }),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  final String? address;
  const AddressCard({super.key, this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 16, 10, 0),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [context.appStyles.shadow1],
      ),
      height: 108,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'ที่อยู่',
            style: context.themeData.body14Bold.copyWith(color: Colors.grey.shade800),
          ),
          const Divider(),
          Text(
            address ?? 'N/A',
            style: context.themeData.body14.copyWith(color: Colors.grey.shade800),
          ),
        ],
      ),
    );
  }
}
