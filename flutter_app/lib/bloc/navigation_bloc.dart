import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gloid/models/nav_tab_model.dart';
import 'package:gloid/routes/routes..gr.dart';

class NavigationBloc extends Bloc<int, int> {
  NavigationBloc() : super(NavigationTabs.first);

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event;
  }

  final tabs = const <NavigationTab>[
    NavigationTab(
      name: 'Home',
      icon: Icon(Icons.home),
      initialRoute: Routes.homeScreen,
    ),
    NavigationTab(
      name: 'Super Features',
      icon: Icon(Icons.api),
      initialRoute: Routes.superFeaturesScreen,
    ),
    NavigationTab(
        name: "Identities",
        icon: Icon(Icons.folder_special),
        initialRoute: Routes.identitiesScreen),
    NavigationTab(
      name: 'Profile',
      icon: Icon(Icons.person),
      initialRoute: Routes.profileScreen,
    ),
  ];

  Future<bool> onWillPop() async {
    final currentNavigatorState = ExtendedNavigator.named(tabs[state].name);

    if (currentNavigatorState.canPop()) {
      currentNavigatorState.pop();
    } else {
      if (state == NavigationTabs.first) {
        return true;
      } else {
        add(NavigationTabs.first);
      }
    }

    return false;
  }
}

class NavigationTabs {
  /// Default constructor is private because this class will be only used for
  /// static fields and you should not instantiate it.
  NavigationTabs._();

  static const first = 0;
  static const second = 1;
  static const third = 2;
}
