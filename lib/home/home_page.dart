import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../providers/injector.dart';
import '../theme/home_res.dart';
import 'home_bloc.dart';
import 'home_state.dart';
import 'wigets/chart_widget.dart';
import 'wigets/map_widget.dart';
import 'wigets/status_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(HomeRes.title),
      ),
      body: BlocProvider(
        create: (context) => HomeBloc(inject()),
        child: BlocBuilder<HomeBloc, HomeState>(builder: _buildHome),
      ),
    );
  }

  Widget _buildHome(BuildContext context, HomeState state) {
    if (state.isShowingMap) {
      return Stack(
        children: [
          MapWidget(state.positions),
          _buildStatusWidget(context, state),
        ],
      );
    } else {
      return Column(
        children: [
          _buildStatusWidget(context, state),
          Expanded(child: ChartWidget(state)),
        ],
      );
    }
  }

  StatusWidget _buildStatusWidget(BuildContext context, HomeState state) {
    bool showMap = state.isShowingMap;
    return StatusWidget(
      state.status,
      onRetryPressed: () => context.read<HomeBloc>().retry(),
      onRoutePressed: () {
        HomeBloc bloc = context.read<HomeBloc>();
        if (showMap) {
          bloc.goToChart();
        } else {
          bloc.goToMap();
        }
      },
      routeIcon: showMap ? HomeRes.chartIcon : HomeRes.mapIcon,
    );
  }
}
