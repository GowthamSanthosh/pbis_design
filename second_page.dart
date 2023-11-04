import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.99999,
        backgroundColor: Color(0xffffffff),
        leading: Container(
          // Use a container for customization
          padding: EdgeInsets.all(8.0), // Padding for the image
          child: Image.asset(
            'assets/TracarIcon.jpg',
            // Replace with the path to your asset image
            width: 40.0, // Width of the image
            height: 40.0, // Height of the image
          ),
        ),
        title: Text(
          'NAVI GO',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        backgroundColor: Color(0xFFEFF3FF),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/dp.jpg'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "Sanjeevi",
                        style: TextStyle(
                            color: Color(0xFF8B48DF),
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "sanjeevi@gmail.com",
                        style: TextStyle(
                            color: Color(0xFF8B48DF),
                            fontWeight: FontWeight.w700,
                            fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      // Use a container for customization
                      padding: EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/instruction.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: Text(
                      "Instruction",
                      style: TextStyle(
                          color: Color(0xFF8B48DF),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      // Use a container for customization
                      padding: EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/icons.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: Text(
                      "Update",
                      style: TextStyle(
                          color: Color(0xFF8B48DF),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      // Use a container for customization
                      padding: EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/version.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: Text(
                      "Version",
                      style: TextStyle(
                          color: Color(0xFF8B48DF),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      // Use a container for customization
                      padding: EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/settings.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                          color: Color(0xFF8B48DF),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 260,
                  ),
                  Divider(
                    indent: 50,
                    endIndent: 50,
                    height: 5,
                    thickness: 5,
                    color: Color(0xFF8B48DF),
                  ),
                  ListTile(
                    leading: Container(
                      // Use a container for customization
                      padding: EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/logout.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: Text(
                      "Log Out",
                      style: TextStyle(
                          color: Color(0xFF8B48DF),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      // Use a container for customization
                      padding: EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/support.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: Text(
                      "Contact Support",
                      style: TextStyle(
                          color: Color(0xFF8B48DF),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF8B48DF), // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(20), // Border radius
                  ),
                  width: 140, // Set the desired width
                  height: 65, // Set the desired height
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset('assets/Dashboard.jpg'),
                        ),
                        Center(
                            child: TextButton(onPressed: (){}, child: Text(
                              "Dashboard",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF8B48DF),
                              ),
                            ))),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF8B48DF), // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(20), // Border radius
                  ),
                  width: 140, // Set the desired width
                  height: 65, // Set the desired height
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset('assets/Tracker.png'),
                        ),
                        Center(
                            child:TextButton(onPressed:(){} , child: Text(
                              "Tracker",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF8B48DF),
                              ),
                            ))
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

