import 'package:flutter/material.dart';

// code to connect frontend to backend 
//our app will request to webserver and will recieve a response from server (backend). 
//backend code:run on server:server site pogramming,all code of us will be on baceknd. 

void main() {
  runApp(Scaffold(body: const _MyCloud()));
}

class _MyCloud  extends StatefulWidget {
  const _MyCloud ({super.key});

  @override
  State<_MyCloud > createState() => __MyCloud State();
}

class __MyCloud State extends State<_MyCloud > {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
