import 'package:flutter/material.dart';
class bluetooth extends StatefulWidget {
  const bluetooth({Key? key}) : super(key: key);

  @override
  State<bluetooth> createState() => _bluetoothState();
}

class _bluetoothState extends State<bluetooth> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/blue.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 278.0, // Set the desired width
                    height: 27.0, // Set the desired height
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Color(0x33000000),
                          ),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        hintText: 'Search Device', // Hide the hintText
                        prefixIcon: Icon(Icons.search),
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Text('Trying to find you device...',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Color(0xFF3DA3F4)),),
              SizedBox(
                height: 10,
              ),
              Text('Connecting',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w800,color: Color(0xFF3DA3F4)))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 360,
                decoration: BoxDecoration(
                  color: Color(0xFF8B48DF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),    // Adjust the radius as needed
                    topRight: Radius.circular(20),   // Adjust the radius as needed
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 5,
                      width: 101,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),    // Adjust the radius as needed
                          topRight: Radius.circular(20),   // Adjust the radius as needed
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 225,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),    // Adjust the radius as needed
                          topRight: Radius.circular(20),
                          bottomLeft:Radius.circular(20),
                          bottomRight: Radius.circular(20),// Adjust the radius as needed
                        ),
                      ),
                      child:Center(
                        child: TextButton(onPressed: (){}, child:  Text('Register Device',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFF2196F3)),),),
                      )
                    ),
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

