import 'package:latlong2/latlong.dart';

class MapUtils {
  static Distance _distance;

  static Distance get distance {
    if (_distance == null) {
      _distance = Distance(roundResult: false);
    }
    return _distance;
  }

  static double distanceTwoPoint(LatLng p1, LatLng p2) {
    return distance(p1, p2);
  }
}
