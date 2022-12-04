import 'package:flutter/material.dart';
import 'package:koncepto/constants/style.dart';
import 'package:koncepto/widgets/custom_text.dart';
import 'package:koncepto/widgets/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
        leading: !ResponsiveWidget.isSmallScreen(context) ? 
        ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
            children: const [
            SizedBox(width: 6),
            Padding(
              padding: EdgeInsets.only(right: 5),
                child: Text(
                  'koncept', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    ),
                  ),
              )
            ]
          //),
           )
          ]
          )
    
           : IconButton(
          onPressed: (){
            key.currentState?.openDrawer();
          }, 
          icon: const Icon(Icons.menu,)),
        
        title: Row(children: [
          const SizedBox(width: 10),
          Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: const CustomText(text: "Dashboard", color: active, size: 20, weight: FontWeight.bold,)
          ),
          Expanded(child: Container()),
          IconButton(
            icon: const Icon(Icons.settings, color: dark), 
            onPressed: (){}
          ),
          Stack(
            children: [
              IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.notifications, color: dark)),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: light, width: 2),
                      color: active,
                      borderRadius: BorderRadius.circular(30)
                      ),
                  )
                )
              ],
            ),             
          Container(
            width: 1,
            height: 11,
            color: lightGrey,
          ),
          const SizedBox(width: 24),
          const CustomText(text: "Mateusz Domański", color: lightGrey,),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: active.withOpacity(.5),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundColor: light,
                child: Icon(Icons.person_outline, color: dark,),
              ),
            ),
        ),

        ],
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: dark),
        elevation: 0,

      );