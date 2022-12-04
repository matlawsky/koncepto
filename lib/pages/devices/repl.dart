import 'package:flutter/material.dart';
import 'package:koncepto/constants/style.dart';

class REPLPage extends StatelessWidget {
  const REPLPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.file_upload_rounded), 
            color: Colors.blueGrey,padding: const EdgeInsets.symmetric(horizontal: 10), 
            onPressed: () {},
            ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.circle, color: Colors.redAccent)
            ),
          
          ],
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text("WebREPL", style: TextStyle(color: active))),
      bottomNavigationBar: ElevatedButton(
        onPressed: (){},
        child: const Text("Connect")),
      
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: TextFormField(),
        
      )

            
    );      
  }
}