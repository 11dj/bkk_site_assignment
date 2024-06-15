import 'dart:math';

class DistanceHelper {
  double? calculateDistance(lat1, lon1, lat2, lon2) {
    if (lat2 == 0.0 && lon2 == 0.0) return null;
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 - c((lat2 - lat1) * p) / 2 + c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    var radiusOfEarth = 6371;
    return radiusOfEarth * 2 * asin(sqrt(a));
  }
}
