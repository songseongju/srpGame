import 'package:flutter/material.dart';
import 'package:rspgame/Rsp/rspbody.dart';
import 'package:get/get.dart';
import 'package:rspgame/Rsp/Config/count_down.dart';

void main() {
  runApp(GetMaterialApp(home: RSPApp()));
 // runApp(const RSPApp());
}
class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('가위바위보 미니게임'),
        ),
        body: const RspBody(),
      ),
    );
  }
}

//count down

// class RspApp2 extends StatelessWidget {
//     @override
//   Widget build(BuildContext context) {
//       CountDown controller = Get.put(CountDown());
//       return Scaffold(
//           appBar: AppBar(
//           title: Text('GetX Test'),
//       centerTitle: true,
//       ),
//       body: Center();
//     }

// }