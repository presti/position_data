import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../data/position.dart';
import '../../theme/home_res.dart';

class MapWidget extends StatefulWidget {
  final List<Position> positions;

  const MapWidget(this.positions, {Key key}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  static const String _polylineId = 'id';

  final Completer<GoogleMapController> _completer = Completer();
  GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        _controller = controller;
        _completer.complete();
      },
      initialCameraPosition: CameraPosition(
        target: _initialPosition(),
        zoom: HomeRes.mapZoom,
      ),
      polylines: {
        Polyline(
          color: HomeRes.mapRouteColor,
          width: HomeRes.mapRoutingWidth,
          polylineId: PolylineId(_polylineId),
          points: widget.positions.map(_pointFrom).toList(),
        ),
      },
    );
  }

  LatLng _initialPosition() {
    LatLng pos;
    if (widget.positions.isNotEmpty) {
      pos = _pointFrom(widget.positions.last);
    } else {
      pos = const LatLng(0, 0);
    }
    // If we already have a map, this method is called but the camera
    // is not moved. That is why we manually animate it.
    if (_completer.isCompleted) {
      // This will always animate the camera no matter where it
      // currently is. It would be better to for example directly move
      // it if we are far from the new position.
      _controller.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: pos, zoom: HomeRes.mapZoom)));
    }
    return pos;
  }

  LatLng _pointFrom(Position position) => LatLng(position.lat, position.lon);

  @override
  void dispose() {
    if (_completer.isCompleted) _controller.dispose();
    // If the controller was not yet created, then it will not be
    // disposed of at this point.
    super.dispose();
  }
}
