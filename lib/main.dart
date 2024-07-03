import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Spotify()));
}

// ignore: must_be_immutable
class Spotify extends StatelessWidget {
  List<Map<String, dynamic>> songs = [
    {"name": "There's Nothing Holdin Me back", "subtitle": "2,063,034,313"},
    {"name": "Treat You Better", "subtitle": "2,180,223,221"},
    {"name": "Senorita", "subtitle": "2,752,771,218"},
    {"name": "Stitches", "subtitle": "1,921,502,802"},
    {"name": "Mercy", "subtitle": "1,359,335,529"},
  ];
  Spotify({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/shawn.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xaa282c2f),
                  Color(0xfc282c2f),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.6],
              ),
            ),
            child: Column(children: [
              Container(
                height: 300,
                width: double.infinity,
                padding: const EdgeInsets.all(40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 189, 189),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: const Text(
                          "Artist",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const Text(
                "Shawn Mendes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "10 601 185 LISTENERS THIS MONTH",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Play Randomly"),
                ),
              ),
              Expanded(
                child: ListView(
                  children: songs
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e["name"],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      e["subtitle"],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.more_vert_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff1e2023),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 25),
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "School Boy Q",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Floating",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(right: 30),
                        decoration: BoxDecoration(
                          color: const Color(0xff00bc45),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.pause,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              )
            ]),
          )
        ],
      ),
    );
  }
}
