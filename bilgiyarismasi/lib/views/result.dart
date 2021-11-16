import 'package:bilgiyarismasi/constant/constant.dart';
import 'package:bilgiyarismasi/controller/soru_controller.dart';
import 'package:bilgiyarismasi/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Result extends StatelessWidget {
  SoruController soruController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Texts.point),
            heightWithSizedBox.heightSizedBox,
            Text(
                soruController.point.value.toString()
            ),
            heightWithSizedBox.heightSizedBox,
            ElevatedButton(onPressed: (){
                  playAgain();
            }, child: Text("TEKRAR OYNAYIN"))
          ],
        ),
      )
    );
  }
}

void playAgain(){
  SoruController soruController = Get.find();
  soruController.reset();
  Get.offAll(HomePage());
}