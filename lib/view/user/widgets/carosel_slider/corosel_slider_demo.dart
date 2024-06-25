import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  "https://firebasestorage.googleapis.com/v0/b/vidya-veechi-8-feb-2024.appspot.com/o/nakshatra_frames%2Fdujo_lit%20(1).png?alt=media&token=fe144b83-50e3-4596-9401-ce34d76c0414",
  "https://firebasestorage.googleapis.com/v0/b/vidya-veechi-8-feb-2024.appspot.com/o/nakshatra_frames%2Fdujo_lit%20(2).png?alt=media&token=6eda4942-ada1-423f-b083-c7ee2039ac28",
  "https://firebasestorage.googleapis.com/v0/b/vidya-veechi-8-feb-2024.appspot.com/o/nakshatra_frames%2Fdujo_lit%20(3).png?alt=media&token=d6cb47cc-18ad-469b-81dd-f512cc78db65",
  "https://firebasestorage.googleapis.com/v0/b/vidya-veechi-8-feb-2024.appspot.com/o/nakshatra_frames%2Fdujo_lit%20(4).png?alt=media&token=b7b3a484-b8f0-4afa-aef3-f0b34a34ba2e"
  // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];



final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();


class FullscreenSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              
              autoPlay: true,
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
                  color: Colors.black,
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.fill,
                  
                        height: height,
                      )),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}


// class ComplicatedImageDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title: const Text('Complicated image slider demo')),
//       body: Container(
//         child: CarouselSlider(
//           options: CarouselOptions(
//             autoPlay: true,
//             aspectRatio: 2.0,
//             enlargeCenterPage: true,
//           ),
//           items: imageSliders,
//         ),
//       ),
//     );
//   }
// }