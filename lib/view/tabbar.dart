import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Image.asset(
                  'asset/book_img.jpg',
                  height: 120,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "shipment ID:#123456",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        const Text("pickup location"),
                        const Text("678 muscat streat"),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "view in details",
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(width: 10)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
