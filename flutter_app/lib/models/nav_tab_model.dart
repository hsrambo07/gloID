import 'package:flutter/widgets.dart';

@immutable
class NavigationTab {
  const NavigationTab({
    this.name,
    this.icon,
    this.initialRoute,
  });

  final String name;
  final Widget icon;
  final String initialRoute;
}
