import 'package:flutter/material.dart';

class Onepage extends StatefulWidget {
  const Onepage({super.key});

  @override
  State<Onepage> createState() => _OnepageState();
}

class _OnepageState extends State<Onepage> {
  List<String> images = [
    'assets/5b4db9e8c051e602a568cdf5.png',
    'assets/bluechair.png',
    'assets/chair-png-40524.png',
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            width: MediaQuery.sizeOf(context).width,
            color: Color.fromARGB(255, 255, 255, 255),
            /* child: Row(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width / 3,
                  color: Color.fromARGB(255, 169, 195, 240),
                ),
                Container(),
              ],
            ),*/

            child: Stack(
              children: [
                Container(
                  height: 350,
                  width: MediaQuery.sizeOf(context).width,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Positioned(
                  right: 265,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width / 3,
                    color: Color.fromARGB(255, 169, 195, 240).withOpacity(0.5),
                  ),
                ),

                //search bar
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height / 16,
                    width: 310,
                    color: Color.fromARGB(255, 13, 2, 158).withOpacity(0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu_rounded,
                        ),
                        SizedBox(
                          width: 225,
                        ),
                        Icon(
                          Icons.search,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.lime,
                          radius: 15,
                          backgroundImage: AssetImage(
                            'assets/a.jpg',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // big bar
                Positioned(
                  top: 110,
                  left: 50,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height / 4,
                    width: MediaQuery.sizeOf(context).width / 1.27,
                    //  color: Color.fromARGB(255, 232, 240, 169),

                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 169, 195, 240),
                            offset: Offset.zero,
                            blurRadius: 50,
                            spreadRadius: 10),
                      ],
                    ),

                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 150,
                          width: MediaQuery.sizeOf(context).width / 2.6,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 1,
                              ),
                              Container(
                                child: Text(
                                  'COLLECTION',
                                  style: TextStyle(
                                      // height: 0,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 10, 0),
                                child: Container(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  child: Text(
                                    'New ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        height: 1,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(
                                            33, 150, 243, 1)),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Arrivals',
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Jai Tharha Kardu ',
                                  style: TextStyle(
                                      height: 3,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'SHOP NOW',
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 2, 2, 8),
                                child: Container(
                                  color: Colors.blue,
                                  height:
                                      MediaQuery.sizeOf(context).height / 400,
                                  width: MediaQuery.sizeOf(context).width / 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(
                                    images[currentIndex],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: images.asMap().entries.map((entry) {
                                    int index = entry.key;
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      },
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: currentIndex == index
                                              ? Colors.blue
                                              : Colors.grey,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                          //this for image crausel slider
                        ),
                      ],
                    ),
                  ),
                ),
                // simple text
                Positioned(
                  top: 315,
                  left: 75,
                  bottom: 10,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width / 3,
                    // color: Color.fromARGB(255, 118, 83, 89),

                    child: Text(
                      'BEST SELLING',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Colors.black87),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.pink,
            child: Stack(
              children: [
                Container(
                  height: 350,
                  width: MediaQuery.sizeOf(context).width,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),

                //box1
                Positioned(
                  top: 10,
                  left: 40,
                  bottom: 10,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height / 0.5,
                    width: MediaQuery.sizeOf(context).width / 3,
                    // color: Color.fromARGB(255, 23, 19, 19),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 169, 195, 240),
                            offset: Offset.zero,
                            blurRadius: 100,
                            spreadRadius: 25),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //for image
                        Container(
                            child: Image(
                                image:
                                    AssetImage('assets/chair-png-40524.png'))),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                          child: Text(
                            'Wingback Chiar',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: Text(
                            'Modern chair to Relax',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 8,
                                fontWeight: FontWeight.w600),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: Text(
                            '₹1,512',
                            style: TextStyle(
                                color: Color.fromARGB(255, 3, 74, 133),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //save mark for box 1

                Positioned(
                  top: 260,
                  left: 151,
                  right: 201,
                  bottom: 0,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(33, 150, 243, 1),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.bookmark_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //box 2
                Positioned(
                  top: 10,
                  right: 50,
                  bottom: 10,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height / 0.5,
                    width: MediaQuery.sizeOf(context).width / 3,
                    // color: Color.fromARGB(255, 28, 22, 22),

                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 169, 195, 240),
                            offset: Offset.zero,
                            blurRadius: 100,
                            spreadRadius: 25),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //for image
                        Container(
                            child: Image(
                                image: AssetImage('assets/bluechair.png'))),

                        SizedBox(
                          height: 42,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                          child: Text(
                            'Sofa Chair',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: Text(
                            'Sofa chair to Relax',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 8,
                                fontWeight: FontWeight.w600),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: Text(
                            '₹1,895',
                            style: TextStyle(
                                color: Color.fromARGB(255, 3, 74, 133),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //for second bar
                Positioned(
                  top: 260,
                  left: 325,
                  right: 30,
                  bottom: 0,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(33, 150, 243, 1),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.bookmark_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // big bar
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 10, 12, 12),
                child: Text(
                  'TRENDING',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              )
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
        child: Icon(Icons.bookmark_added_outlined),
        shape: CircleBorder(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.blue,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_rounded,
                color: Colors.grey,
              ),
              label: ''),
        ],
      ),
    );
  }
}
