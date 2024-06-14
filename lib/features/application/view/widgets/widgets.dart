import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_flutter_riverpod/common/utils/app_colors.dart';
import 'package:ulearning_flutter_riverpod/common/utils/image_res.dart';
import 'package:ulearning_flutter_riverpod/common/widgets/image_widgets.dart';

import '../../../home/view/home.dart';

var bottomTabs = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
      icon: _bottomContainer(),
      activeIcon:_bottomContainer(color: AppColors.primaryElement),
      backgroundColor: AppColors.primaryBackground,
      label: "Home"),
  BottomNavigationBarItem(
      icon: _bottomContainer(imagePath: ImageRes.search),
      activeIcon:_bottomContainer(imagePath: ImageRes.search,color: AppColors.primaryElement),
      backgroundColor: AppColors.primaryBackground,
      label: "Search"),
  BottomNavigationBarItem(
      icon: _bottomContainer(imagePath: ImageRes.play),
      activeIcon:_bottomContainer(imagePath: ImageRes.play,color: AppColors.primaryElement),
      backgroundColor: AppColors.primaryBackground,
      label: "Play"),
  BottomNavigationBarItem(
      icon: _bottomContainer(imagePath: ImageRes.message),
      activeIcon:_bottomContainer(imagePath: ImageRes.message,color: AppColors.primaryElement),
      backgroundColor: AppColors.primaryBackground,
      label: "Message"),
  BottomNavigationBarItem(
      icon: _bottomContainer(imagePath: "assets/icons/person2.png"),
      activeIcon:_bottomContainer(imagePath: "assets/icons/person2.png",color: AppColors.primaryElement),
      backgroundColor: AppColors.primaryBackground,
      label: "Profile"),

];

Widget _bottomContainer(
    {String imagePath =ImageRes.home,
    Color color = AppColors.primaryFourthElementText}) {
  return SizedBox(
    width: 15.w,
    height: 15.w,
    child: appImageWithColor(
        imagePath: imagePath,
        color: color),
  );
}

Widget appScreens({int index=0}){
  List<Widget> screens=[
    const Home(),
    Center(child: appImage(imagePath: ImageRes.search, width: 250, height: 250), ),
    Center(child: appImage(imagePath: ImageRes.play, width: 250, height: 250),),
    Center(child: appImage(imagePath: ImageRes.message, width: 250, height: 250),),
    Center(child: appImage(imagePath: ImageRes.profile, width: 250, height: 250),),
  ];
  return screens[index];
}

