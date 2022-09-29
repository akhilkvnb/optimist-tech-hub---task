import 'package:flutter/material.dart';

class ScreenCustom extends StatelessWidget {
  const ScreenCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Pickup Request',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(border: Border.all()),
                    child: const Center(child: Text('Enter  Shipment Id')),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                        ),
                        onPressed: () {},
                        child: const Text('Search')))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(Icons.link, color: Colors.teal),
              SizedBox(width: 10),
              Text(
                "View all",
                style: TextStyle(color: Colors.teal),
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(
            height: 700,
            child: ListView.builder(itemBuilder: (cxt, index) {
              return Card(
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'asset/book_img.jpg',
                              width: 70,
                              height: double.infinity,
                            ),
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 5),
                              Text('CustomerName:'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Shipment ID:')
                            ],
                          )
                        ],
                      ),
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Pickup',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('2nd Street 678 muscat street'),
                        )),
                    Container(
                      height: 1,
                      width: 300,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Ignore'),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                              ),
                              onPressed: () {},
                              child: const Text('Accept')),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
