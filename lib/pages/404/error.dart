import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              children:  [
                const Icon(Icons.error, color: Colors.redAccent, size: 40,),
                const SizedBox(width: 20,),
                Text("404 - PAGE NOT FOUND",style: GoogleFonts.roboto(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent
                          ),),
                const SizedBox(width: 10,),
                const Icon(Icons.error, color: Colors.redAccent, size: 40,),
              ],
            ),
          )
        ],
      ),
    );

  }
}

