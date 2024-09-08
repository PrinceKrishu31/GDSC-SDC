import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/colors.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[bgColor1, bgColor2],
            tileMode: TileMode.mirror,
          ),
        ),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [

                Row(
                  children: [

                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const FaIcon(FontAwesomeIcons.circleArrowLeft, size: 30,)
                    ),

                    const SizedBox(width: 20,),

                    const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 30
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10,),


                CircleAvatar(
                  radius: 52,
                  backgroundColor: headingColor,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: FaIcon(FontAwesomeIcons.userLarge, color: Colors.black, size: 40,),
                  ),
                ),

                const SizedBox(height: 20,),

                Container(
                  width: double.infinity,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius:
                    const BorderRadius.all(Radius.circular(40)),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Verified User',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20
                            ),
                          ),

                          SizedBox(width: 5,),

                          FaIcon(FontAwesomeIcons.check, size: 20, color: Colors.green,),
                        ],
                      ),

                      const SizedBox(height: 10,),

                      const Divider(thickness: 1.5,),

                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Name:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                              ),
                            ),

                            SizedBox(width: 77,),

                            Text(
                              'Amrutha Vishwas',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'E-mail id:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),

                            SizedBox(width: 55,),

                            Text(
                              'amrutha@gmail.com',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Aadhaar No:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),

                            SizedBox(width: 30,),

                            Text(
                              '32XX-XXXX-XXXX',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Phone No:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),

                            SizedBox(width: 50,),

                            Text(
                              '+91 78XXXXXXXX',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'KYC Status:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),

                            SizedBox(width: 45,),

                            Text(
                              'Completed',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 40,),

                      const Divider(thickness: 1.5,),

                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: TextButton(
                          onPressed: (){},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),

                                  SizedBox(width: 5,),

                                  FaIcon(FontAwesomeIcons.pen, color: Colors.black, size:16,),
                                ],
                              ),

                              FaIcon(FontAwesomeIcons.arrowRight, color: Colors.black, size: 22,),

                            ],

                          ),
                        ),
                      ),


                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
