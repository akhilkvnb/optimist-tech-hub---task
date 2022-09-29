import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistics/controller/intro.dart';
import 'package:logistics/view/Screen_login.dart';

class Indrouction extends StatelessWidget {
  Indrouction({Key? key}) : super(key: key);

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.selectedPageIndex,
                itemCount: controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        controller.onboardingPages[index].imageAsset,
                        width: MediaQuery.of(context).size.width * .6,
                        height: MediaQuery.of(context).size.height * .3,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 32),
                      Text(
                        controller.onboardingPages[index].title,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64.0),
                        child: Text(
                          controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  );
                }),
            Positioned(
              bottom: 100,
              left: 160,
              child: Row(
                children: List.generate(
                  controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: controller.selectedPageIndex.value == index
                            ? Colors.blue
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: 2,
              child: Obx(() => controller.selectedPageIndex.value == 2
                  ? Padding(
                      padding: const EdgeInsets.only(left: 19, right: 19),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal,
                        child: MaterialButton(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            Get.to(ScreenLogin());
                          },
                          child: const Text('Get Started',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  : const SizedBox()),
            )
          ],
        ),
      ),
    );
  }
}
