import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

void dummy() {
  print("object");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[100],
          appBar: AppBar(
              title: const Text("IndiExplore"),
              backgroundColor: Colors.blue[300],
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              elevation: 0,
              actions: const [
                IconButton(onPressed: dummy, icon: Icon(Icons.explore))
              ]),
          drawer: const Drawer(
            child: Column(
              children: [
                DrawerHeader(
                    child: Icon(
                  Icons.maps_home_work_rounded,
                  size: 100,
                )),
                ListTile(
                  leading: Icon(Icons.home_rounded),
                  title: Text("H O M E"),
                ),
                ListTile(
                  leading: Icon(Icons.settings_rounded),
                  title: Text("S E T T I N G S"),
                ),
                ListTile(
                  leading: Icon(Icons.question_mark_rounded),
                  title: Text("H E L P"),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 280,
                  padding: const EdgeInsets.only(top: 25),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        //space container
                        width: 40,
                      ),
                      Container(
                          width: 280,
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20))),
                      Container(
                        //space container
                        width: 40,
                      ),
                      Container(
                        width: 280,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                      ),
                      Container(
                        //space container
                        width: 40,
                      ),
                      Container(
                        width: 280,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                      ),
                      Container(
                        //space container
                        width: 40,
                      ),
                      Container(
                        width: 280,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                      ),
                      Container(
                        //space container
                        width: 40,
                      ),
                      Container(
                        width: 280,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                      ),
                      Container(
                        //space container
                        width: 40,
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[100 * (index % 9 + 1)],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                  itemCount: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
