import 'package:flutter/material.dart';

// ignore: camel_case_types
class bluetooth_01 extends StatefulWidget {
  const bluetooth_01({super.key});

  @override
  State<bluetooth_01> createState() => _bluetooth_01State();
}

// ignore: camel_case_types
class _bluetooth_01State extends State<bluetooth_01> {
  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'More option',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000)),
          ),
            actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the first alert dialog
              },
              style: ButtonStyle(
                minimumSize:
                    MaterialStateProperty.all(const Size(111.9021, 21.56763)),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF428EFF)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
              ),
              child: const Text(
                'Clear and pair',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ]);
      },
    );
  }
  void _showAnotherAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Pair Device',
            style: TextStyle(
              fontSize: 12, // Use your desired font size
              fontWeight: FontWeight.w700, // Use your desired font weight
              color: Color(0xFF000000), // Use your desired text color
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Text(
                    'Pair with the device ( Device name )',
                    style: TextStyle(fontSize: 9),maxLines: 1,overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(
                    width: 232.69812, // Set the desired width
                    height: 15.0, // Set the desired height

                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all(const Size(150, 40)),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF428EFF)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                child: const Text(
                  'Pair',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the first alert dialog
                },
                child: const Text('Cancel'),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/blue.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3DA3F4),
                        shape: BoxShape.circle, // Makes the container circular
                        border: Border.all(
                          color: const Color(0xFF3DA3F4), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '01',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 5,
                      color: Colors.white,
                      height: 2,
                    ),
                    Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle, // Makes the container circular
                        border: Border.all(
                          color: const Color(0xFF3DA3F4), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '02',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 5,
                      color: Colors.white,
                      height: 2,
                    ),
                    Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle, // Makes the container circular
                        border: Border.all(
                          color: const Color(0xFF3DA3F4), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '03',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'bluetooth',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF3DA3F4)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF3DA3F4)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'tracking',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF3DA3F4)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 620,
                width: 360,
                decoration: const BoxDecoration(
                  color: Color(0xFF8B48DF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), // Adjust the radius as needed
                    topRight:
                        Radius.circular(20), // Adjust the radius as needed
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 5,
                      width: 101,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          // Adjust the radius as needed
                          topRight: Radius.circular(
                              20), // Adjust the radius as needed
                        ),
                      ),
                    ),
                    Container(
                        height: 570,
                        width: 350,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            // Adjust the radius as needed
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(
                                20), // Adjust the radius as needed
                          ),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Center(
                                  child: Text(
                                'JANNA KUPEER',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                              leading: Icon(
                                Icons.bluetooth,
                                color: Colors.black,
                              ),
                              trailing: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              height: 2,
                              color: Colors.black12,
                              endIndent: 140,
                              indent: 140,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () {
                                       _showAnotherAlertDialog();
                                      },
                                      child: const Text('pair')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: const Text('clear')),
                                )
                              ],
                            ),
                            const ListTile(
                              title: Center(
                                  child: Text(
                                'JANNA KUPEER',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                              leading: Icon(
                                Icons.bluetooth,
                                color: Colors.black,
                              ),
                              trailing: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              height: 2,
                              color: Colors.black12,
                              endIndent: 140,
                              indent: 140,
                            ),
                            const ListTile(
                              title: Center(
                                  child: Text(
                                'JANNA KUPEER',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                              leading: Icon(
                                Icons.bluetooth,
                                color: Colors.black,
                              ),
                              trailing: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              height: 2,
                              color: Colors.black12,
                              endIndent: 140,
                              indent: 140,
                            ),
                            const ListTile(
                              title: Center(
                                  child: Text(
                                'JANNA KUPEER',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                              leading: Icon(
                                Icons.bluetooth,
                                color: Colors.black,
                              ),
                              trailing: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              height: 2,
                              color: Colors.black12,
                              endIndent: 140,
                              indent: 140,
                            ),
                            const ListTile(
                              title: Center(
                                  child: Text(
                                'JANNA KUPEER',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                              leading: Icon(
                                Icons.bluetooth,
                                color: Colors.black,
                              ),
                              trailing: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              height: 2,
                              color: Colors.black12,
                              endIndent: 140,
                              indent: 140,
                            ),
                            const ListTile(
                              title: Center(
                                  child: Text(
                                'JANNA KUPEER',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                              leading: Icon(
                                Icons.bluetooth,
                                color: Colors.black,
                              ),
                              trailing: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                              height: 2,
                              color: Colors.black12,
                              endIndent: 140,
                              indent: 140,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  _showAlertDialog();
                                },
                                child: const Text(
                                  'More option',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Center(
                                child: SizedBox(
                              width: 225,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  _showAlertDialog();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF3DA3F4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  'Register Device',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                          ],
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
