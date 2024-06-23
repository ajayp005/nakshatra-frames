import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutVideoText extends StatelessWidget {
  const AboutVideoText({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Container(
      child:  Column(
       
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Container(child: Text("What is Lorem Ipsum?",style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(child: Text("Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry. \nLorem Ipsum has been the industry's \nstandard dummy text ever since the 1500s, \nwhen an unknown printer took a galley \nof type and scrambled it to make a type \nspecimen book. It has survived not only \nfive centuries, but also the leap into electronic \ntypesetting, remaining essentially unchanged. \nIt was popularised in the 1960s with the release \nof Letraset sheets containing Lorem Ipsum passages, \nand more recently with desktop publishing \nsoftware like Aldus PageMaker including versions \nof Lorem Ipsum.",style: TextStyle(fontSize: 15,color: Colors.white),)),
          ],
        )
      ],)
    ),
      
    );
  }
}