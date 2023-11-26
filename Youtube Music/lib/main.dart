import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color.fromRGBO(62, 36, 17, 1),
                const Color.fromRGBO(48, 14, 32, 1),
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(width: 35, 'assets/images/logo.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Music",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.cast,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              CircleAvatar(
                                radius: 18,
                                backgroundImage:
                                    AssetImage("assets/images/pp.jpg"),
                              ),
                            ],
                          ),
                        ]),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryItem("Energize"),
                        CategoryItem("Workout"),
                        CategoryItem("Feel good"),
                        CategoryItem("Relaxation"),
                        CategoryItem("Chill Out"),
                        CategoryItem("Rock"),
                        CategoryItem("Halay"),
                        CategoryItem("Türkü")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(7, 5, 8, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "START RADİO FROM A SONG",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 187, 186, 186),
                                fontSize: 12),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quick Picks",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, right: 9, left: 9),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(14)),
                                child: Text("Play all",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Music_sm("assets/images/image1.png", "Moment",
                              "PaulWetz & Dillistone"),
                          Music_sm("assets/images/image2.jpg",
                              "Burası Adıyaman", "Kahtalı Mıçı"),
                          Music_sm("assets/images/image3.jpg",
                              "Makaram Sarı Bağlar", "Mehmet Şah"),
                          Music_sm("assets/images/image4.jpg",
                              "Whish You Were Here", "Pink Floyd"),
                          Music_sm("assets/images/image5.jpg",
                              "Senden Gizledim", "Yener Çevik"),
                          Music_sm("assets/images/image6.png", "Nalan",
                              "Emir Can İğrek"),
                          Music_sm("assets/images/image7.png", "Bir Dizi İz",
                              "Sagopa"),
                          Music_sm("assets/images/image8.jpg", "Kerosene",
                              "Crystal Castles"),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Forgotten favorites",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, right: 9, left: 9),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(14)),
                                child: Text("Play all",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                MusicBoxRow("assets/images/image1.png",
                                    "Moment", "PaulWetz & Dillistone"),
                                MusicBoxRow("assets/images/image2.jpg",
                                    "Burası Adıyaman", "Kahtalı Mıçı"),
                                MusicBoxRow("assets/images/image3.jpg",
                                    "Makaram Sarı Bağlar", "Mehmet Şah"),
                                MusicBoxRow("assets/images/image4.jpg",
                                    "Whish You Were Here", "Pink Floyd"),
                                MusicBoxRow("assets/images/image5.jpg",
                                    "Senden Gizledim", "Yener Çevik"),
                                MusicBoxRow("assets/images/image6.png", "Nalan",
                                    "Emir Can İğrek"),
                                MusicBoxRow("assets/images/image7.png",
                                    "Bir Dizi İz", "Sagopa"),
                                MusicBoxRow("assets/images/image8.jpg",
                                    "Kerosene", "Crystal Castles"),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: const Color.fromRGBO(33, 33, 33, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.fast_forward,
                            color: Colors.white,
                          ),
                          Text(
                            "Samples",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.explore,
                            color: Colors.white,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.library_music,
                            color: Colors.white,
                          ),
                          Text(
                            "Libary",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ),
                          Text(
                            "Upgrade",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding MusicBoxRow(
    String photo,
    String title,
    String artist,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 200,
              ),
              SizedBox(
                height: 15,
              ),
              Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              Text(artist,
                  style: TextStyle(
                    color: Color.fromARGB(255, 181, 181, 181),
                    fontSize: 13,
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget Music_sm(
    String photo,
    String title,
    String artist,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 75,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Text(artist,
                      style: TextStyle(
                        color: Color.fromARGB(255, 181, 181, 181),
                        fontSize: 13,
                      )),
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container CategoryItem(String text) {
    return Container(
      padding:
          const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
        color: Color.fromARGB(52, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(90, 255, 255, 255)),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
      ),
    );
  }
}
