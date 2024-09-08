import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:shesafe/screens/login_screens/login_screen.dart';
import 'package:shesafe/screens/profile_page.dart';
import '../utils/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          child: SizedBox.expand(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: <Widget>[


                //HOME PAGE
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      topRow(),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() => _currentIndex = 2);
                          _pageController.jumpToPage(2);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                          ),
                          child: const Center(
                            child: Text(
                              'LOW',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      GestureDetector(
                        onTap: (){
                          setState(() => _currentIndex = 2);
                          _pageController.jumpToPage(2);
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                          ),
                          height: 200,
                          child: const Center(
                            child: Text(
                              'HIGH',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() => _currentIndex = 2);
                          _pageController.jumpToPage(2);
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                          ),
                          height: 200,
                          child: const Center(
                            child: Text(
                              'SEVERE',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                //VIDEOS PAGE
                Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                child: Container(
                                    margin: const EdgeInsets.all(12),
                                    child: YoutubePlayer(
                                      controller: YoutubePlayerController(
                                        initialVideoId: 'jAh0cU1J5zk',
                                        flags: const YoutubePlayerFlags(
                                          autoPlay: false,
                                          mute: true,
                                        ),
                                      ),
                                      showVideoProgressIndicator: true,
                                      progressIndicatorColor: Colors.blue,
                                      progressColors: const ProgressBarColors(
                                          playedColor: Colors.blue,
                                          handleColor: Colors.blueAccent
                                      ),
                                    ),
                                  ),
                              ),

                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                child: Container(
                                  margin: const EdgeInsets.all(12),
                                  child: YoutubePlayer(
                                    controller: YoutubePlayerController(
                                      initialVideoId: 'S32KxQK0Ydg',
                                      flags: const YoutubePlayerFlags(
                                        autoPlay: false,
                                        mute: true,
                                      ),
                                    ),
                                    showVideoProgressIndicator: true,
                                    progressIndicatorColor: Colors.blue,
                                    progressColors: const ProgressBarColors(
                                        playedColor: Colors.blue,
                                        handleColor: Colors.blueAccent
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                child: Container(
                                  margin: const EdgeInsets.all(12),
                                  child: YoutubePlayer(
                                    controller: YoutubePlayerController(
                                      initialVideoId: 'CLcN_esKh20',
                                      flags: const YoutubePlayerFlags(
                                        autoPlay: false,
                                        mute: true,
                                      ),
                                    ),
                                    showVideoProgressIndicator: true,
                                    progressIndicatorColor: Colors.blue,
                                    progressColors: const ProgressBarColors(
                                        playedColor: Colors.blue,
                                        handleColor: Colors.blueAccent
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                child: Container(
                                  margin: const EdgeInsets.all(12),
                                  child: YoutubePlayer(
                                    controller: YoutubePlayerController(
                                      initialVideoId: 'pndPbpHLpos',
                                      flags: const YoutubePlayerFlags(
                                        autoPlay: false,
                                        mute: true,
                                      ),
                                    ),
                                    showVideoProgressIndicator: true,
                                    progressIndicatorColor: Colors.blue,
                                    progressColors: const ProgressBarColors(
                                        playedColor: Colors.blue,
                                        handleColor: Colors.blueAccent
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                //CONTACTS PAGE
                SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Text(
                            'Close Contacts',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: headingColor,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Mom',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: headingColor,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Dad',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: headingColor,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Sister',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: headingColor,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Brother',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: headingColor,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Krishna',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: headingColor,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Tanmay',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: headingColor,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Nishika',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: headingColor,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Saksham',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),


                const ProfilePage(),


              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        iconSize: 20,
        containerHeight: 60,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
            activeColor: headingColor,
            icon: const FaIcon(FontAwesomeIcons.house),
          ),
          BottomNavyBarItem(
            title: const Text(
              'Videos',
              style: TextStyle(fontSize: 18),
            ),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
            activeColor: headingColor,
            icon: const FaIcon(FontAwesomeIcons.youtube),
          ),
          BottomNavyBarItem(
            title: const Text(
              'Contacts',
              style: TextStyle(fontSize: 18),
            ),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
            activeColor: headingColor,
            icon: const FaIcon(
              FontAwesomeIcons.phone,
            ),
          ),
          BottomNavyBarItem(
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 18),
            ),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black,
            activeColor: headingColor,
            icon: const FaIcon(FontAwesomeIcons.userLarge),
          ),
        ],
      ),
    );
  }


  Widget topRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            const Text(
              'Current Location',
              style: TextStyle(
                color: Color(0xffb20202),
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  size: 17,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Delhi, India',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
          },
          icon: const FaIcon(
            FontAwesomeIcons.solidCircleUser,
            size: 35,
          ),
        ),
      ],
    );
  }

}
