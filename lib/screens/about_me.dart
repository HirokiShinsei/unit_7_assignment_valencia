import 'package:unit_7_assignment_valencia/components/tab_widget_1.dart';
import 'package:unit_7_assignment_valencia/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,  // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Me"),
          bottom: const TabBar(
            indicatorColor: Colors.black87,  
            indicatorWeight: 3,
            labelColor: Colors.black87,  
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.person_outline),
                text: "Biodata",
              ),
              Tab(
                icon: Icon(Icons.info_outline_rounded),
                text: "Biography",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabWidget1(), 
            TabWidget2(), 
          ],
        ),
      ),
    );
  }
}
