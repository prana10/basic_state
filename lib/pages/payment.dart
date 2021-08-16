import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  // ignore: non_constant_identifier_names
  // final ScaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF04112F),
       body: SafeArea(
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             children: [         
               // ! image 
               Padding(
                 padding: const EdgeInsets.fromLTRB(55, 50, 55, 50),
                 child: Image.asset(
                   'assets/Achive_goal.png',
                   width: 267,
                   height: 200,
                   fit: BoxFit.cover,
                 ),
               ),
               // ! text 1
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                       child: Text(
                         "Upgrade to",
                         style: GoogleFonts.poppins(
                           color: Color(0xFFFFEBEE),
                           fontSize: 26,
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                     Text(
                       "Pro",
                       style: GoogleFonts.poppins(
                         color: Color(0xFF007DFF),
                         fontSize: 26,
                         fontWeight: FontWeight.w700,
                       ),
                     ),
                   ],
                 ),
               ),              
               // ! text 2
               Text(
                 "Go unlock all features and\nbuild your own business biger",
                 textAlign: TextAlign.center,
                 style: GoogleFonts.poppins(
                   color: Color(0xFF8997B8),
                   fontSize: 14,
                   fontWeight: FontWeight.w300,
                 ),
               ),
                SizedBox(height: 50),
               // ! button checkbox payment
               option(0, "Monthly", "Good for starting up", "\$22"),
               SizedBox(height: 16),
               option(1, "Quarterly", "Focusing on building", "\$55"),
               SizedBox(height: 16),
               option(2, "Yearly", "Steady company", "\$220"),
               SizedBox(height: 50),
               selectedIndex == -1 ? SizedBox() : CheckButton(),
               SizedBox(height: 50),
             ],
           ),
         ),
       ),
    );
  }

  CheckButton() => GestureDetector(
    onTap: (){},
    child: Container(
      padding: EdgeInsets.only(
        top: 11.5,
        bottom: 10.46,
        right: 72.1,
        left: 72.1,
      ),
      width: 311,
      height: 51.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(71),
        color: Color(0xff007DFF),
      ),
      child: Text(
        "Checkout Now",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    ),
  );

  GestureDetector option(int index, String title, String subtitle, String money) {
    return GestureDetector(
      onTap: (){
        setState((){
          selectedIndex = index;
        });
      },
      child: Container(
        //padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        width: 311,
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xFF04112F),
          borderRadius: BorderRadius.circular(14),
          border: Border.all( 
            color: selectedIndex == index ? Color(0xFF007DFF) : Color(0xFF4D5B7C),
          ),
        ),
    
        // ignore: todo
        //TODO Row yang akan diisi dengan check.png dan berbagai text
        child: Row(
          children: [
    
            // ! check button
            Padding(
              padding: EdgeInsets.fromLTRB(16, 25, 16, 25),
              child: Image.asset(
                selectedIndex == index ? "assets/check_selected.png" : "assets/check.png",
                  width: 18,
                  height: 18,
                  fit: BoxFit.cover,
              ),
            ),
    
            //! text column
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 50, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      color: Color(0xEEEEEEEE),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      color: Color(0xEEEEEEEE),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
    
            //! row text ($22,$55,dll)
            Text(
              money,
              style: GoogleFonts.poppins(
                color: Color(0xEEEEEEEE),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
