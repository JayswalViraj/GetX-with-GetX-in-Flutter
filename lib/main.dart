import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_in_getx/controller.dart';

void main() {
  //----------PlEaSe-----------First you check Getx with GetBuilder in Flutter Project after work this project.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(     //MaterialApp to GetMaterialApp change optional

      home: Scaffold(
        appBar: AppBar(
          title: Text("Getx With Getx in Flutter"),
        ),
        body: Center(
          child: Container(
            child: GetX<Controller>(
                //only change GetBuilder to GetX after all are same
                init: Controller(),
                builder: (value) => GestureDetector(
                      child: Text(
                        value.counter.toString(),
                        style: TextStyle(fontSize: 40),
                      ),
                      onTap: () {
                        value.increment();
                      },
                    )),
          ),
        ),
      ),
    );
  }
}
