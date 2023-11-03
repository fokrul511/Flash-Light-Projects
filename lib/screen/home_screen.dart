import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Tourc Light',
          style: TextStyle(color: textColor),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive ? 'assets/on.png' : 'assets/off.png',
                    height: size.height * 0.5,
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    child: Transform.scale(
                      scale: 1.5,
                      child: IconButton(
                          onPressed: () {
                            controller.toggle();
                            isActive = !isActive;
                            setState(() {

                            });
                          }, icon: Icon(Icons.power_settings_new)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Develope By: Fokrul Islam',
            style: TextStyle(
              color: textColor,
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          )
        ],
      ),
    );
  }
}
