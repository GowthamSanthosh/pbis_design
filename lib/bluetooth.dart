import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:third_page/bluetooth_01.dart';
class bluetooth extends StatefulWidget {
  const bluetooth({Key? key}) : super(key: key);

  @override
  State<bluetooth> createState() => _bluetoothState();
}

class _bluetoothState extends State<bluetooth> {
  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Bluetooth Permission',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
          ),
          content: Text(
            'Permission to enable Bluetooth devices and pairing.',
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700, color: Color(0xFF000000)),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the first alert dialog
                _showAnotherAlertDialog(); // Show another alert dialog
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(111.9021, 21.56763)),
                backgroundColor: MaterialStateProperty.all(Color(0xFF428EFF)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
              ),
              child: Text(
                'Connect',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the first alert dialog
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showAnotherAlertDialog() {
    TextEditingController textField1Controller = TextEditingController();
    TextEditingController textField2Controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Register Device',
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
                  Text('Device Name',style: TextStyle(fontSize: 9),),
                  SizedBox(width: 5  ,),
                  Container(
                    width: 177.69812, // Set the desired width
                    height: 15.0, // Set the desired height
                    child: TextField(
                      controller: textField1Controller,
                      style: TextStyle(
                        fontSize: 12, // Use your desired font size
                        fontWeight: FontWeight.w700, // Use your desired font weight
                        color: Color(0xFF000000), // Use your desired text color
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.5,
                            color: Color(0x1A000000),
                          ),
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0), // Add spacing between the two text fields
              Row(
                children: [
                  Text('Device ID',style: TextStyle(fontSize: 9),),
                  SizedBox(width: 20,),
                  Container(
                    width: 177.69812, // Set the desired width
                    height: 15.0, // Set the desired height
                    child: TextField(
                      controller: textField2Controller,
                      style: TextStyle(
                        fontSize: 12, // Use your desired font size
                        fontWeight: FontWeight.w700, // Use your desired font weight
                        color: Color(0xFF000000), // Use your desired text color
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.5,
                            color: Color(0x1A000000),
                          ),
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>bluetooth_01()));
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(111.9021, 21.56763)),
                backgroundColor: MaterialStateProperty.all(Color(0xFF428EFF)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
              ),
              child: Text(
                'Connect',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the first alert dialog
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          Container(

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: Color(0xFF3DA3F4),
                        shape: BoxShape.circle, // Makes the container circular
                        border: Border.all(
                          color: Color(0xFF3DA3F4), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Center(
                        child: Text('01',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Color(0xFFFFFFFF)),),
                      ),
                    ),
                    Divider(
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
                          color: Color(0xFF3DA3F4), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Center(
                        child: Text('02',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black),),
                      ),
                    ),
                    Divider(
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
                          color: Color(0xFF3DA3F4), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Center(
                        child: Text('03',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black),),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('bluetooth',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w800,color: Color(0xFF3DA3F4)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Location',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w800,color: Color(0xFF3DA3F4)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('tracking',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w800,color: Color(0xFF3DA3F4)),),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
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
                          child: TextButton(onPressed: (){
                            _showAlertDialog();
                          }, child:  Text('Register Device',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xFF2196F3)),),),
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

class FlutterBlueApp extends StatefulWidget {
  const FlutterBlueApp({Key? key}) : super(key: key);

  @override
  _FlutterBlueAppState createState() => _FlutterBlueAppState();
}

class _FlutterBlueAppState extends State<FlutterBlueApp> {
  BluetoothAdapterState _adapterState = BluetoothAdapterState.unknown;
  List<BluetoothDevice> discoveredDevices = [];
  late StreamSubscription<BluetoothAdapterState> _adapterStateSubscription;

  // BluetoothBluePlus instance
  BluetoothDevice? connectedDevice;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    _adapterStateSubscription = FlutterBluePlus.adapterState.listen((state) {
      setState(() {
        _adapterState = state;
      });

      if (state == BluetoothAdapterState.on) {
        _startScanning();
      }
    });

    final state = await FlutterBluePlus.state;
    setState(() {
      _adapterState = state as BluetoothAdapterState;
    });

    if (state == BluetoothAdapterState.on) {
      _startScanning();
    }
  }

  @override
  void dispose() {
    _adapterStateSubscription.cancel();
    super.dispose();
  }

  void _startScanning() {
    FlutterBluePlus.startScan(timeout: Duration(seconds: 2));

    FlutterBluePlus.scanResults.listen((results) {
      setState(() {
        discoveredDevices = results.cast<BluetoothDevice>();
      });
    });
  }

  // Function to connect and pair with a device
  void connectToDevice(BluetoothDevice device) async {
    try {
      await device.connect();
      setState(() {
        connectedDevice = device;
      });

      // Pair with the device if necessary (optional).
      // ignore: deprecated_member_use
      await device.pair();

      // You are now connected and paired with the device.
    } catch (e) {
      print('Error connecting to the device: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = _adapterState == BluetoothAdapterState.on
        ? ScanScreen(devices: discoveredDevices, connectFunction: connectToDevice)
        : BluetoothOffScreen(adapterState: _adapterState);

    return MaterialApp(
      color: Colors.lightBlue,
      home: screen,
      navigatorObservers: [BluetoothAdapterStateObserver()],
    );
  }
}


class BluetoothAdapterStateObserver extends NavigatorObserver {
  StreamSubscription<BluetoothAdapterState>? _adapterStateSubscription;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name == '/DeviceScreen') {
      _adapterStateSubscription ??= FlutterBluePlus.adapterState.listen((state) {
        if (state != BluetoothAdapterState.on) {
          navigator?.pop();
        }
      });
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    _adapterStateSubscription?.cancel();
    _adapterStateSubscription = null;
  }
}

class BluetoothOffScreen extends StatelessWidget {
  final BluetoothAdapterState adapterState;

  BluetoothOffScreen({required this.adapterState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(adapterState.toString()),
      ),
      body: Column(
        children: [
          Center(
            child: Text('Bluetooth is ${adapterState.toString()}'),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanScreen(devices: [], connectFunction: (BluetoothDevice device) {  },)));
          }, child: Text('Scan'))
        ],
      ),
    );
  }
}

class ScanScreen extends StatelessWidget {
  final List<BluetoothDevice> devices;

  ScanScreen({required this.devices, required void Function(BluetoothDevice device) connectFunction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan for Devices'),
      ),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          final device = devices[index];
          if (device != null) {
            final deviceName = device.name ?? 'Unknown Device';
            final deviceId = device.id.toString();
            return ListTile(
              title: Text(deviceName),
              subtitle: Text(deviceId),
              onTap: () {
                // Handle device selection here
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Device Selected'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Name: $deviceName'),
                          Text('ID: $deviceId'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          } else {
            // Handle the case when the device is null
            return ListTile(
              title: Text('Unknown Device'),
              subtitle: Text('Unknown ID'),
              onTap: () {

              },
            );
          }
        },
      ),
    );
  }
}

