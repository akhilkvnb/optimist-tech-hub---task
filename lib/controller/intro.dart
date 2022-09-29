import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logistics/model/intro.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'asset/WhatsApp_Image_2022-09-27_at_3.49.19_PM__1_-removebg-preview (1).png',
        'Accept a job',
        'Now you can order food any time  right from your mobile.'),
    OnboardingInfo(
        'asset/images__1_-removebg-preview.png',
        'Tracking Real time',
        'We are maintain safty and We keep clean while making food.'),
    OnboardingInfo(
        'asset/images__2_-removebg-preview.png',
        'Get On- Time Service',
        'Orders your favorite meals will be immediately deliver')
  ];
}
