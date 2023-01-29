import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucky_phet_app/app_styles.dart';
import 'package:lucky_phet_app/pet_detail.dart';
import 'package:lucky_phet_app/sixe_config.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIdex = 0;
  void _onItemTapped(int index) {
    _selectedIdex = index;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body: homeScreen(),
      //   bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: kWhite,
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: _selectedIdex == 0
      //             ? SvgPicture.asset('assets/images/home_selected.svg')
      //             : SvgPicture.asset('assets/images/home_unselected.svg'),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //           icon: _selectedIdex == 0
      //               ? SvgPicture.asset('assets/images/cart_selected.svg')
      //               : SvgPicture.asset('assets/images/cart_unselected.svg'),
      //           label: 'Cart'),
      //       BottomNavigationBarItem(
      //           icon: _selectedIdex == 0
      //               ? SvgPicture.asset('assets/images/profile_selected.svg')
      //               : SvgPicture.asset('assets/images/profile_unselected.svg'),
      //           label: 'Profile')
      //     ],
      //     currentIndex: _selectedIdex,
      //     onTap: _onItemTapped,
      //   ),
      // ),

      home: petDetail(),
    );
  }
}

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cats = [
      'cat1.jpg',
      'cat2.jpg',
      'cat4.jpg',
      'cat5.jpg',
    ];
    List<String> cats_name_icon = [
      'merry',
      'nini',
      'mimi',
      'kiki',
    ];
    List<String> cats_name = [
      'happpy',
      'lovely',
      'prety',
      'sandy',
    ];
    List<String> dogs = [
      'dog1.jpg',
      'dog2.jpg',
      'dog3.jpg',
      'dog4.jpg',
      'dog5.jpg'
    ];
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/nar_icon.svg',
                width: 18,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: kRed,
                backgroundImage: NetworkImage(
                    'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png'),
              )
            ],
          ),
          SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 200,
            child: Stack(children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/cat2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: SizeConfig.blockSizeHorizontal! * 38,
                top: 0,
                bottom: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hello",
                          style: kSourceSansProLight.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 7,
                              color: kBlack),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Smart",
                          style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 7,
                              color: kBlack),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "small farm app make first app by baby learning flutter",
                      style: kSourceSansProRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 4,
                          color: kRed),
                    )
                  ],
                ),
              )
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Cats",
              style: kSourceSansProBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 6, color: kBlack),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //cats/////////////////////////////////////////////////
          //////////////////////////////////////////////////////
          SizedBox(
            height: 169,
            child: ListView.builder(
              itemCount: cats.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 169,
                  width: 150,
                  margin: EdgeInsets.only(
                      left: index == 0 ? 10 : 3,
                      right: index == 10 - 1 ? 10 : 2),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderadiusList),
                    color: kRed,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 18,
                          offset: Offset(0, 3),
                          color: kBoxShadowColor.withOpacity(
                            0.18,
                          ),
                          spreadRadius: 0),
                    ],
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 80,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(kBorderadiusList),
                        child: Image.asset(
                          'assets/images/${cats[index]}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          height: SizeConfig.blockSizeVertical! * 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: kLightOrange),
                          child: Text(
                            cats_name[index],
                            style: kSourceSansProBold.copyWith(
                                fontSize:
                                    SizeConfig.blockSizeHorizontal! * 2.5),
                          ),
                        ),
                        Icon(
                          Icons.favorite_outline,
                          color: kWhite,
                          size: 16,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          cats_name_icon[index],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kGrey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '17 jun 2022',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kGrey),
                        )
                      ],
                    )
                  ]),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Dogs",
              style: kSourceSansProBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 6, color: kBlack),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //dogs
          ///////////////////////////////////////////////////////////
          SizedBox(
            height: 169,
            child: ListView.builder(
                itemCount: dogs.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 169,
                    width: 150,
                    margin: EdgeInsets.only(
                        left: index == 0 ? 10 : 3,
                        right: index == 10 - 1 ? 10 : 2),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderadiusList),
                      color: kRed,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 18,
                            offset: Offset(0, 3),
                            color: kBoxShadowColor.withOpacity(
                              0.18,
                            ),
                            spreadRadius: 0),
                      ],
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 80,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(kBorderadiusList),
                          child: Image.asset(
                            'assets/images/${dogs[index]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 7),
                            height: SizeConfig.blockSizeVertical! * 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.5),
                                color: kLightOrange),
                            child: Text(
                              "TITI",
                              style: kSourceSansProBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5),
                            ),
                          ),
                          Icon(
                            Icons.favorite_outline,
                            color: kWhite,
                            size: 16,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            'Mary',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                color: kGrey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '17 jun 2022',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                color: kGrey),
                          )
                        ],
                      )
                    ]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
