// import 'package:origami_app/lib.dart';

import 'package:bkk_drugstore_app/api/site/site_api.dart';
import 'package:bkk_drugstore_app/core/models/models.dart';
import 'package:bkk_drugstore_app/core/models/site/site_model.dart';
import 'package:bkk_drugstore_app/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SiteViewModel with ChangeNotifier {
  final DistanceHelper _distanceHelper = DistanceHelper();
  final SiteAPI _siteAPI = SiteAPI();

  SiteEntity selectedSite = const SiteEntity();
  SiteModel siteModel = const SiteModel();
  LatLng? myLocation;

  List<SiteEntity> get siteList => siteModel.sites;

  Future getSiteList() async {
    final List<SiteEntity> data = await _siteAPI.getSiteList();
    final dataWithDistance = data.map((SiteEntity el) {
      final distance = _distanceHelper.calculateDistance(
          myLocation!.latitude, myLocation!.longitude, el.location!.coordinates.last, el.location!.coordinates.first);
      return el.copyWith(distance: distance);
    }).toList();
    siteModel = siteModel.copyWith(sites: dataWithDistance);
    notifyListeners();
  }

  Future setMyLocation(LatLng? newLocation) async {
    myLocation = newLocation;
    notifyListeners();
  }
}
