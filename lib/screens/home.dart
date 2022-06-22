import 'package:flutter/material.dart';

import 'package:dejavus_designs/constant.dart';

import '../components/avi.dart';
import '../components/bottom_navbar.dart';
import '../components/categories_tab.dart';
import '../components/category.dart';
import '../components/search.dart';
import '../components/trending.dart';

class GameHome extends StatelessWidget {
  const GameHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(gradient: bgGradient),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 36, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BuildAvi(),
                    SizedBox(height: 20),
                    SearchBar(),
                    SizedBox(height: 20),
                    Text('Pick a Battle!', style: header1),
                    SizedBox(height: 20),
                    CategoriesTab(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    BuildCategory(
                      imagePath: 'lib/assets/images/1.png',
                    ),
                    BuildCategory(
                      imagePath: 'lib/assets/images/2.png',
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(16, 42, 16, 16),
                  child: Text(
                    'Trending',
                    style: header2.copyWith(color: Colors.white),
                  )),
              const BuildTrending(
                startLeft: true,
                title: 'Battlefield',
                categories: ['FPS', 'Adventure', 'Action'],
                stars: '4.9',
                views: '559k',
                imagePath: 'lib/assets/images/battlefield.png',
              ),
              const BuildTrending(
                startLeft: false,
                title: 'Ghost Recon',
                categories: ['SPS', 'Arcade', 'Action'],
                stars: '4.9',
                views: '535k',
                imagePath: 'lib/assets/images/ghost.png',
              ),
              const BuildTrending(
                startLeft: true,
                title: 'Splinter Cell\nConviction',
                categories: ['FPS', 'Adventure', 'Action'],
                stars: '4.9',
                views: '535k',
                imagePath: 'lib/assets/images/splinter.png',
              )
            ]),
          ),
          bottomNavigationBar: const BottomNavBar(),
        ));
  }
}
