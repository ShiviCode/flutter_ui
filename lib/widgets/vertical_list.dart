import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Vertical_List extends StatelessWidget {
  const Vertical_List({ Key? key, 
  required this.img,
  required this.title,
  required this.duration,
  required this.rating,
  }) : super(key: key);
  
  final String img, title, duration;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [

            Container(
              height: 92,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF3E3A6D),
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 13,
                  offset: Offset(0,4),
                ),],
              ),
            ),


              Padding(
                padding: EdgeInsets.only(
                  left: 26,
                  bottom: 19,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 115,
                      width: 115,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(img),
                          ),
                      ),
                    ),

                    Padding(
                      padding:EdgeInsets.only(left: 10),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(title,
                          style: GoogleFonts.roboto(
                                   fontSize: 20,
                                   color: Colors.white,
                                   fontWeight:FontWeight.w500,
                                 ),
                         ),
                    
                          Text(duration,
                          style: GoogleFonts.roboto(
                                   fontSize: 12,
                                   color: Color(0xFF8C8C8C),
                                   fontWeight:FontWeight.w300,
                                 ),
                         ),
                    
                         RatingBar.builder(
                           initialRating: rating,
                           minRating: 1,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemSize: 18,
                           itemPadding: EdgeInsets.symmetric(horizontal: 1),
                           itemCount: 5,
                           itemBuilder: (ctx,_)=>Icon(Icons.star,color: Colors.amber,), 
                           onRatingUpdate: (rating)=>print(rating),
                           ),
                    
                          
                    
                        ],
                      ),
                      ),

                  ],
                ),
                ),
                 Positioned(
                             bottom: 34,
                             right: 0,
                             child: Container(//
                             //  height: MediaQuery.of(context).size.width * 0/.06,
                             //  width:  MediaQuery.of(context).size.width * 0/06,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.redAccent,
                               ),
                               child: Icon(Icons.play_arrow,color: Colors.white,),
                             ),
                             ),

          ],
        ),
      ),
    );
  }
}