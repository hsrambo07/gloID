// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../screens/detailed/authDetailScreen.dart';
import '../screens/detailed/blogPage.dart';
import '../screens/home/homePage.dart';
import '../screens/home/identitesPage.dart';
import '../screens/home/profilePage.dart';
import '../screens/home/root.dart';
import '../screens/home/superFeaturesPage.dart';

class Routes {
  static const String rootScreen = '/Root';
  static const String homeScreen = '/home-page';
  static const String superFeaturesScreen = '/super-features-page';
  static const String identitiesScreen = '/identities-page';
  static const String profileScreen = '/profile-page';
  static const String blogScreen = '/blog-page';
  static const String recentAuthScreen = '/recent-auth-detailed-page';
  static const all = <String>{
    rootScreen,
    homeScreen,
    superFeaturesScreen,
    identitiesScreen,
    profileScreen,
    blogScreen,
    recentAuthScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.rootScreen, page: Root),
    RouteDef(Routes.homeScreen, page: HomePage),
    RouteDef(Routes.superFeaturesScreen, page: SuperFeaturesPage),
    RouteDef(Routes.identitiesScreen, page: IdentitiesPage),
    RouteDef(Routes.profileScreen, page: ProfilePage),
    RouteDef(Routes.blogScreen, page: BlogPage),
    RouteDef(Routes.recentAuthScreen, page: RecentAuthDetailedPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Root: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => Root(),
        settings: data,
      );
    },
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    SuperFeaturesPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SuperFeaturesPage(),
        settings: data,
      );
    },
    IdentitiesPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => IdentitiesPage(),
        settings: data,
      );
    },
    ProfilePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfilePage(),
        settings: data,
      );
    },
    BlogPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => BlogPage(),
        settings: data,
      );
    },
    RecentAuthDetailedPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RecentAuthDetailedPage(),
        settings: data,
      );
    },
  };
}
