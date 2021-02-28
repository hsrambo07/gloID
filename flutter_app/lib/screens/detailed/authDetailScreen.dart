import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecentAuthDetailedPage extends StatefulWidget {
  @override
  _RecentAuthDetailedPageState createState() => _RecentAuthDetailedPageState();
}

class _RecentAuthDetailedPageState extends State<RecentAuthDetailedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0008C8),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          header(),
                          orgNameAndSets(),
                          detailsUsedForAuthentication(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container();
  }

  Widget orgNameAndSets() {
    return Container(
      child: Column(
        children: [epicTextBox("lmao", "ggg")],
      ),
    );
  }

  Widget epicTextBox(String heading, String subText) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xff5af8bd),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text(
            heading,
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            subText,
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xff5af8bd),
            ),
          )
        ],
      ),
    );
  }

  Widget detailsUsedForAuthentication() {}
}
