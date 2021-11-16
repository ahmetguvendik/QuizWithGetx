import 'package:bilgiyarismasi/constant/constant.dart';
import 'package:bilgiyarismasi/models/soru_model.dart';
import 'package:bilgiyarismasi/views/result.dart';
import 'package:get/get.dart';

class SoruController extends GetxController{
    var soruList = List<Sorular>().obs;
    var count = 0.obs;
    var point = 0.obs;

    @override
    void onInit() {
        // TODO: implement onInit
        soruAl();
        super.onInit();
    }

    void soruAl(){
        var response = [
            Sorular(soru: Questions.soru1, yanit: true),
            Sorular(soru: Questions.soru2, yanit: false),
            Sorular(soru: Questions.soru3, yanit: false),
            Sorular(soru: Questions.soru4, yanit: false),
            Sorular(soru: Questions.soru5, yanit: true),
            Sorular(soru: Questions.soru6, yanit: true),
            Sorular(soru: Questions.soru7, yanit: false),
            Sorular(soru: Questions.soru8, yanit: true),
        ];
            soruList.value = response;
    }

    String getSoru(){
        return soruList[count.value].soru;
}

    bool getYanit(){
        return soruList[count.value].yanit;
    }

    void soruKontrol(){
        if(count< soruList.length-1){
            count++;
    }
        else{
            Get.offAll(Result());
        }
    }

    void reset(){
         count.value=0;
         point.value=0;
    }
}