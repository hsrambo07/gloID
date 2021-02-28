import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gloid/bloc/navigation_bloc.dart';
import 'package:gloid/routes/routes..gr.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white30, //or set color with: Color(0xFF0000FF)
    ));
    final autoSizeGroup = AutoSizeGroup();
    final bloc = BlocProvider.of<NavigationBloc>(context);

    return BlocBuilder<NavigationBloc, int>(
        cubit: bloc,
        builder: (context, state) {
          return WillPopScope(
            onWillPop: bloc.onWillPop,
            child: Scaffold(
              backgroundColor: Color(0xFF0008C8),
              body: SafeArea(
                child: IndexedStack(
                  index: state,
                  children: List.generate(bloc.tabs.length, (index) {
                    final tab = bloc.tabs[index];
                    return TickerMode(
                      enabled: index == state,
                      child: Offstage(
                        offstage: index != state,
                        child: ExtendedNavigator(
                          initialRoute: tab.initialRoute,
                          name: tab.name,
                          router: AppRouter(),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //     begin: Alignment(0.16129770874977112, 0.8417090773582458),
                  //     end: Alignment(-0.8417090773582458, 0.7562713623046875),
                  //     colors: [
                  //       Color.fromRGBO(52, 107, 247, 1),
                  //       Color.fromRGBO(0, 7, 199, 1)
                  //     ]),
                  color: Color.fromRGBO(53, 107, 248, 0.4000000059604645),
                ),
                child: BottomNavigationBar(
                  unselectedItemColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  selectedItemColor: Color(0xFF5AF8BD),
                  type: BottomNavigationBarType.fixed,
                  elevation: 0.0,
                  onTap: bloc.add,
                  currentIndex: state,
                  items: bloc.tabs.map((tab) {
                    return BottomNavigationBarItem(
                      icon: tab.icon,
                      // icon: SvgPicture.asset("assets/${tab.icon}.svg",
                      //     semanticsLabel: 'BottomNavIcon'),
                      label: tab.name,
                    );
                  }).toList(),
                ),
              ),
            ),
          );
        });
  }
}
