import 'package:disease_finder/data/constants.dart';
import 'package:disease_finder/data/tools.dart';
import 'package:disease_finder/screens/symptoms%20screen/symptomsscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: Constants.appBar,
          body: ListView(
            children: [
              Divider(
                height: 50,
                color: Colors.transparent,
              ),
              Center(
                child: CircleAvatar(
                  foregroundColor: Colors.transparent,
                  backgroundImage: Tools.returnImage(),
                  backgroundColor: Colors.white,
                  radius: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        height: 50,
                        color: Colors.transparent,
                      ),
                      Center(
                        child: Text(
                          Tools.returnTime(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 15,
                color: Colors.black26,
              ),
              ListTile(
                  title: Text("Let's Find My Disease"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => SymptomsScreen()));
                  }),
              Divider(
                height: 2,
                color: Colors.black26,
                
              )
            ],
          )),
    );
  }
}
