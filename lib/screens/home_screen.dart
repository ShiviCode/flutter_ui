import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/detail_screen.dart';
import 'package:flutter_ui/widgets/horizontal_list.dart';
import 'package:flutter_ui/widgets/vertical_list.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,

      body: SafeArea(
        child: ListView(
           padding: EdgeInsets.symmetric(horizontal: 20 ),
           physics: BouncingScrollPhysics(),

           children: [
             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   'Online',
                   style: GoogleFonts.roboto(
                     fontSize: 36,
                     color: Colors.white,
                     fontWeight:FontWeight.bold,
                   ),
                 ),
                  
                 GestureDetector(
                   onDoubleTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(
                       builder:(context) =>
                         DetailScreen(),
                       
                        ),
                       );
                   },
                   child: Text(
                     'Master Class',
                     style: GoogleFonts.roboto(
                       fontSize: 36,
                       color: Colors.white,
                       fontWeight:FontWeight.w500,
                     ),
                   ),
                 ), 

               ],
             ),
             
            SizedBox(
              height: 22,
            ),
           SizedBox(
              height: 340,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),

                itemBuilder: (ctx,i){
                  return HorizontalList(
                    heading: 'Recommended',
                     tittle: 'UX/UI Designer\nBeginner ',
                      img: 'assets/images/Saly-10.png', 
                      startcolor: 0xFF9288E4, 
                      endcolor: 0xFF534EA7,
                      );
                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   //color: Colors.amber,
                    
                  //   child: Text('yooooooooooo',
                  //   style: TextStyle(
                  //     backgroundColor: Colors.blue ),
                  //     ),
                  // );
                },
                ),
            ),


             SizedBox(
               height: 30,
             ),

             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   'Free Online Class',
                   style: GoogleFonts.roboto(
                     fontSize: 25,
                     color: Colors.white,
                     fontWeight:FontWeight.bold,
                   ),
                 ),
                  
                 Text(
                   'From Over 80 Lectures',
                   style: GoogleFonts.roboto(
                     fontSize: 14,
                     color: Color(0xFF9C9A9A),
                     fontWeight:FontWeight.w500,
                   ),
                 ), 

               ],
             ),


             ListView.builder(
               shrinkWrap: true,
               itemCount: 4,
               itemBuilder: (ctx,i){
                  return Vertical_List(
                    img: 'assets/images/Saly-24.png', 
                    title: 'Flutter Developer', 
                    duration: '8 Hourse',
                    rating: 3.0);
               }),  


          ],
          ),
        ),
    );
  }
}