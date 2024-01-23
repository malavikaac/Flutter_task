
import 'package:flutter/material.dart';
import 'package:flutter_task/popup_extension/custom_popup.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // example1  text
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: MyCustomPopup(
             barrierColor: Colors.transparent,
              backgroundColor: Colors.white,
              arrowColor:  const Color(0xffD7E8D6),
              content: Container(
                            height: 250,
                            width: 300,
                            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius:BorderRadius.circular(15) ,
                            border: Border.all(width: 0.6 ,color:Colors.grey)),
                            child: Stack(children: [
                              Positioned(
                                top: 0,
                                child: Container(
                                  height: 100,
                                  width: 300,
                                  decoration: BoxDecoration(color: const Color(0xffD7E8D6),
                                   borderRadius:BorderRadius.circular(15)
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 50,
                                        backgroundColor: Colors.amber,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ),
              child: Icon(Icons.help, color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
    
       
    
         
        ],
      ),
    );
  }
}

class _Slider extends StatefulWidget {
  const _Slider();

  @override
  State<_Slider> createState() => __SliderState();
}

class __SliderState extends State<_Slider> {
  double progress = 0.5;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: Slider(
        value: progress,
        onChanged: (value) {
          setState(() => progress = value);
        },
      ),
    );
  }
}
