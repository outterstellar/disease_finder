import 'package:disease_finder/data/constants.dart';
import 'package:disease_finder/screens/results%20screen/resultsscreen.dart';
import 'package:flutter/material.dart';

import '../../data/tools.dart';
 
class DetailsScreen extends StatelessWidget {
  int index;
  DetailsScreen({required this.index,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List resultsReferance = ["abc","abcd"];
    resultsReferance.addAll(results[index]["symptoms"]);
    return Scaffold(
      appBar: Constants.appBar,
      body: ListView.builder(itemCount: resultsReferance.length,itemBuilder: (context,i){
        if(i==0){
          return Padding(
            padding: const EdgeInsets.all(21.0),
            child: Text(results[index]["name"].toString(),style: TextStyle(fontSize: 25),),
          );
        }else if(i==1){
          return Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(results[index]["explanation"],style: TextStyle(fontSize: 15),),
          );
        }else{
          return ListTile(
            leading: Text(resultsReferance[i],style: TextStyle(fontSize: 15),),
            trailing: Tools.tickOrCross(element:resultsReferance[i])==true?Icon(Icons.check):Icon(Icons.close)
          );
        }
      })
    );
  }
}
/*
(
        children: [
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Text(results[index]["name"].toString(),style: TextStyle(fontSize: 25),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(results[index]["explanation"],style: TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(symptomsOfThisDisease,style: TextStyle(fontSize: 15),),
          ),

        ],
      )
*/