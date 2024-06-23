import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';
import 'package:nakshatra_frames/view/user/widgets/carosel_slider/corosel_slider_demo.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';
import 'package:nakshatra_frames/view/user/widgets/video_player/mob_tab_player.dart';
import 'package:nakshatra_frames/view/user/widgets/video_player/main_video_player.dart';

import '../../widgets/video_player/video_player1.dart';
import '../../widgets/video_player/video_player2.dart';
import '../../widgets/video_player/video_player3.dart';
import '../../widgets/video_player/video_player4.dart';

class VideoSectionContainer extends StatelessWidget {
  const VideoSectionContainer({
    super.key,
    // required this.sscrollcontroller,
  });

  // final ScrollController sscrollcontroller;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(top: 0.5),
        child: Column(
          children: [
            Container(
              color: Colors.black,
              //................................. OUR TEAM
              height: ResponsiveWebSite.isDesktop(context)
                  ? 600
                  : ResponsiveWebSite.isMobile(context)
                      ? 200
                      : 300,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0.5),
                child: ResponsiveWebSite.isMobile(context)
                    ? Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 200,
                              child: FullscreenSliderDemo(),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 150,
                            color: Colors.amber,
                          )
                        ],
                      )
                    : ResponsiveWebSite.isTablet(context)
                        ? Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 300,
                                  child: FullscreenSliderDemo(),
                                ),
                              ),
                              Container(
                                height: 300,
                                width: size.width / 3,
                                color: Colors.black,
                                child: ListView.builder(
                                    itemCount: 10,
                                    shrinkWrap: true,
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return const Card(
                                        child: ListTile(
                                          leading: FlutterLogo(size: 20.0),
                                          title: Text('Three-line ListTile'),
                                          subtitle: Text(
                                              'A sufficiently long subtitle warrants three lines.'),
                                          trailing: Icon(Icons.more_vert),
                                          isThreeLine: true,
                                        ),
                                      );
                                    }),
                              ),
                              // Container(
                              //   height: 300,
                              //   width: 200,
                              //   color: Colors.amber,
                              // )
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 600,
                                  width: size.width - size.width / 3,
                                  child: FullscreenSliderDemo(),
                                ),
                              ),
                              Container(
                                height: 600,
                                width: size.width / 3,
                                color: Colors.black,
                                child: ListView.builder(
                                    itemCount: 10,
                                    shrinkWrap: true,
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return const Card(
                                        child: ListTile(
                                          leading: FlutterLogo(size: 72.0),
                                          title: Text('Three-line ListTile'),
                                          subtitle: Text(
                                              'A sufficiently long subtitle warrants three lines.'),
                                          trailing: Icon(Icons.more_vert),
                                          isThreeLine: true,
                                        ),
                                      );
                                    }),
                              )
                            ],
                          ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  child: const Center(
                      child: Text(
                    "Our Works",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: Colors.white),
                  )),
                ),
                Container(
                  height: ResponsiveWebSite.isDesktop(context) ? 500 : 200,
                  
                  child: const SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            VideoPlayer1ContainerWidgets(),
                            VideoPlayer2ContainerWidgets(),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            VideoPlayer3ContainerWidgets(),
                            VideoPlayer4ContainerWidgets(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
            // Container(
            //     color: Colors.black,
            //     height: ResponsiveWebSite.isDesktop(context) ? 400 : 200,
            //     // width: 600,
            //     child: GridView.count(
            //       crossAxisCount:2,
            //       //  ResponsiveWebSite.isMobile(context)
            //       //     ? 2
            //       //     : ResponsiveWebSite.isTablet(context)
            //       //         ? 2
            //       //         : 4,
            //       padding: const EdgeInsets.all(10),
            //       crossAxisSpacing: 10,
            //       mainAxisSpacing: 10,
            //       primary: false,
            //       children: List.generate(4, (index) {
            //         return Container(
            //           // margin: ,
            //           height: 200,
            //           width: 400,
            //           color:Colors.black,
            //           child: Column(
            //             children: [
            //               Container(
            //                 height: ResponsiveWebSite.isMobile(context)?100:ResponsiveWebSite.isTablet(context)?150:200,

            //                 width: ResponsiveWebSite.isMobile(context)?150:ResponsiveWebSite.isTablet(context)?250:350,
            //                 child: GestureDetector(
            //                   child: ResponsiveWebSite.isDesktop(context)?
            //                   Container(height: 180,
            //                   width: 360,

            //                     child: VideoPlayerDemo()):
            //                   VideoPlayerApp(),

            //                   // Image.asset(
            //                   //   "webassets/images/leptonlogo.png",
            //                   // ),

            //                   // onTap: () => launchUrl(Uri.parse(
            //                   //     state.videos[index].url)),
            //                   // child: Image.network(
            //                   //   // state.videos[index].thumbnailurl,
            //                   // ),
            //                 ),
            //               ),
            //               const Text(
            //                 "sdfs",
            //                 // state.videos[index].title,
            //                 // style: const TextStyle(
            //                     style: TextStyle(color: Colors.white),
            //                 //     fontWeight: FontWeight.w400),
            //               ),
            //               GooglePoppinsWidgets(
            //                 text: "hi",
            //                 //  state.videos[index].subtitle,
            //                 fontsize: 10,
            //                  color: Colors.white,
            //                 // fontWeight: FontWeight.w200,
            //               )
            //             ],
            //           ),
            //         );
            //       }),
            //     ))
          ],
        ));
  }
}

class VideoPlayerContainerWidgets extends StatelessWidget {
  const VideoPlayerContainerWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: ,
      height: 300,
      width: 400,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: ResponsiveWebSite.isMobile(context)
                ? 100
                : ResponsiveWebSite.isTablet(context)
                    ? 150
                    : 200,
            width: ResponsiveWebSite.isMobile(context)
                ? 150
                : ResponsiveWebSite.isTablet(context)
                    ? 250
                    : 350,
            child: GestureDetector(
              child: ResponsiveWebSite.isDesktop(context)
                  ? Container(height: 180, width: 360, child: VideoPlayerDemo1())
                  : VideoPlayerApp(),

              // Image.asset(
              //   "webassets/images/leptonlogo.png",
              // ),

              // onTap: () => launchUrl(Uri.parse(
              //     state.videos[index].url)),
              // child: Image.network(
              //   // state.videos[index].thumbnailurl,
              // ),
            ),
          ),
          const Text(
            "sdfs",
            // state.videos[index].title,
            // style: const TextStyle(
            style: TextStyle(color: Colors.white),
            //     fontWeight: FontWeight.w400),
          ),
          GooglePoppinsWidgets(
            text: "hi",
            //  state.videos[index].subtitle,
            fontsize: 10,
            color: Colors.white,
            // fontWeight: FontWeight.w200,
          )
        ],
      ),
    );
  }
}

class VideoPlayer1ContainerWidgets extends StatelessWidget {
  const VideoPlayer1ContainerWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: ResponsiveWebSite.isMobile(context)
              ? 100
              : ResponsiveWebSite.isTablet(context)
                  ? 150
                  : 250,
          width: ResponsiveWebSite.isMobile(context)
              ? 150
              : ResponsiveWebSite.isTablet(context)
                  ? 250
                  : 450,
          child: GestureDetector(
            child: ResponsiveWebSite.isDesktop(context)
                ? Container(
                    height: 250, width: 450, child: const VideoPlayer1())
                : Container(height: 100, width: 220,child: VideoPlayerApp()),
    
            // Image.asset(
            //   "webassets/images/leptonlogo.png",
            // ),
    
            // onTap: () => launchUrl(Uri.parse(
            //     state.videos[index].url)),
            // child: Image.network(
            //   // state.videos[index].thumbnailurl,
            // ),
          ),
        ),
        const Text(
          "sdfs",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "hi",
          //  state.videos[index].subtitle,
          fontsize: 10,
          color: Colors.white,
          // fontWeight: FontWeight.w200,
        )
      ],
    );
  }
}

class VideoPlayer2ContainerWidgets extends StatelessWidget {
  const VideoPlayer2ContainerWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: ResponsiveWebSite.isMobile(context)
              ? 100
              : ResponsiveWebSite.isTablet(context)
                  ? 150
                  : 250,
          width: ResponsiveWebSite.isMobile(context)
              ? 150
              : ResponsiveWebSite.isTablet(context)
                  ? 250
                  : 450,
          child: GestureDetector(
            child: ResponsiveWebSite.isDesktop(context)
                ? Container(
                    height: 250, width: 450, child: const VideoPlayer2())
                : Container(height: 100, width: 220,child: VideoPlayerApp()),
    
            // Image.asset(
            //   "webassets/images/leptonlogo.png",
            // ),
    
            // onTap: () => launchUrl(Uri.parse(
            //     state.videos[index].url)),
            // child: Image.network(
            //   // state.videos[index].thumbnailurl,
            // ),
          ),
        ),
        const Text(
          "sdfs",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "hi",
          //  state.videos[index].subtitle,
          fontsize: 10,
          color: Colors.white,
          // fontWeight: FontWeight.w200,
        )
      ],
    );
  }
}

class VideoPlayer3ContainerWidgets extends StatelessWidget {
  const VideoPlayer3ContainerWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: ResponsiveWebSite.isMobile(context)
              ? 100
              : ResponsiveWebSite.isTablet(context)
                  ? 150
                  : 250,
          width: ResponsiveWebSite.isMobile(context)
              ? 150
              : ResponsiveWebSite.isTablet(context)
                  ? 250
                  : 450,
          child: GestureDetector(
            child: ResponsiveWebSite.isDesktop(context)
                ? Container(
                    height: 250, width: 450, child: const VideoPlayer3())
                : VideoPlayerApp(),
    
            // Image.asset(
            //   "webassets/images/leptonlogo.png",
            // ),
    
            // onTap: () => launchUrl(Uri.parse(
            //     state.videos[index].url)),
            // child: Image.network(
            //   // state.videos[index].thumbnailurl,
            // ),
          ),
        ),
        const Text(
          "sdfs",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "hi",
          //  state.videos[index].subtitle,
          fontsize: 10,
          color: Colors.white,
          // fontWeight: FontWeight.w200,
        )
      ],
    );
  }
}

class VideoPlayer4ContainerWidgets extends StatelessWidget {
  const VideoPlayer4ContainerWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: ResponsiveWebSite.isMobile(context)
              ? 100
              : ResponsiveWebSite.isTablet(context)
                  ? 150
                  : 250,
          width: ResponsiveWebSite.isMobile(context)
              ? 150
              : ResponsiveWebSite.isTablet(context)
                  ? 250
                  : 450,
          child: GestureDetector(
            child: ResponsiveWebSite.isDesktop(context)
                ? Container(
                    height: 250, width: 450, child: const VideoPlayer4())
                : VideoPlayerApp(),
    
            // Image.asset(
            //   "webassets/images/leptonlogo.png",
            // ),
    
            // onTap: () => launchUrl(Uri.parse(
            //     state.videos[index].url)),
            // child: Image.network(
            //   // state.videos[index].thumbnailurl,
            // ),
          ),
        ),
        const Text(
          "sdfs",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "hi",
          //  state.videos[index].subtitle,
          fontsize: 10,
          color: Colors.white,
          // fontWeight: FontWeight.w200,
        )
      ],
    );
  }
}
