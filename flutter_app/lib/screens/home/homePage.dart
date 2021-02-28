import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gloid/routes/routes..gr.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("assets/Home.png"),
          //   fit: BoxFit.fill,
          // ),
          ),
      child: Stack(
        children: [
          Column(
            children: [
              // greetingHeader(),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 16.0),
              //   child: expiryNotification("passport"),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              //   child: carouselView(),
              // ),
              // identitiesAdded(),
              // recentAuthentication(),
              // selfHelpLibrary(),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          greetingHeader(),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: expiryNotification("passport"),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 16.0),
                            child: carouselView(),
                          ),
                          identitiesAdded(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: recentAuthentication(),
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 16.0),
                              child: selfHelpLibrary()),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset("assets/webMask.png"),
          ),
        ],
      ),
    );
  }

  Widget greetingHeader() {
    return Container(
      padding: EdgeInsets.only(top: 32, bottom: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey Harsh,",
                  style: TextStyle(fontSize: 32, fontFamily: "Playfair"),
                ),
                Text(
                  "27th Feb 2021",
                  style: TextStyle(fontSize: 16, fontFamily: "Playfair"),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(right: 32.0),
            child: Image.asset("assets/information.png"),
          ),
          Container(
            padding: EdgeInsets.only(right: 32.0),
            child: Image.asset("assets/scanner.png"),
          ),
        ],
      ),
    );
  }

  Widget expiryNotification(String document) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xff5af8bd),
          width: 1,
        ),
        // color: Color(0x33ffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Your $document expiry is reaching soon",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF5AF8BD),
                fontSize: 14.0),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Tap to know more details",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  Widget carouselView() {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 1.8,
          enlargeCenterPage: true,
        ),
        items: imgList
            .map(
                //   (item) => Container(
                //     decoration: BoxDecoration(
                //       // image: DecorationImage(
                //       //   image: AssetImage('assets/assets/alucard.jpg'),
                //       //   fit: BoxFit.fill,
                //       // ),
                //       color: Colors.white,
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(32.0),
                //       ),
                //     ),
                //     child: Center(
                //         child: ClipRRect(
                //       borderRadius: BorderRadius.circular(8.0),
                //       child: Image.network(item, fit: BoxFit.cover),
                //     )),
                //   ),
                // )
                (item) => Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(item, fit: BoxFit.cover),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 30,
                          child: Text(
                            "Point on QR to get your bill",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontFamily: "Playfair"),
                          ),
                        ),
                      ],
                    ))
            .toList(),
      ),
    );
  }

  Widget identitiesAdded() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            "Identities",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          height: 100,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Container(
                    child: Image.asset("assets/aadharcard.png"),
                  )),
        ),
      ],
    );
  }

  Widget recentAuthentication() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            "Recent Authentications",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 2,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: InkWell(
                      onTap: () => {
                        ExtendedNavigator.root.push(Routes.recentAuthScreen)
                      },
                      child: Container(
                        height: 110,
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xff5af8bd),
                            width: 1,
                          ),
                          color: Color(0x33ffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text("Authenticated at:"),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "AIMS organisation",
                                  style: TextStyle(
                                    color: Color(0xff5af8bd),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Method:"),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "QR Scanning",
                                  style: TextStyle(
                                    color: Color(0xff5af8bd),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Location:"),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Delhi",
                                  style: TextStyle(
                                    color: Color(0xff5af8bd),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "1hr ago",
                                  style: TextStyle(
                                    color: Color(0xff5af8bd),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
        ),
      ],
    );
  }

  Widget selfHelpLibrary() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      padding: EdgeInsets.all(16.0),
      height: 95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.home,
              size: 24,
              color: Color(0xff5af8bd),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Self Help Library",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.black),
          ),
          Text(
            "Form instructions and policies all at one place",
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
