import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nakshatra_frames/view/user/widgets/home_page_widgets/home_page_widgets.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';
import 'package:nakshatra_frames/view/user/widgets/video_player/about_video/about_video.dart';
import 'package:nakshatra_frames/view/user/widgets/video_player/main_video_player.dart';
import 'package:nakshatra_frames/view/user/widgets/video_player/mob_tab_player.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';



// ignore: must_be_immutable
class NakshatraFramesHomePage extends StatefulWidget {
 const NakshatraFramesHomePage({super.key});

  @override
  State<NakshatraFramesHomePage> createState() => _NakshatraFramesHomePageState();
}

class _NakshatraFramesHomePageState extends State<NakshatraFramesHomePage> {
  // void _launchURL(String url) async {
  @override
  Widget build(BuildContext context) {
    setState(() {
      
    });
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const HomePageImageWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: ResponsiveWebSite.isMobile(context) ? 70 : 80,
                      color: Colors.transparent,
                      child: ResponsiveWebSite.isDesktop(context)
                          ? Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: const FaIcon(
                                          size: 20,
                                          FontAwesomeIcons.facebook,
                                          color: Colors.blue,
                                        ),
                                        onPressed:() {
                                          
                                        },
                                        // onPressed: () =>
                                        //  _launchURL(
                                        //     'https://www.facebook.com'),
                                      ),
                                      IconButton(
                                        icon: const FaIcon(
                                          size: 20,
                                          FontAwesomeIcons.instagram,
                                          color:
                                              Color.fromARGB(255, 217, 83, 128),
                                        ),
                                               onPressed:() {
                                          
                                        },
                                        // onPressed: () => _launchURL(
                                        //     'https://www.instagram.com'),
                                      ),
                                      IconButton(
                                        focusColor: Colors.black,
                                        icon: const FaIcon(
                                          size: 20,
                                          FontAwesomeIcons.xTwitter,
                                          color: Colors.white,
                                        ),
                                               onPressed:() {
                                          
                                        },
                                        // onPressed: () => _launchURL(
                                        //     'https://www.twitter.com'),
                                      ),
                                      IconButton(
                                        icon: const FaIcon(
                                          size: 20,
                                          FontAwesomeIcons.youtube,
                                          color: Colors.red,
                                        ),
                                               onPressed:() {
                                          
                                        },
                                        // onPressed: () => _launchURL(
                                        //     'https://www.youtube.com'),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                ResponsiveWebSite.isMobile(context)
                                    ? const Icon(
                                        Icons.menu,
                                        size: 20,
                                        color: Colors.white,
                                      )
                                    : const AppbarWidgets(),
                              ],
                            )
                          : Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                      'webassets/images/leptonlogo.png'),
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "+91 471 4053483",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                        VerticalDivider(
                                          width: 20,
                                          thickness: 3,
                                          indent: 20,
                                          endIndent: 0,
                                          color: Colors.white,
                                        ),
                                        Text("framesnakshatra@gmail.com",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: const FaIcon(
                                            size: 15,
                                            FontAwesomeIcons.facebook,
                                            color: Colors.white,
                                          ),
                                                 onPressed:() {
                                          
                                        },
                                          // onPressed: () => _launchURL(
                                          //     'https://www.facebook.com'),
                                        ),
                                        IconButton(
                                          icon: const FaIcon(
                                            size: 15,
                                            FontAwesomeIcons.instagram,
                                            color: Color.fromARGB(
                                                255, 217, 83, 128),
                                          ),
                                                 onPressed:() {
                                          
                                        },
                                          // onPressed: () => _launchURL(
                                          //     'https://www.instagram.com'),
                                        ),
                                        IconButton(
                                          focusColor: Colors.black,
                                          icon: const FaIcon(
                                            size: 15,
                                            FontAwesomeIcons.xTwitter,
                                            color: Colors.white,
                                          ),
                                                 onPressed:() {
                                          
                                        },
                                          // onPressed: () => _launchURL(
                                          //     'https://www.twitter.com'),
                                        ),
                                        IconButton(
                                          icon: const FaIcon(
                                            size: 15,
                                            FontAwesomeIcons.youtube,
                                            color: Colors.red,
                                          ),
                                                 onPressed:() {
                                          
                                        },
                                          // onPressed: () => _launchURL(
                                          //     'https://www.youtube.com'),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                ),
              ],
            ),
            ResponsiveWebSite.isDesktop(context)
                ? Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          height: 548,
                         color: Colors.black,
                          width: screenSize.width / 1.575,
                          child:  const VideoPlayerDemo1(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          height: 548,
                          width: screenSize.width - screenSize.width / 1.56,
                          color: Colors.black,
                          child: const AboutVideoText(),
                        ),
                      ),
                    ],
                  )
                : ResponsiveWebSite.isTablet(context)
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 400,
                              color: Colors.black,
                              width: double.infinity,
                              child:  VideoPlayerApp(),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SizedBox(
                              height: 400,
                              child: AboutVideoText(),
                              // width: screenSize.width/2,
                              // child: VideoPlayerDemo(),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 300,
                              color: Colors.black,
                              child:  VideoPlayerApp(),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SizedBox(
                              height: 400,
                              child: AboutVideoText(),
                              // width: screenSize.width/2,
                              // child: VideoPlayerDemo(),
                            ),
                          ),
                        ],
                      ),
            // const NakshatraReadMoreContainerWidget(),
            // const VideoSectionContainer(),
            // const ContactAndDeatilsWidget(),
            // const FooterSectionScreen(),
            // const NakshatraFooterBar(),
            // const CopyRightWidget()
          ],
        ),
      )),
    );
  }
}
