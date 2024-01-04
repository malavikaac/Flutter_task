// ignore: file_names
import 'package:flutter/material.dart';


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
        backgroundColor: const Color.fromARGB(255, 253, 225, 217),
        centerTitle: true,
   title: const Text("Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          height: 800,
          width: 800,
          color: const Color.fromARGB(115, 180, 180, 180),
          child: Column(
            children: [
             TextFormField(
              // controller: ,
             )
            ],
          ),
        ),
      )
    );
  }
}
