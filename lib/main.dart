import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Post UI Design',
      home: MyHomePage(),
    );
  }
}

Color backgroundColor = Color(0xFFfbfcff);

const String myNameIs = "Berk İpekoğlu";

List<String> images = [
  "assets/images/image1.jpg",
  "assets/images/image2.jpg",
  "assets/images/image3.jpg",
  "assets/images/image4.jpg",
  "assets/images/image5.jpg",
  "assets/images/image6.jpg",
];

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: false,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                // Menu Bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          "Halal Food",
                          style: GoogleFonts.poppins(
                            fontSize: 13.0,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        child: Text(
                          "Itinerary",
                          style: GoogleFonts.poppins(
                            fontSize: 13.0,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Log in button clicked!");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.0, 20.0),
                                blurRadius: 40.0,
                                spreadRadius: -15.0,
                                color: Colors.grey[400],
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                              left: 25,
                              right: 25,
                            ),
                            child: Text(
                              "Log in",
                              style: GoogleFonts.poppins(
                                fontSize: 13.0,
                                color: Colors.pinkAccent[400],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      // Title
                      Container(
                        child: Text("Liburan\nbersama orang terdekat",
                            style: GoogleFonts.poppins(fontSize: 40.0)),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      // TextField
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20.0,
                              color: Colors.grey[400],
                              offset: Offset(0.0, 10.0),
                              spreadRadius: -20.0,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                  fontSize: 13.0,
                                  color: Colors.grey[800],
                                ),
                                cursorColor:
                                    TextSelectionThemeData().cursorColor,
                                initialValue: 'Mulai pencarian Anda..',
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Color(0xFFff2e63),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.search_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 40.0),
                      // Lists

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CategoryTitle("Destinasi"),
                          SizedBox(height: 20.0),
                          GridView.count(
                            shrinkWrap: true,
                            crossAxisSpacing: 30.0,
                            mainAxisSpacing: 2.0,
                            physics: BouncingScrollPhysics(),
                            crossAxisCount: 2,
                            childAspectRatio: 2.0,
                            children: [
                              Container(
                                width: 80.0,
                                height: 80.0,
                                alignment: Alignment.topLeft,
                                //color: Colors.black,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Image
                                    Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            images[0],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(23),
                                      ),
                                    ),
                                    // Texts
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Yogyakarta",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            "34 destinasi",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.0,
                                height: 80.0,
                                alignment: Alignment.topLeft,
                                //color: Colors.black,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Image
                                    Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            images[1],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(23),
                                      ),
                                    ),
                                    // Texts
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Yogyakarta",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            "34 destinasi",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.0,
                                height: 80.0,
                                alignment: Alignment.topLeft,
                                //color: Colors.black,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Image
                                    Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            images[2],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(23),
                                      ),
                                    ),
                                    // Texts
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Yogyakarta",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            "34 destinasi",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80.0,
                                height: 80.0,
                                alignment: Alignment.topLeft,
                                //color: Colors.black,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Image
                                    Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            images[3],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(23),
                                      ),
                                    ),
                                    // Texts
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Yogyakarta",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            "34 destinasi",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.0,
                                              color: Colors.grey[500],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Column(
                        children: [
                          CategoryTitle("Akomodasi"),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: ((MediaQuery.of(context).size.width /
                                        2) +
                                    ((MediaQuery.of(context).size.width / 10) -
                                        20)),
                                height: 150.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(images[4]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: ((MediaQuery.of(context).size.width /
                                        4) +
                                    ((MediaQuery.of(context).size.width / 10) -
                                        10)),
                                height: 150.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(images[5]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  color: Color(0xFFfcf8e8),
                  child: Center(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: myNameIs.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Text(
                          myNameIs[index],
                          style: GoogleFonts.zeyada(
                            fontSize: 40.0,
                            color: Color(0xFFff4646),
                            fontWeight: FontWeight.w700,
                          ),
                        ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  String title;
  CategoryTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 19.0,
            fontWeight: FontWeight.w500,
            color: Colors.grey[800],
          ),
        ),
        // Titles
        Row(
          children: [
            Text(
              "Lihat Semura",
              style: GoogleFonts.poppins(
                fontSize: 13.0,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 10.0,
            ),
          ],
        ),
      ],
    );
  }
}
