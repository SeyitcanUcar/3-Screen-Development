
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/instagram.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 8.0, left: 8, bottom: 8, right: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.send,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // width: 50,
                width: double.infinity,
                color: Colors.white,
                // width: 50,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StoryWidged("assets/images/p1.jpg","Keyvan_arasteh"),
                            StoryWidged("assets/images/p4.jpg","JhonnyDepp"),
                            StoryWidged("assets/images/p3.jpg","Ramazan_Şen"),
                            StoryWidged("assets/images/p5.jpg","alPacino"),
                            StoryWidged("assets/images/p2.jpg","Ahmet_Selim"),
                            StoryWidged("assets/images/p6.jpg","Leonardo"),
                            StoryWidged("assets/images/p1.jpg","Keyvan_arasteh"),
                            StoryWidged("assets/images/p4.jpg","JhonnyDepp"),
                            StoryWidged("assets/images/p3.jpg","Ramazan_Şen"),
                            StoryWidged("assets/images/p5.jpg","alPacino"),
                            StoryWidged("assets/images/p2.jpg","Ahmet_Selim"),
                            StoryWidged("assets/images/p6.jpg","Leonardo"),
                  
                          ],
                        ),
                      ),
                      PostItem("assets/images/p5.jpg","assets/images/post5.jpg","alpacino","Sultan Ahmet cami"),
                      PostItem("assets/images/p2.jpg","assets/images/post6.jpg","ahmet_selim","Galata"),
                      PostItem("assets/images/p4.jpg","assets/images/post1.jpg","JhonnyDepp","İstanbul"),
                      PostItem("assets/images/p6.jpg","assets/images/post3.jpg","leonardo","Galata"),
                      
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black12,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.home,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.smart_display,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.favorite,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.person,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(String avatar, String photo, String name, String location) => Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Image.asset(photo),
            LikeCommetBox(),
            CommentBox("Keyvan_Arasteh" , "Çok iyi olmuş değerli hocam eline sağlık.miss. benide etiketle"),
            CommentBox("Ramazan_Şen"," as bayrakları" )
    ],
  ),
);

  Padding LikeCommetBox() {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.comment_bank_outlined,
                      color: Colors.black87,
                    ),
                  ],
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  color: Colors.black87,
                ),
              ],
            ),
          );
  }

  Padding CommentBox(String name,String comment) {
    return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RichText(
                    maxLines: 3,
                    text: TextSpan(
                      children: [
                        TextSpan(
                      text: name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                      ),
                    TextSpan(text: " "),
                    TextSpan(
                      text: comment,
                      style: TextStyle(
                    
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  


  Widget StoryWidged(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color:Colors.red , 
              gradient: LinearGradient(colors: [
               Color.fromRGBO(214, 71, 130, 1),
               const Color.fromRGBO(241, 166, 117, 8),
        ],),
              shape: BoxShape.circle,
            ),

            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
