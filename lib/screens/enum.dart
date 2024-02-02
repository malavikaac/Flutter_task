import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final chipController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 231, 200),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 0.6,
                      color: const Color.fromARGB(255, 160, 160, 160)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 6, child: CircleAvatar(radius: 4)),
                          SizedBox(
                            width: 20,
                          ),
                          Text("data")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 6, child: CircleAvatar(radius: 4)),
                          SizedBox(
                            width: 20,
                          ),
                          Text("data")
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(Icons.archive_rounded),
                          SizedBox(
                            width: 15,
                          ),
                          Text("data")
                          
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

//  Enum

enum DoctorStatusEnum {
  active(
    circleAvatar: CircleAvatar(radius: 6, child: CircleAvatar(radius: 4)),
    title: "Active",
    color: Color.fromARGB(255, 3, 124, 9),
  ),
  notYetApproved(
    icon: Icons.nat_outlined,
    title: "Active",
    color: Color.fromARGB(255, 214, 190, 116),
  ),
  away(
    circleAvatar: CircleAvatar(radius: 6, child: CircleAvatar(radius: 4)),
    title: "Away",
    color: Color.fromARGB(255, 165, 165, 165),
  );

  final CircleAvatar? circleAvatar;
  final String title;
  final Color color;
  final IconData? icon;

  const DoctorStatusEnum(
      {required this.color, this.icon, required this.title, this.circleAvatar});
}

                // Container(
                //   height: 200,
                //   width: 200,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   border: Border.all(
                //       width: 0.6,
                //       color: const Color.fromARGB(255, 160, 160, 160)),
                //   color: const Color.fromARGB(255, 255, 255, 255),
                // ),
                // child: Row(
                //   children: [
                //    TextFormField(
                //     //controller: chipController,

                //    ),
                //    OutlinedButton.icon(
                //     onPressed: (){}, icon: const Icon(Icons.add), label: Text(""))

                //   ],
                // )
                // )