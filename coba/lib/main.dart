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
            body: Container(
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
                            child: Image.network(
                              "https://picsum.photos/seed/picsum/400/200",
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
                          decoration:
                              const BoxDecoration(color: Colors.purpleAccent),
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.only(
                              right: 380, top: 10, bottom: 10),
                          child: const Text("   Transfer  "),
                        ),
                      ]),
                    ]))));
  }
}
