//import 'dart:ffi';

import 'package:flutter/material.dart';

///true


import 'package:project_flutter_fba/pages/details_kin.dart';
import 'package:project_flutter_fba/service/data_base.dart'; //true

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  

  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 16, 16, 17),
        centerTitle: true,
        title: Text(
          "Riyadh",
          style: TextStyle(
            color: const Color.fromARGB(236, 247, 244, 244),
            fontSize: 50,
            fontWeight: FontWeight(30),
          ),
        ),
      ),

      body: FutureBuilder(
        future: Database().getAllRiyadh(),
        builder: (context, asyncSnapshot) {
          
          return ListView.builder(
            padding: EdgeInsets.all(12),
            itemCount: asyncSnapshot.data!.length,
            itemBuilder: (context, index) {
              final place = asyncSnapshot.data![index];

              return Container(
                /// Catagory 1
                // padding: EdgeInsets.all(16),////هنا البلا
                // height: height *0.7,
                color: const Color.fromARGB(255, 10, 1, 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///start
                    Text(
                      place.catagory!,
                      style: TextStyle(
                        fontSize: 40,
                        color: const Color.fromARGB(255, 240, 240, 237),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 350,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            ///Kingdom tower
                            width: width * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      place.image!,
                                      height: 300,
                                      fit: BoxFit.fill,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                Text(
                                  place.name!,
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: const Color.fromARGB(
                                      255,
                                      243,
                                      241,
                                      235,
                                    ),
                                    fontWeight: FontWeight(450),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      89,
                                      14,
                                      227,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsKin(model: place),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "See more",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        240,
                                        240,
                                        239,
                                      ),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            ///Second Tower
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      place.imageSec!,
                                      height: 300,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  place.nameSec!,
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: const Color.fromARGB(
                                      255,
                                      243,
                                      241,
                                      235,
                                    ),
                                    fontWeight: FontWeight(450),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      89,
                                      14,
                                      227,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(12),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "See more",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        240,
                                        240,
                                        239,
                                      ),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

///main
