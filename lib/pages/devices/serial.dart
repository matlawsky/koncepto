// import 'package:flutter/material.dart';
// // import 'package:koncepto/constants/style.dart';

// // class SerialPage extends StatelessWidget {
// //   const SerialPage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //             actions: [
// //               IconButton(
// //                 icon: const Icon(Icons.file_upload_rounded),
// //                 color: Colors.blueGrey,
// //                 padding: const EdgeInsets.symmetric(horizontal: 10),
// //                 onPressed: () {},
// //               ),
// //               const Padding(
// //                   padding: EdgeInsets.only(right: 10),
// //                   child: Icon(Icons.circle, color: Colors.redAccent)),
// //             ],
// //             iconTheme: const IconThemeData(color: Colors.black),
// //             backgroundColor: Colors.white,
// //             title: const Text("Serial", style: TextStyle(color: active))),
// //         bottomNavigationBar:
// //             ElevatedButton(onPressed: () {}, child: const Text("Connect")),
// //         body: SizedBox(
// //           width: MediaQuery.of(context).size.width,
// //           height: MediaQuery.of(context).size.height,
// //           child: TextFormField(),
// //         ));
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:ffi/ffi.dart';
// import 'package:libserialport/libserialport.dart';
// import 'package:koncepto/constants/style.dart';

// class SerialPage extends StatefulWidget {
//   @override
//   SerialPageState createState() => SerialPageState();
// }

// extension IntToString on int {
//   String toHex() => '0x${toRadixString(16)}';
//   String toPadded([int width = 3]) => toString().padLeft(width, '0');
//   String toTransport() {
//     switch (this) {
//       case SerialPortTransport.usb:
//         return 'USB';
//       case SerialPortTransport.bluetooth:
//         return 'Bluetooth';
//       case SerialPortTransport.native:
//         return 'Native';
//       default:
//         return 'Unknown';
//     }
//   }
// }

// class SerialPageState extends State<SerialPage> {
//   bool connected = false;
//   var availablePorts = [];

//   @override
//   void initState() {
//     super.initState();
//     initPorts();
//   }

//   void initPorts() {
//     setState(() => availablePorts = SerialPort.availablePorts);
//   }

//   void startConnection() {
//     setState(() {});
//   }

//   void endConnection() {
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.file_upload_rounded),
//               color: Colors.blueGrey,
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               onPressed: () {},
//             ),
//             const Padding(
//                 padding: EdgeInsets.only(right: 10),
//                 child: Icon(Icons.circle, color: Colors.redAccent)),
//           ],
//           iconTheme: const IconThemeData(color: Colors.black),
//           backgroundColor: Colors.white,
//           title: const Text("Serial", style: TextStyle(color: active))),
//       body: SizedBox(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         child: Scrollbar(
//           child: ListView(
//             children: [
//               for (final address in availablePorts)
//                 Builder(builder: (context) {
//                   final port = SerialPort(address);
//                   return ExpansionTile(
//                     title: Text(address),
//                     children: [
//                       CardListTile('Description', port.description),
//                       CardListTile('Transport', port.transport.toTransport()),
//                       Container(
//                         child: TextButton(
//                             onPressed: () {}, child: Text("Connect")),
//                       ),
//                     ],
//                   );
//                 }),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.refresh),
//         onPressed: initPorts,
//       ),
//     );
//   }
// }

// class CardListTile extends StatelessWidget {
//   final String name;
//   final String? value;

//   CardListTile(this.name, this.value);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text(value ?? 'N/A'),
//         subtitle: Text(name),
//       ),
//     );
//   }
// }
