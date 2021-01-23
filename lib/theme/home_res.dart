import 'package:flutter/material.dart';

import 'res_color.dart';
import 'res_dimen.dart';
import 'res_image.dart';
import 'res_strings.dart';

abstract class HomeRes {
  // Strings
  static const String title = ResString.homeTitle;

  // Values
  static const String transitionFormat = 'dd/MM/yy hh:mm:ss';
  static const String timeFormat = 'hh:mm:ss';
  static const String xAccLabel = 'x';
  static const String yAccLabel = 'y';
  static const String zAccLabel = 'z';
  static const double mapZoom = 14;
  static const int mapRoutingWidth = 12;

  // Dimens
  static const double statusSize = ResDimen.statusSize;
  static const double statusPadding = ResDimen.statusPadding;

  // Icons
  static const IconData doneIcon = ResImage.done;
  static const IconData retryIcon = ResImage.retry;
  static const IconData mapIcon = ResImage.map;
  static const IconData chartIcon = ResImage.chart;

  // Colors
  static const Color doneColor = ResColor.done;
  static const Color retryColor = ResColor.retry;
  static const Color routingColor = ResColor.routing;
  static const Color mapRouteColor = ResColor.mapRoute;
}
