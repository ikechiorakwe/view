import 'package:apptide/home_view/screen/home_screen.dart';
import 'package:apptide/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  _MyWalletScreenState createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFA3D3D) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:57.0, left: 23.0 ),
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
                          MaterialPageRoute(builder: (context) => const MyHomeScreen()),
                        );                          
                      }, 
                      icon: const Icon(
                      Icons.arrow_back,
                       size: 16.0, 
                       color: Color(0xffFA3D3D),
                    ),
                    ),
                  ),
                ),
                const TextWidget(
                  topPadding: 60.0,
                  leftPadding: 70.0,
                  text:'Wallet',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,                
                )              
              ],
            ),
            const TextWidget(
              topPadding: 51.0,
              leftPadding: 1.58,
              text:'Balance',
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.white54 ,            
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0 , left: 0.82 ),
              child: RichText(
                text: TextSpan (
                  text: '24,500.00', style: 
                  GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w600 ,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'NGN', style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700 ,
                  ), )
                  ]
                ),
              ),
            ),
            // const TextWidget(
            //   topPadding: 40.0,
            //   leftPadding: 0.82,
            //   text:'24,500.00',
            //   fontSize: 36.0,
            //   fontWeight: FontWeight.w600,            
            // ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top:2.38, left:0.121),
              child: Container(
                width: 134.0,
                height: 41.0,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5.0) ,
                ) ,
                child:   Padding(
                  padding: const EdgeInsets.only(top:4.0, left: 4.0 ),
                  child: Row(
                    children:  [
                      const TextWidget(
                        topPadding: 10.0,
                        leftPadding: 21.5,
                        text:'TOP UP',
                        fontSize: 14.0, 
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFA3D3D),           
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:1.06, left: 25.0),
                        child: SvgPicture.asset('assets/images/Vector.svg'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0) , topRight: Radius.circular(30.0)),
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.expand_less,
                          size: 30.0, 
                          color: Colors.black12 ,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 21.59,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const TextWidget(                        
                        leftPadding: 21,
                        text:'History',
                        fontSize: 18.0,
                        color: Colors.black, 
                        fontWeight: FontWeight.w500,         
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, right: 21.0),
                        child: Container(
                          width: 114.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(30.0) ,
                            border: Border.all(
                              color: Colors.black12
                            )
                          ) ,
                          child:   Padding(
                            padding: const EdgeInsets.only(top:4.0, left: 4.0 ),
                            child: Row(
                              children: [
                                const TextWidget(
                                  topPadding: 10.0,
                                  leftPadding: 21.5,
                                  text:'Filter',
                                  fontSize: 12.0, 
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFA3D3D),           
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:1.06, left: 25.0),
                                  child: SvgPicture.asset('assets/images/filter.svg'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), 
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: const [
                        TextWidget(                        
                          leftPadding: 21,
                          text:'This Week',
                          fontSize: 12.0,
                          color: Colors.black26 ,
                          fontWeight: FontWeight.w500,          
                        ),
                        TextWidget(                        
                          rightPadding: 21,
                          text:'2021',
                          fontSize: 12.0,
                          color: Colors.black26 , 
                          fontWeight: FontWeight.w500,         
                        ),
                      ],
                    ),
                    ...List.generate(2, (index) => 
                      Padding(
                        padding: const EdgeInsets.fromLTRB(21.0, 8.0, 21.0, 8.0),
                        child: Container(                          
                           decoration: BoxDecoration(
                            color: const Color(0xffC4C4C4),
                            borderRadius: BorderRadius.circular(10.0) ,                            
                          ) ,
                          height: 70,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  TextWidget(                        
                                    leftPadding: 6.5,
                                    topPadding: 30.0,
                                    text:'Appointment with Dr. Toyin (Call)',
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black ,          
                                  ),
                                  TextWidget(                        
                                    rightPadding: 19.5,
                                    topPadding: 30.0,
                                    text:'NGN 5,000',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black ,          
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                   TextWidget(                        
                                    leftPadding: 6.5,
                                    topPadding: 12.0,
                                    text:'Duration: 4mins',
                                    fontSize: 8.0,
                                    color: Colors.black26 , 
                                    fontWeight: FontWeight.w500,         
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: const [
                        TextWidget(                        
                          leftPadding: 21,
                          text:'This Month',
                          fontSize: 12.0,
                          color: Colors.black26 , 
                          fontWeight: FontWeight.w500,         
                        ),
                        TextWidget(                        
                          rightPadding: 21,
                          text:'June 2021',
                          fontSize: 12.0,
                          color: Colors.black26 ,
                          fontWeight: FontWeight.w500,          
                        ),
                      ],
                    ),
                    ...List.generate(2, (index) => 
                      Padding(
                        padding: const EdgeInsets.fromLTRB(21.0, 8.0, 21.0, 8.0),
                        child: Container(                          
                           decoration: BoxDecoration(
                            color: const Color(0xffC4C4C4),
                            borderRadius: BorderRadius.circular(10.0) ,                            
                          ) ,
                          height: 70,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  TextWidget(                        
                                    leftPadding: 6.5,
                                    topPadding: 30.0,
                                    text:'Appointment with Dr. Toyin (Call)',
                                    fontSize: 11.0,
                                    color: Colors.black , 
                                    fontWeight: FontWeight.w500,         
                                  ),
                                  TextWidget(                        
                                    rightPadding: 19.5,
                                    topPadding: 30.0,
                                    text:'NGN 5,000',
                                    fontSize: 12.0,
                                    color: Colors.black , 
                                    fontWeight: FontWeight.w500,         
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                   TextWidget(                        
                                    leftPadding: 6.5,
                                    topPadding: 12.0,
                                    text:'Duration: 4mins',
                                    fontSize: 8.0,
                                    color: Colors.black26 ,
                                    fontWeight: FontWeight.w500,          
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ),

                  ],
                ),
              ),
        ],
        ),
      ),
    );
  }
}