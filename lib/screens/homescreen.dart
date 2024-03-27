import 'package:flutter/material.dart';
import 'package:mojgenieproject/screens/attendencescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List listname1 = [
    "Todays program",
    "Speakers",
    "Scintific program",
    "Posters"
  ];
  List<Color> colors = [
    Color.fromARGB(255, 190, 102, 168),
    Colors.white,
    Colors.white
  ];
  List heading = [
    "Scientific session",
    "Delegate  information",
    "General information"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://cdn.pixabay.com/photo/2017/07/18/15/39/dental-care-2516133_640.png"),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: const Color.fromARGB(255, 244, 54, 197),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.question_mark_sharp,
                  color: const Color.fromARGB(255, 244, 54, 197),
                ))
          ],
        ),
        body: ListView(children: [
          Image.network(
              "https://img.freepik.com/free-vector/dental-healthcare-landing-page_23-2148984575.jpg?t=st=1711524258~exp=1711527858~hmac=c003458f8069b863b671e10e649ec3c37cbe18ae914c944e2005606df56b97c8&w=996"),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AttendenceScreen()));
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 102, 168),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            // offset: Offset(0, 2),
                            blurRadius: 5)
                      ]),
                  height: 130,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Scientific session",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: InkWell(
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 6)
                                          ],
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                // Text(listname1[index])
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          // offset: Offset(0, 2),
                          blurRadius: 5)
                    ]),
                height: 130,
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Delegate  information",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: InkWell(
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 6)
                                        ],
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              // Text(listname1[index])
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          // offset: Offset(0, 2),
                          blurRadius: 5)
                    ]),
                height: 130,
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "General information",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: InkWell(
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 6)
                                        ],
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              // Text(listname1[index])
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                )),
          ),
          // },
          // ),
        ])
        // Padding(
        //   padding: const EdgeInsets.all(12),
        //   child: Container(
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(8),
        //         color: Color.fromARGB(255, 186, 56, 154)),
        //     // height: double.infinity,
        //     height: 150,
        //     width: double.infinity,
        //     child:
        // Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(top: 9, left: 15, bottom: 9),
        //           child: Text(
        //             "Scientific Session",
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.w500,
        //                 fontSize: 15),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 112,
        //           width: double.infinity,
        //           child:
        //           ListView.builder(
        //             scrollDirection: Axis.horizontal,
        //             itemCount: 4,
        //             itemBuilder: (context, index) {
        //               return Column(
        //                 children: [
        //                   Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 20, right: 20),
        //                     child: Container(
        //                       height: 40,
        //                       width: 40,
        //                       decoration: BoxDecoration(
        //                           shape: BoxShape.circle,
        //                           color: Colors.white),
        //                     ),
        //                   ),
        //                   // Text(listname1[index])
        //                 ],
        //               );
        //             },
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // )

        );
  }
}
