import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';
import 'package:nakshatra_frames/view/user/widgets/carosel_slider/corosel_slider_demo.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';
import 'package:nakshatra_frames/view/user/widgets/video_player/main_video_player.dart';
import 'package:nakshatra_frames/view/user/widgets/video_player/mob_tab_player.dart';

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
                            child: SizedBox(
                              height: 200,
                              child: FullscreenSliderDemo(),
                            ),
                          ),
                        ],
                      )
                    : ResponsiveWebSite.isTablet(context)
                        ? Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 300,
                                  child: FullscreenSliderDemo(),
                                ),
                              ),
                              Container(
                                height: 300,
                                width: size.width / 3,
                                color: Colors.black,
                                child: ListView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return  Card(
                                        child: ListTile(
                                          leading:SizedBox(child: Image.asset("webassets/images/leptonlogo.png"),),
                                          title:  Text(heading[index]),
                                          subtitle:  Text(detailText[index]),
                                          trailing: const Icon(Icons.more_vert),
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
                                flex: 1,
                                child: SizedBox(
                                  height: 500,
                                  // width: size.width - size.width / 3,
                                  child: FullscreenSliderDemo(),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Container(
                                    height: 500,
                                    // width: size.width / 3,
                                    color: Colors.black,
                                    child: ListView.builder(
                                        itemCount: 4,
                                        shrinkWrap: true,
                                        physics:
                                            const AlwaysScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return  Card(
                                            child: ListTile(
                                              leading: SizedBox(child: Image.asset("webassets/images/leptonlogo.png"),),
                                              title:  Text(heading[index]),
                                              subtitle:  Text(detailText[index]),
                                              trailing: const Icon(Icons.more_vert),
                                              isThreeLine: true,
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                              )
                            ],
                          ),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                  child: Center(
                      child: Text(
                    "Our Works",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: Colors.white),
                  )),
                ),
                SizedBox(
                  height: ResponsiveWebSite.isDesktop(context) ? 500 : 400,
                  
                  child:  SingleChildScrollView(
                    child: ResponsiveWebSite.isMobile(context) ? 
                    const Column(
                      children: [
                       VideoPlayer1ContainerWidgets(),
                       VideoPlayer2ContainerWidgets(),
                       VideoPlayer3ContainerWidgets(),
                       VideoPlayer4ContainerWidgets(),
                    ],)
                   : const Column(
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

List<String> heading= [
  'Nakshatra Frames',
  'TeleOP',
  'Lepton Dujo',
  'Vidyaveechi'
];
List<String> detailText= [
  "Imagination Beyond Stars",
  "Stay At Home, Care At Home",
  "Watch And Guide Let Them Study",
  "E-learning is not just a phase, it's the future's mainstay of education",
];

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
          SizedBox(
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
                  ? const SizedBox(height: 180, width: 360, child: VideoPlayerDemo1())
                  : const VideoPlayerApp(),

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
        SizedBox(
          height: ResponsiveWebSite.isMobile(context)
              ? 250
              : ResponsiveWebSite.isTablet(context)
                  ? 150
                  : 250,
          width: ResponsiveWebSite.isMobile(context)
              ? 350
              : ResponsiveWebSite.isTablet(context)
                  ? 250
                  : 450,
          child: GestureDetector(
            child:const VideoPlayerSmall()
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
          "Lepton",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "Products",
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
        SizedBox(
          height: ResponsiveWebSite.isMobile(context)
              ? 250
              : ResponsiveWebSite.isTablet(context)
                  ? 150
                  : 250,
          width: ResponsiveWebSite.isMobile(context)
              ? 350
              : ResponsiveWebSite.isTablet(context)
                  ? 250
                  : 450,
          child: GestureDetector(
            child: const VideoPlayerSecond(),
    
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
          "Lepton",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "Product",
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
        SizedBox(
          height: ResponsiveWebSite.isMobile(context)
              ? 250
              : ResponsiveWebSite.isTablet(context)
                  ? 150
                  : 250,
          width: ResponsiveWebSite.isMobile(context)
              ? 350
              : ResponsiveWebSite.isTablet(context)
                  ? 250
                  : 450,
          child: GestureDetector(
            child:const VideoPlayerAppThird(),
    
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
          "Lepton",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "Product",
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
        SizedBox(
          height: ResponsiveWebSite.isMobile(context)
              ? 250
              : ResponsiveWebSite.isTablet(context)
                  ? 150
                  : 250,
          width: ResponsiveWebSite.isMobile(context)
              ? 350
              : ResponsiveWebSite.isTablet(context)
                  ? 250
                  : 450,
          child: GestureDetector(
            child: const VideoPlayerAppFourth(),
    
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
          "Lepton",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "Product",
          //  state.videos[index].subtitle,
          fontsize: 10,
          color: Colors.white,
          // fontWeight: FontWeight.w200,
        )
      ],
    );
  }
}
