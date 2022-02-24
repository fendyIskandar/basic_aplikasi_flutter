import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Example App"),
            ),
            body: ListView(
              children: [
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: const <Widget>[
                                    Text('BERITA TERBARU'),
                                  ],
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text('PERTANDINGAN HARI INI'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  "assets/images/gambar.jpg",
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child: const Text(
                              "Costa Mendekat Ke Palmeiras",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Row(children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.purpleAccent),
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.only(
                                  right: 380, top: 10, bottom: 10),
                              child: const Text("   Transfer  "),
                            ),
                          ]),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Row(children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 216,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://picsum.photos/150"),
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: const [
                                        Text("Pique Bilang Wasit Untungkan",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("Madrid, Koeman Tepok Jidat",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                          Row(children: [
                            Container(
                              height: 40,
                              width: 448,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: const [
                                    Text("Barcelona Feb 13, 2021",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ]))
              ],
            )));
  }
}
