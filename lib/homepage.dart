import 'package:flutter/material.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF8B48DF), // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(20), // Border radius
                    ),
                    width: 70, // Set the desired width
                    height: 65, // Set the desired height
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset('assets/Dashboard.jpg'),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [

                    Container(
                      height: 65,
                      width: 225,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8B48DF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color:const Color(0xFF8B48DF) , // Border color
                                width: 2.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(20), // Border radius
                            ),
                            width: 70, // Set the desired width
                            height: 65, // Set the desired height
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset('assets/Tracker.png'),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('Tracker',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xFFFFFCFC)),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('      Status',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xFF141414),)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height:108 ,
                    width: 328,
                    color: Colors.transparent,
                    child:
                    Image.asset('assets/rect.png'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('      Recent',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xFF141414),)),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 72,
                    width: 328,

                    decoration: BoxDecoration(
                      color: const Color(0xFF8B48DF),
                      borderRadius: BorderRadius.circular(10), // Border radius
                    ),
                  ),
                ),

                Positioned(
                  top: 10, // Adjust the top position as needed
                  left: 10, // Adjust the left position as needed
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.red, // Text color
                      fontSize: 12, // Text font size
                      fontWeight: FontWeight.bold, // Text font weight
                    ),
                  ),
                ),

              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 72,
                    width: 328,

                    decoration: BoxDecoration(
                      color: const Color(0xFF8B48DF),
                      borderRadius: BorderRadius.circular(10), // Border radius
                    ),
                  ),
                ),

                Positioned(
                  top: 10, // Adjust the top position as needed
                  left: 10, // Adjust the left position as needed
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.red, // Text color
                      fontSize: 12, // Text font size
                      fontWeight: FontWeight.bold, // Text font weight
                    ),
                  ),
                ),

              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 72,
                    width: 328,

                    decoration: BoxDecoration(
                      color: const Color(0xFF8B48DF),
                      borderRadius: BorderRadius.circular(10), // Border radius
                    ),
                  ),
                ),

                Positioned(
                  top: 10, // Adjust the top position as needed
                  left: 10, // Adjust the left position as needed
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.red, // Text color
                      fontSize: 12, // Text font size
                      fontWeight: FontWeight.bold, // Text font weight
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