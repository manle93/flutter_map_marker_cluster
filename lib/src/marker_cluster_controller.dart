import 'dart:async';

import 'package:flutter_map/flutter_map.dart';

class MarkerClusterController {
  StreamController<MarkerClusterEvent> streamController;

  void showNextMarker(Marker marker) {
    streamController?.add(MarkerClusterEvent.showNextMarker(marker));
  }

  void showPreviousMarker(Marker marker) {
    streamController?.add(MarkerClusterEvent.showPreviousMarker(marker));
  }
}

class MarkerClusterEvent {
  final Marker marker;
  final MarkerClusterEventActions action;

  MarkerClusterEvent.showNextMarker(this.marker)
      : action = MarkerClusterEventActions.showNextMarker;

  MarkerClusterEvent.showPreviousMarker(this.marker)
      : action = MarkerClusterEventActions.showPreviousMarker;
}

enum MarkerClusterEventActions {
  showNextMarker,
  showPreviousMarker,
}
