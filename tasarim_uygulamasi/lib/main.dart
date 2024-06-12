// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tasarim_uygulamasi/detay.dart';
// ignore: prefer_const_constructors

void main() {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
      title: "Moda Uygulaması",
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // ignore: prefer_const_constructors
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: "Montserrat",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            //color: Colors.blue.shade300,
            child: ListView(
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("assets/model2.jpeg", "assets/chloelogo.png"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 20,
                ),
                listeElemani("assets/model2.jpeg", "assets/chloelogo.png"),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 10,
              //color: Colors.blue.shade300,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/model1.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Daisy",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "34 mins ago",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.grey,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 138,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                          alignment: Alignment.topRight,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "The official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Montserrat",
                          fontSize: 13),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: "assets/modelgrid1.jpeg"),
                              ),
                            );
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/modelgrid1.jpeg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid2.jpeg"),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/modelgrid2.jpeg",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: "assets/modelgrid3.jpeg"),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  height: 95,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/modelgrid3.jpeg",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 85,
                          height: 25,
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Text(
                              "# LouisVuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 85,
                          height: 25,
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Text(
                              "# Chloe",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.reply,
                            color: Colors.brown.withOpacity(0.4), size: 25),
                        Text(
                          "1.7k",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.brown.withOpacity(0.7),
                              fontSize: 13),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.comment,
                            color: Colors.brown.withOpacity(0.4), size: 25),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "325",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.brown.withOpacity(0.7),
                              fontSize: 13),
                        ),
                        SizedBox(
                          width: 145,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 25,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "2.3k",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.brown.withOpacity(0.7),
                              fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ],
          controller: tabController,
        ),
      ),
    );
  }

  listeElemani(String modelPath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(modelPath), fit: BoxFit.cover)),
              width: 65,
              height: 65,
            ),
            Positioned(
              right: 5,
              bottom: 5,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          height: 30,
          width: 75,
          child: Text(
            "Follow",
            style: TextStyle(
              fontFamily: "Montserrat",
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
