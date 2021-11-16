import 'package:bilgiyarismasi/constant/constant.dart';
import 'package:bilgiyarismasi/controller/soru_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HomePage extends StatelessWidget {
  SoruController soruController = Get.put(SoruController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Texts.appBar),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>Center(child: Text(soruController.getSoru()))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                      buttonYes();
                }, child: Text(Texts.yes)),
                widthWithSizedBox.withSizedBox,
                ElevatedButton(onPressed: (){
                    buttonNo();
                }, child: Text(Texts.no))
              ],
            )
          ],
        ),
      )
    );
  }
}

void buttonYes(){
  SoruController soruController = Get.find();
  bool dogruYanit = soruController.getYanit();
  if(dogruYanit == true){
    soruController.point.value++;
  }
  soruController.soruKontrol();
}

void buttonNo(){
  SoruController soruController = Get.find();
  bool dogruYanit = soruController.getYanit();
  if(dogruYanit == false){
    soruController.point.value++;
  }
  soruController.soruKontrol();
}