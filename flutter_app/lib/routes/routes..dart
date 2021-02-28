import 'package:auto_route/auto_route_annotations.dart';
import 'package:gloid/screens/detailed/authDetailScreen.dart';
import 'package:gloid/screens/detailed/blogPage.dart';
import 'package:gloid/screens/home/homePage.dart';
import 'package:gloid/screens/home/identitesPage.dart';
import 'package:gloid/screens/home/profilePage.dart';
import 'package:gloid/screens/home/root.dart';
import 'package:gloid/screens/home/superFeaturesPage.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: Root, name: "rootScreen"),
  AdaptiveRoute(page: HomePage, name: "homeScreen"),
  AdaptiveRoute(page: SuperFeaturesPage, name: "superFeaturesScreen"),
  AdaptiveRoute(page: IdentitiesPage, name: "identitiesScreen"),
  AdaptiveRoute(page: ProfilePage, name: "profileScreen"),
  AdaptiveRoute(page: BlogPage, name: "blogScreen"),
  AdaptiveRoute(page: RecentAuthDetailedPage, name: "recentAuthScreen"),
])
class $AppRouter {}
