import 'package:apptide/wallet_view/screen/wallet_screen.dart';
import 'package:apptide/widgets/card_widget.dart';
import 'package:apptide/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,          
          children: [            
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.spaceAround ,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:56.0,  ),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10.0) ,
                    ) ,
                    child:   IconButton(
                      padding: const EdgeInsets.all(12.0 ) ,
                      onPressed: () {                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyWalletScreen()),
                        );                          
                      }, 
                      icon: const Icon(
                      Icons.arrow_back,
                       size: 20.0, 
                       color: Color(0xffFA3D3D),
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 56.0, left:160.0 ),
                  child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFDFDF),
                        borderRadius: BorderRadius.circular(10.0) ,
                      ) ,
                      child:  Padding(                      
                        padding: const EdgeInsets.all(12.0 ),
                        child: SvgPicture.asset('assets/images/notification.svg'),
                      ),
                  ),
                ),
                const SizedBox(
                  width:16,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 56.0, right: 24.0),
                  child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFDFDF),
                        borderRadius: BorderRadius.circular(10.0) ,
                      ) ,
                      child:  Padding(                        
                        padding: const EdgeInsets.all(12.0 ),
                        child: SvgPicture.asset('assets/images/search.svg'),
                      ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const TextWidget(                        
              leftPadding: 22.0,              
              text:'Sunday, 16 Mar',
              fontSize: 14.0,
              fontWeight: FontWeight.w400 ,
              color: Color(0xffB0B3C7) ,          
            ),
            const TextWidget( 
              topPadding: 40.0,                       
              leftPadding: 22.0,              
              text:'Hi, Ibrahim',
              fontSize: 28.0,
              fontWeight: FontWeight.w400 ,
              color: Color(0xff262C3D) ,          
            ),
            const SizedBox(
              height: 43.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: const [
                TextWidget(                        
                  leftPadding: 22,
                  text:'Don’t forget',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400 ,
                  color: Color(0xff262C3D) ,          
                ),
                TextWidget(                        
                  rightPadding: 21,
                  text:'Clear',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500 ,
                  color: Color(0xffFF6F5B) ,          
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left:22.0, right: 22.0),
              child: Container(
                width: 327.0,
                height: 54.0,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15.0) ,
                  border: Border.all(
                    color: Colors.black12
                  )
                ) ,
                child:   Padding(
                  padding: const EdgeInsets.only(top:4.0, left: 4.0 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.64),
                            child: SvgPicture.asset('assets/images/Group.svg'),
                          ),
                          const TextWidget(
                            topPadding: 10.0,
                            leftPadding: 16.65,
                            text:'Meet Dr. Chikanso',
                            fontSize: 16.0, 
                            fontWeight: FontWeight.w500 ,
                            color: Color(0xff262C3D),           
                          ),
                        ],
                      ),
                      const TextWidget(
                        topPadding: 10.0,
                        rightPadding: 8.18,
                        text:'14:30 PM',
                        fontSize: 12.0, 
                        fontWeight: FontWeight.w400 ,
                        color: Color(0xffFB3C3C),           
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'What medical service\n do you need today',
                style: GoogleFonts.poppins(
                  color: const Color(0xff262C3D),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500 ,
                ),
              ),
            ),  
            
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child:  Row(
                children:  [
                  const Expanded(
                    child: CardWidget(
                      iconSrc: 'assets/images/doctor.svg',
                      text: Text(
                        'See a\n Doctor ',
                        style: TextStyle(
                          color: Color(0xff262C3D),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500 ,
                        ),
                        )                  
                    ),
                  ),
                  
                  const Expanded(
                    child: CardWidget(
                      iconSrc: 'assets/images/Pill.svg',
                      text: Text(
                        'Pharmacy ',
                        style: TextStyle(
                          color: Color(0xff262C3D),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500 ,
                        ),
                        )                  
                    ),
                  ),
              
                  Expanded(
                    child: CardWidget(
                      iconSrc: 'assets/images/Home.svg',
                      text: Text(
                        'MedonCall \n care ',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff262C3D),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500 ,
                        ),
                        )                  
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height:35.0
            ),
            const TextWidget(
              // topPadding: 10.0,
              leftPadding: 27.0,
              text:'Doctors near you',
              fontSize: 12.0, 
              color: Color(0xff03032A),
              fontWeight: FontWeight.w500,           
            ),
            const SizedBox(
              height:14.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Card3Widget(
                      color: Color(0xffFB3C3C), 
                      firstText: TextWidget(              
                        leftPadding: 7.15,
                        text:'Dr. ToyinToyin',
                        fontSize: 8.0, 
                        color:  Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,           
                      ), 
                      secondText: TextWidget(              
                        leftPadding: 7.15,
                        text:'General Physician',
                        fontSize: 8.0, 
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,           
                      ),                   
                    ),
                  ),
                  Expanded(
                    child: Card3Widget( 
                      firstText: TextWidget(              
                        leftPadding: 7.15,
                        text:'Dr. ToyinToyin',
                        fontSize: 8.0, 
                        color:  Color(0xff0C0B52),
                        fontWeight: FontWeight.w500,           
                      ), 
                      secondText: TextWidget(              
                        leftPadding: 7.15,
                        text:'General Physician',
                        fontSize: 8.0, 
                        color: Color(0xff5A5987),
                        fontWeight: FontWeight.w500,           
                      ),                       
                    ),
                  ),
                  Expanded(
                    child: Card3Widget(  
                      firstText: TextWidget(              
                        leftPadding: 7.15,
                        text:'Dr. ToyinToyin',
                        fontSize: 8.0, 
                        color:  Color(0xff0C0B52),
                        fontWeight: FontWeight.w500,           
                      ), 
                      secondText: TextWidget(              
                        leftPadding: 7.15,
                        text:'General Physician',
                        fontSize: 8.0, 
                        color: Color(0xff5A5987),
                        fontWeight: FontWeight.w500,           
                      ),                      
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height:37.39
            ),
            const TextWidget(
              // topPadding: 10.0,
              leftPadding: 27.0,
              text:'Specialist',
              fontSize: 12.0, 
              color: Color(0xff03032A),
              fontWeight: FontWeight.w500,           
            ),
            const SizedBox(
              height:13.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Card2Widget(
                      iconSrc: 'assets/images/Kidney.svg',
                      text: TextWidget(
                        // topPadding: 10.0,
                        leftPadding: 12.0,
                        text:'Endocrine',
                        fontSize: 12.0, 
                        color: Color(0xff5A5987),
                        fontWeight: FontWeight.w500,           
                      ), 
                    ),
                  ),
                  Expanded(
                    child: Card2Widget(
                      iconSrc: 'assets/images/Male.svg',
                      text: TextWidget(
                        // topPadding: 10.0,
                        leftPadding: 12.0,
                        text:'Andrology',
                        fontSize: 12.0, 
                        color: Color(0xff5A5987),
                        fontWeight: FontWeight.w500,           
                      ), 
                    ),
                  ),
                  Expanded(
                    child: Card2Widget(
                      iconSrc: 'assets/images/Hair.svg',
                      text:                       
                      TextWidget(                        
                        text:'Dermatology',
                        fontSize: 12.0, 
                        color: Color(0xff5A5987),
                        fontWeight: FontWeight.w500,           
                      ), 
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}