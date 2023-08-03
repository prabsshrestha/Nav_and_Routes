import 'package:flutter/material.dart';
import 'package:routes/screen_two.dart';
import 'package:routes/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen 1'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {

                  Navigator.pushNamed(context, RouteName.screenTwo,
                  arguments:{
                    'name': 'Prabesh',
                    'surname': 'Shrestha',

                  }
                  );
                 
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal,
                  ),
                  child: Center(
                    child: Text('Screen 1'),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
