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
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 252, 226, 193),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(color: Colors.teal[20]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // example1  text
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: MyCustomPopup(
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.white,
                  arrowColor: const Color.fromARGB(255, 255, 255, 255),
                  content: Stack(children: [
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 0.6, color: Colors.grey)),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 300,
                            decoration: const BoxDecoration(
                                color: Color(0xffD7E8D6),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                          ),
                          const SizedBox(height: 30),
                          const Text("Sundar"),
                          const Text("sundar@gmail.com"),
                        ],
                      ),
                    ),
                    const Positioned(
                      top: 50,
                      right: 110,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundColor: Color.fromARGB(255, 173, 173, 173),
                      ),
                    ),
                  ]),
                  child: const Icon(Icons.help, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
