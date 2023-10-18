// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  myphotoadd() {
    debugPrint("Photo has been added ");
  }

  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            debugPrint("$value");
          },
          items: [
            BottomNavigationBarItem(
              label: "AC unit",
              icon: Icon(Icons.ac_unit),
            ),
            BottomNavigationBarItem(
              label: "Phone",
              icon: Icon(Icons.phone_bluetooth_speaker_rounded),
            ),
            BottomNavigationBarItem(
              label: "AC unit",
              icon: Icon(Icons.call_made_rounded),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.teal,
        child: Icon(Icons.chat),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          //photograph,name,mobilenumber,email,multiple widget , mult layout : vertical -->column widget
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 6,
                        blurRadius: 10.0,
                        offset: const Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(
                    width: 4,
                    color: Color.fromARGB(255, 185, 0, 108),
                  ),
                ),
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("images/Snapchat-1046639205.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  debugPrint("My name is Tapped..");
                },
                onDoubleTap: () {
                  debugPrint('My name is double tapped..');
                },
                child: Text(
                  " Manasvi ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Text("Human Being"),
              AboutMe(),
              Divider(
                color: Colors.yellow,
              ),
              SizedBox(
                height: 30,
              ),

              GestureDetector(
                onTap: () {
                  const snackBar = SnackBar(content: Text("I am aakriti"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(boxShadow: []),
                  child: Text(
                    "Know mw",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Container(
                width: 300,
                child: Card(
                  color: Colors.yellow,
                  child: ListTile(
                    onLongPress: () {},
                    // /title: Text("OFFICIAL PHONE"),
                    title: Text(
                      "+91 6376082247",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    leading: Icon(Icons.phone),
                    trailing: FlutterLogo(),
                    subtitle: Text("OFFICIAL PHONE"),
                  ),
                ),
              ),
              Card(
                color: Colors.yellow,
                child: ListTile(
                  onLongPress: () {},
                  // /title: Text("OFFICIAL PHONE"),
                  title: Text(
                    "aakritigoyal14@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Icon(Icons.mail),
                  trailing: FlutterLogo(),
                  subtitle: Text("mailid"),
                ),
              ),
              //Container can hold only one child
              //so we will put row iwdhget as row can have multiple child
              //we want to craete phone icon with phone number option
              // Container(
              //   color: Colors.white,
              //   // width: 200,
              //   // height: 50,
              //   child: Row(
              //     children: [
              //       Icon(Icons.phone),
              //       Text(
              //         "+91 6376082247",
              //         style: TextStyle(
              //           fontSize: 10,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       //row mai koi width and height nhi hoti hai..so lets make it child of container
              //     ],
              //   ),
              // ),

              // Text(
              //   " Manasvi ",
              //   style: TextStyle(
              //     fontSize: 30,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
        ),
      ),

      //conatiner do not have knowelege of clicking etc, so inkwell or gesture detetcion widget
      //context hame batata ahia free space kha hai
      //kuch bhi app ke upr krna ho toh cntext se kro
      //snackbar : not vivible but appear as pop up
      //scafold mai cpnettc variable knows address of each place and of knows kha pai sb filled hai

      appBar: AppBar(
        // leading: Text("LW"),

        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text("LW"),
        ),
        toolbarHeight: 60,
        backgroundColor: Colors.amber,
        title: Text("LW PROFILE APP"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: myphotoadd, icon: Icon(Icons.add_a_photo))
        ],
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  AboutMe({super.key});

  List x = ["Human Being ", "I exists ", "I am me "];
  @override
  Widget build(BuildContext context) {
    return Text(x[2]);
  }
}

//stateless :hardcode widget : cannot be change at runtime ,fast ,
//, ststefull :eidget can be change on the fly .slow

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
