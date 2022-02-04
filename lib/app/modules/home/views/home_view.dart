// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            width: Get.width,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assets/images/avatar-image.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Color(0xFF4ED442),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo, Hanif",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icons/award-icon.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "+1600 ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFCD034),
                            ),
                          ),
                          Text(
                            "Points",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFFFCD034),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: Stack(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          "assets/icons/notification-icon.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 35),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(width: 20),
                StoryItem(
                  image: "assets/images/profile-image-1.jpg",
                ),
                StoryItem(
                  image: "assets/images/profile-image-2.jpg",
                ),
                StoryItem(
                  image: "assets/images/profile-image-3.jpg",
                ),
                StoryItem(
                  image: "assets/images/profile-image-4.jpg",
                ),
                StoryItem(
                  image: "assets/images/profile-image-5.jpg",
                ),
                StoryItem(
                  image: "assets/images/profile-image-6.jpg",
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Upcoming ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "course of this week",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SizedBox(width: 20),
                CategoryItem(
                  title: "All",
                  status: true,
                ),
                CategoryItem(
                  title: "UI/UX",
                  status: false,
                ),
                CategoryItem(
                  title: "Illustration",
                  status: false,
                ),
                CategoryItem(
                  title: "3D Animation",
                  status: false,
                ),
                CategoryItem(
                  title: "Web Developer",
                  status: false,
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            child: Column(
              children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        controller.current.value = index;
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => controller.carouselController
                          .animateToPage(entry.key),
                      //   child: Obx(
                      //     () => Container(
                      //       width: 12.0,
                      //       height: 12.0,
                      //       margin: EdgeInsets.symmetric(
                      //         vertical: 8.0,
                      //         horizontal: 4.0,
                      //       ),
                      //       decoration: BoxDecoration(
                      //           shape: BoxShape.circle,
                      //           color: (Theme.of(context).brightness ==
                      //                       Brightness.dark
                      //                   ? Colors.white
                      //                   : Colors.black)
                      //               .withOpacity(
                      //                   controller.current.value == entry.key
                      //                       ? 0.9
                      //                       : 0.4)),
                      //     ),
                      //   ),
                      // );
                      child: Obx(
                        () => Container(
                          width: 20,
                          height: 10,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: controller.current.value == entry.key
                                ? Colors.red.shade400
                                : Colors.grey.shade300,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.red[300]!,
              hoverColor: Colors.red[100]!,
              gap: 8,
              activeColor: Colors.red[400],
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.grey[400],
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.search_outlined,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.mail_outlined,
                  text: 'Message',
                ),
                GButton(
                  icon: Icons.person_outlined,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              // onTabChange: (index) {
              //   setState(() {
              //     _selectedIndex = index;
              //   });
              // },
            ),
          ),
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.status,
  }) : super(key: key);

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: ElevatedButton(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: status == true ? Colors.white : Colors.black54,
          ),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: status == true ? Colors.red.shade400 : Colors.grey.shade200,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 85,
      width: 85,
      child: Stack(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.red.shade400,
                width: 5,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(5),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: Color(0xFF4DC9D1),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: Image.asset("assets/icons/video-icon.png"),
            ),
          ),
        ],
      ),
    );
  }
}
