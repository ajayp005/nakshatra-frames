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
                                flex: 1,
                                child: SizedBox(
                                  height: 300,
                                  child: FullscreenSliderDemo(),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 300,
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
                                            leading:SizedBox(child: Image.asset("webassets/images/leptonlogo.png"),),
                                            title:  Text(heading[index]),
                                            subtitle:  Text(detailText[index]),
                                            trailing: const Icon(Icons.more_vert),
                                            isThreeLine: true,
                                          ),
                                        );
                                      }),
                                ),
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
                  height: ResponsiveWebSite.isDesktop(context) ? 600 :ResponsiveWebSite.isTablet(context)?410: 1150,
                  
                  child:  ResponsiveWebSite.isMobile(context) ? 
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
  'Lepton LilSTARS',
  'TeleOP',
  'Lepton Dujo',
  'Vidyaveechi'
];
List<String> detailText= [
  "By introducing Lepton LilSTARS combined with assistive tools educators can create an inclusive and supportive educational experience that ensures differently abled students have equal opportunities to learn, thrive, and reach their full potential.",
  " Health and wellbeing has never been so important than today. It is, therefore essential to seek professional care to ensure the right treatment at the right time. Time is the most crucial factor, Lepton Plus Communications provides the best healthcare services through TeleOP in an affordable manner from the convenience of your home.",
  "LeptonDuJo is a comprehensive school management app designed to streamline administrative tasks, enhance communication between stakeholders, and improve overall efficiency in educational institutions. It offers a range of features and tools that cater to the diverse needs of administrators, teachers, students, and parents, facilitating seamless management and collaboration.",
  "At Vidyaveechi, we understand the importance of quality education. We bring you an innovative mobile app that redefines the learning experience for students, parents, teachers, and the management. Our app is designed to provide seamless communication, advanced teaching tools, and AI-powered doubt clearing to ensure your academic success.",
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
          "Lepton LilSTARS ",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "School Product",
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
          "TeleOP",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "Medical Product",
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
          "TeleOP",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "Medical Product",
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
          "TeleOP",
          // state.videos[index].title,
          // style: const TextStyle(
          style: TextStyle(color: Colors.white),
          //     fontWeight: FontWeight.w400),
        ),
        GooglePoppinsWidgets(
          text: "Medical Product",
          //  state.videos[index].subtitle,
          fontsize: 10,
          color: Colors.white,
          // fontWeight: FontWeight.w200,
        )
      ],
    );
  }
}
