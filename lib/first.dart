import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:third_page/changenotifier.dart';
import 'package:third_page/second.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late ThemeProvider themeProvider;

  @override
  void didChangeDependencies() {
    themeProvider = Provider.of<ThemeProvider>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
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
                SingleChildScrollView(
                  child: Column(
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading:  Icon(   Icons.brightness_medium,color: Color(0xFF8B48DF),),
                      title:  Text('Dark Mode',style: TextStyle(
    color: Color(0xFF8B48DF),
    fontWeight: FontWeight.w700,
    fontSize: 18),
    ),
                      trailing: Switch(
                        value: themeProvider.themeModeType == ThemeModeType.dark,
                        onChanged: (value) {
                          themeProvider.toggleTheme();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
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
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFF8B48DF), // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(20), // Border radius
                  ),
                  width: 140, // Set the desired width
                  height: 65, // Set the desired height
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset('assets/Dashboard.jpg'),
                        ),
                        Center(
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>page2()));
                            }, child: const Text(
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
                      color: const Color(0xFF8B48DF), // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(20), // Border radius
                  ),
                  width: 140, // Set the desired width
                  height: 65, // Set the desired height
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset('assets/Tracker.png'),
                        ),
                        Center(
                            child:TextButton(onPressed:(){} , child: const Text(
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