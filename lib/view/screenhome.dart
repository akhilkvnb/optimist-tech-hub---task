import 'package:flutter/material.dart';
import 'package:logistics/view/customscreen.dart';
import 'package:logistics/view/tabbar.dart';
import 'package:logistics/widgets/googlemap.dart';
import 'package:logistics/widgets/grid.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          actions: [
            Switch(value: true, onChanged: (value1) {}),
          ],
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          )),
      body: ListView(
        children: [
          Container(
            color: Colors.teal,
            height: 50,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Icon(Icons.message),
                ),
                SizedBox(width: 10),
                Text('You have new pickup request')
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 8, bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Today's Task",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 15),
                  child: Grid(
                      height: double.infinity,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 17, 52, 75),
                      test1: "Today's Pickup",
                      test2: "Jobs",
                      num: "5"),
                )),
                SizedBox(
                  width: 180,
                  child: Column(
                    children: [
                      Expanded(
                          child: Grid(
                              height: double.infinity,
                              width: double.infinity,
                              color: const Color.fromARGB(255, 13, 151, 144),
                              test1: "Assigned Delivery",
                              test2: "Jobs",
                              num: "12")),
                      Expanded(
                          child: Grid(
                              height: double.infinity,
                              width: double.infinity,
                              color: const Color.fromARGB(255, 33, 243, 233),
                              test1: "Today's",
                              test2: "Revenue",
                              num: "5"))
                    ],
                  ),
                ),
                const SizedBox(width: 10)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Google(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ScreenCustom()));
                        },
                        child: Image.asset('asset/delivery-man.png',
                            width: 30, height: 30, color: Colors.redAccent),
                      ),
                      const Text('Pickups')
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ScreenCustom()));
                        },
                        child: Image.asset('asset/delivered.png',
                            height: 30, width: 30, color: Colors.green),
                      ),
                      const Text('Devivery')
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ScreenCustom()));
                          },
                          child: Image.asset('asset/money.png',
                              height: 30, width: 30)),
                      const Text('Revenue')
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ScreenCustom()));
                          },
                          child: Image.asset(
                            'asset/report.png',
                            height: 30,
                            width: 30,
                            color: Colors.red,
                          )),
                      const Text('Report')
                    ],
                  ),
                ],
              ),
            ),
          ),
          DefaultTabController(
            length: 4,
            child: Column(
              children: [
                TabBar(
                  indicator: const BoxDecoration(
                    color: Color.fromARGB(255, 114, 213, 165),
                  ),
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(fontSize: 10),
                  tabs: [
                    Tab(
                      icon:
                          Image.asset('asset/menu.png', height: 25, width: 25),
                      text: "All",
                    ),
                    Tab(
                      icon: Image.asset('asset/logistics.png',
                          height: 25, width: 25),
                      text: "Pickup Request",
                    ),
                    Tab(
                      icon: Image.asset('asset/accepted.png',
                          height: 25, width: 25),
                      text: "Accepted",
                    ),
                    Tab(
                      icon: Image.asset('asset/delivery-boy.png',
                          height: 25, width: 25),
                      text: "Delivery jobs",
                    )
                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: const TabBarView(children: [
                      TabScreen(),
                      TabScreen(),
                      TabScreen(),
                      TabScreen(),
                    ]))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 1,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  activeIcon: ColoredBox(
                    color: Colors.cyan,
                    child: Icon(Icons.home, color: Colors.black),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.note_add_outlined,
                      size: 50, color: Colors.black),
                  activeIcon: SizedBox(
                    width: double.maxFinite,
                    height: 40,
                    child: ColoredBox(
                      color: Colors.cyan,
                      child: Center(
                        child:
                            Icon(Icons.note_add_outlined, color: Colors.black),
                      ),
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notification_important,
                    color: Colors.black,
                  ),
                  activeIcon: ColoredBox(
                    color: Colors.cyan,
                    child: Icon(Icons.home, color: Colors.black),
                  ),
                  label: "")
            ]),
      ),
    );
  }
}
