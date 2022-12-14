import 'package:disease_finder/screens/results%20screen/resultsscreen.dart';
import 'package:disease_finder/screens/symptoms%20screen/symptomsscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tools {
  static String returnTime() {
    int hour = DateTime.now().hour;
    if (hour >= 2 && hour < 12) {
      return "Good Morning!";
    } else if (hour >= 12 && hour < 17) {
      return "Good Afternoon!";
    } else {
      return "Good Night!";
    }
  }

  static ImageProvider returnImage() {
    int hour = DateTime.now().hour;
    if (hour >= 2 && hour < 12) {
      return AssetImage("assets/images/nature..jpg");
    } else if (hour >= 12 && hour < 17) {
      return AssetImage("assets/images/weather..jpg");
    } else {
      return AssetImage("assets/images/nature.(1).jpg");
    }
  }

  static bool isListIncludesThis({required int index}) {
    bool result = false;
    for (int i = 0; i < selectedsymptoms.length; i++) {
      if (symptoms[index] == selectedsymptoms[i]) {
        result = true;
      }
    }
    return result;
  }

  static double calculatePercent({required List realSymptoms}) {
    int howManySymptomsOccured = 0;
    for (int index = 0; index < selectedsymptoms.length; index++) {
      for (int i = 0; i < realSymptoms.length; i++) {
        if (selectedsymptoms[index] == realSymptoms[i]) {
          howManySymptomsOccured++;
          continue;
        } else {
          continue;
        }
      }
      continue;
    }
    debugPrint((howManySymptomsOccured/realSymptoms.length*100).toString());
    return ((howManySymptomsOccured / realSymptoms.length) * 100);
  }

  static removeFalseResults() {
    results = List.from(results.where((element) => element["percent"]!=0.0));
  }

  static sortResults() {
    results.sort((a, b) => a["percent"].compareTo(b["percent"]));
    results = List.from(results.reversed);
    debugPrint(results.last["percent"].toString());
  }
  static bool tickOrCross({required String element}){
      bool result = false;
        for(int i = 0;i<selectedsymptoms.length;i++){
          if(element==selectedsymptoms[i]){
            result=true;
            break;
          }else{
            continue;
          }
        }
      
      return result;
  }
}
