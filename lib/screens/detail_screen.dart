import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

//export?   incorrect use of parent?      media qury?   StateFull?  navigator without of context
//appbar
class DetailScreen extends StatefulWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   title:Text(''),
      //   backgroundColor: Colors.transparent,
      //  ),

        backgroundColor: Theme.of(context).primaryColor,

      body: SafeArea(
        
        child: ListView(
          children: [
            Container(
              height: 392,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                   bottomRight: Radius.circular(22),
                ),
                gradient: LinearGradient(
                   begin: Alignment.topLeft,
                  end:  Alignment.bottomRight,
                  colors: [
                    Colors.amber,
                    Colors.red,
                    ],
                 ),
                 image: DecorationImage(
                  // alignment: Alignment.bottomRight,
                   image: AssetImage('assets/images/Saly-36.png'),
                   ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
                right: 20,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    

                    RatingBar.builder(
                           initialRating: 3.5,
                           minRating: 1,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemSize: 18,
                           itemPadding: EdgeInsets.symmetric(horizontal: 1),
                           itemCount: 5,
                           itemBuilder: (ctx,_)=>Icon(Icons.star,color: Colors.amber,), 
                           onRatingUpdate: (rating)=>print(rating),
                           ),
                      
                       SizedBox(height: 11),

                       Text(
                         'Graphic Design Master For Everyone',
                         overflow: TextOverflow.ellipsis,
                         style: GoogleFonts.roboto(
                               fontSize: 25,
                               color: Colors.white,
                               fontWeight:FontWeight.bold,
                             ),
                        ),

                     SizedBox(height: 29), 

                     Row(
                       children: [

                           SizedBox(
                             width: 112,
                             child: Stack(
                               children: [
                                 Positioned(
                                   child: Container(
                                     height: 45,
                                     width: 45,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.white,
                                       image: DecorationImage(
                                         image: AssetImage('assets/images/Ellipse 3.png'),
                                       ),
                                     ),
                                   ),
                                 ),

                                 Positioned(
                                   left: 22.5,
                                   child: Container(
                                     height: 45,
                                     width: 45,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.white,
                                       image: DecorationImage(
                                         image: AssetImage('assets/images/Ellipse 4.png'),
                                       ),
                                     ),
                                   ),
                                 ),

                                 Positioned(
                                   left: 45,
                                   child: Container(
                                     height: 45,
                                     width: 45,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.white,
                                       image: DecorationImage(
                                         image: AssetImage('assets/images/Ellipse 5.png'),
                                       ),
                                     ),
                                   ),
                                 ),

                                 Positioned(
                                   left: 67.4,
                                   child: Container(
                                     height: 45,
                                     width: 45,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.white,
                                       image: DecorationImage(
                                         image: AssetImage('assets/images/Ellipse 6.png'),
                                       ),
                                     ),
                                   ),
                                 ),


                               ],
                             ),
                          ),

                            SizedBox(width: 12), 

                            Text(
                              '+28 Members',
                              style: GoogleFonts.roboto(
                               fontSize: 18,
                               color: Color.fromARGB(255, 142, 142, 142),
                               fontWeight:FontWeight.w400,
                             ),
                          ),

                       ],
                     ),
                

                  ],
                ),
            ), 

              SizedBox(
                height: 10,
              ),


                ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (ctx,i){
                    return Container(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Container(
                        height: 82,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: Color(0xFF3E3A6D),
                       ),
                       child: Row(
                         children: [
                           Container(
                             height: 82,
                             width: 99,
                             decoration: BoxDecoration(
                               color: Colors.pinkAccent ,
                                borderRadius: BorderRadius.circular(19),
                                //  gradient: LinearGradient(
                                //     begin: Alignment.topLeft,
                                //     end:  Alignment.bottomRight,
                                //     colors: [
                                //       Colors.amber,
                                //       Colors.red,
                                //       ],
                                //     ),
                                image: DecorationImage(
                                  // alignment: Alignment.bottomRight,
                                     image: AssetImage('assets/images/Saly-36.png'),
                                    ),
                             ),
                           ),

                           Expanded(
                             child: Padding(
                               padding: EdgeInsets.only(left: 12),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('Introduction Design Graphic for Begginner ',
                                   overflow: TextOverflow.ellipsis,
                                   style: GoogleFonts.roboto(
                                     fontSize: 18,
                                     color: Colors.white,
                                     fontWeight:FontWeight.bold,
                                  ),
                                ),

                                 SizedBox(height: 6,),
         
                                  Row(
                                    children: [
                                       Text('12 MInutes',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                           fontSize: 14,
                                           color: Color.fromARGB(255, 105, 105, 134),
                                           fontWeight:FontWeight.bold,
                                            ),
                                         ),

                                        SizedBox(width: 20,),

                                        Container(
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.pinkAccent,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 4,
                                            ),
                                            child: Text('Free',style: GoogleFonts.roboto(
                                           fontSize: 11,
                                           color: Colors.white,
                                           fontWeight:FontWeight.w400,
                                            ),
                                          ),

                                        ),
                                        ),

                                    ],
                                  ), 

                                 ],
                               ),
                             ),),
                         ],
                       ),
                      ),
                    );
                  }),
                

          ],
        )
        ),
    );
  }
}