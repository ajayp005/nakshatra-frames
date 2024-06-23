import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';

class BackButtonContainerWidget extends StatelessWidget {
  const BackButtonContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 30,
        width: 80,
        decoration: const BoxDecoration(
          color:  Color.fromARGB(255, 6, 71, 157),
        ),
        child: Center(
          child: GooglePoppinsWidgets(
              text: 'BACK',
              color: Colors.white,
              fontsize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

warningShowDilogueBox(
    {required BuildContext context,
    required String title,
    required String discripition,
    required void Function()? onPressed}) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[Text(discripition)],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: onPressed,
            child: const Text('ok'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('cancel'),
          ),
        ],
      );
    },
  );
}
