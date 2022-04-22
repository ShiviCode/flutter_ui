import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalList extends StatelessWidget {
 const HorizontalList({ Key? key,
  required this.heading,
  required this.tittle,
  required this.img,
  required this.startcolor,
  required this.endcolor,
  }) : super(key: key);

  final String heading, tittle, img;
  final int startcolor, endcolor;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end:  Alignment.bottomRight,
            colors: [
              Color(startcolor),
              Color(endcolor),
            ]
          ),
        ),
        child: Container(
          //height: 100,
          width: 250,
          child: Stack(
            children: [
              Positioned(
                left: 11,
                top: 15,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(heading,
                  style: GoogleFonts.roboto(
                     fontSize: 16,
                     color: Colors.white,
                     fontWeight:FontWeight.bold,
                   ),
                 ),
                 
                  height: 34,
                  decoration: BoxDecoration(
                    color:Color(0xFFAFABEE),
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
                ),

                 Positioned(
                left: 14,
                top: 80,
                  child: Text(tittle,
                  style: GoogleFonts.roboto(
                     fontSize: 25,
                     color: Colors.white,
                     fontWeight:FontWeight.bold,
                   ),                
                 ),
                ),

                Positioned(
                right: 0,
                bottom: 0,
                  child: Image.asset(img, scale: 1,),
                ),



            ],
          ),
        ),
      ),
    );
  }
}