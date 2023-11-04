import 'package:flutter/material.dart';
import 'package:third_page/bluetooth.dart';
import 'package:third_page/homepage.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  var selectindex = 0;

  var widgetlist = [
    const bluetooth(),
    const homescreen(),
    const Text('inbox'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.99999,
        backgroundColor: const Color(0xffffffff),
        leading: Container(
          // Use a container for customization
          padding: const EdgeInsets.all(8.0), // Padding for the image
          child: Image.asset(
            'assets/TracarIcon.jpg',
            // Replace with the path to your asset image
            width: 40.0, // Width of the image
            height: 40.0, // Height of the image
          ),
        ),
        title: const Text(
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
        backgroundColor: const Color(0xFFEFF3FF),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/dp.jpg'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text(
                        "Sanjeevi",
                        style: TextStyle(
                            color: Color(0xFF8B48DF),
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
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
                      padding: const EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/instruction.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: const Text(
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
                      padding: const EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/icons.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: const Text(
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
                      padding: const EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/version.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: const Text(
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
                      padding: const EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/settings.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: const Text(
                      "Settings",
                      style: TextStyle(
                          color: Color(0xFF8B48DF),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 260,
                  ),
                  const Divider(
                    indent: 50,
                    endIndent: 50,
                    height: 5,
                    thickness: 5,
                    color: Color(0xFF8B48DF),
                  ),
                  ListTile(
                    leading: Container(
                      // Use a container for customization
                      padding: const EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/logout.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: const Text(
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
                      padding: const EdgeInsets.all(0), // Padding for the image
                      child: Image.asset(
                        'assets/support.jpg',
                        // Replace with the path to your asset image
                        width: 40.0, // Width of the image
                        height: 40.0, // Height of the image
                      ),
                    ),
                    title: const Text(
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

        body: Center(
          child: widgetlist[selectindex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF8B48DF),
          onTap: (position) {
            setState(() {
              selectindex = position;

              //print(position);
            });
          },
          currentIndex: selectindex,
          items:  [
            BottomNavigationBarItem(
                icon: Image.asset('assets/b.png'),
                label: '',
              ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/home.png'),
                label: '',
                ),
            BottomNavigationBarItem(
                icon: Image.asset('assets/wifi.png'),
                label: ''),
          ],
        ));
  }
}

