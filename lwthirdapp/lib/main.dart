import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //apka body/home bs ek hi ho skta hai app ka : toh ye bs ek hi text ya image le skta hai ,i.e widget in 1 body
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),

      home: Scaffold(
        appBar: AppBar(title: (Center(child: Text("Hello world")))),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),

        //also there is no way to tell orientation and size of image :use container
        // body: Container(
        //   color: Color.fromARGB(255, 166, 190, 33), //by defaulr 100 size
        //   height: 400,
        //   width: 300,
        //   child: Center(
        //   child: Text("Hello world")), //widget mai widget :child keyword
        //   //margin: EdgeInsets.all(20), //top margin : to shift container down
        //   margin: EdgeInsets.fromLTRB(0, 220, 0, 0),
        //   //CONTAINER TEXT is alswys attatched with it ...we want child to have some padding
        //   //container-->margin-->child-->padding
        //   padding: EdgeInsets.only(left: 20),
        //   //tranform property
        // ),

        // body: Column(
        //   children: Container(
        //     color: Color.red,
        //     width: 200,
        //     height: 200,
        //   ),
        // ),
        //CONTAINER widget : kindof div tag :by deafult apke screen ki 100 percent width and height leta hai
        //single layout widget , multiple layout widget
        //gogole flutter layout
      ),
    );
  }
}
