import 'package:flutter/material.dart';
import 'package:routes/screen_three.dart';
import 'package:routes/utils/routes_name.dart';
class ScreenTwo extends StatefulWidget {
  
  dynamic data;
  ScreenTwo({Key? key,
  required this.data
  }) : super(key : key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.data['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  
                    Navigator.pushNamed(context, RouteName.screenThree);
                   
                  
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Text('Screen 2'),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
