import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../theme/home_res.dart';
import '../home_state.dart';

class StatusWidget extends StatelessWidget {
  final DataStatus status;
  final void Function() onRetryPressed;
  final void Function() onRoutePressed;
  final IconData routeIcon;

  const StatusWidget(
    this.status, {
    Key key,
    @required this.onRetryPressed,
    @required this.onRoutePressed,
    @required this.routeIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(HomeRes.statusPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: HomeRes.statusSize,
            padding: EdgeInsets.zero,
            icon: Icon(
              routeIcon,
              color: HomeRes.routingColor,
            ),
            onPressed: onRoutePressed,
          ),
          SizedBox(
              height: HomeRes.statusSize,
              width: HomeRes.statusSize,
              child: Center(child: _buildStatus())),
        ],
      ),
    );
  }

  Widget _buildStatus() {
    return status.when(
      loading: () => const CircularProgressIndicator(),
      done: () => const Icon(
        HomeRes.doneIcon,
        color: HomeRes.doneColor,
      ),
      error: () => IconButton(
        iconSize: HomeRes.statusSize,
        onPressed: onRetryPressed,
        padding: EdgeInsets.zero,
        icon: const Icon(
          HomeRes.retryIcon,
          color: HomeRes.retryColor,
        ),
      ),
    );
  }
}
