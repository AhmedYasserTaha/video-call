import 'package:flutter/material.dart';
import 'package:video_call_app/video_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController conName = TextEditingController();
  final TextEditingController conId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Viedo Call with Team"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: conName,
              decoration: InputDecoration(hintText: "Enter Your Name"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: conId,
              decoration: InputDecoration(hintText: "Enter Your ID"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return VideoConferencePage(
                        conferenceID: conId.text,
                        userName: conName.text,
                      );
                    },
                  ),
                );
              },
              child: Text("Join"),
            ),
          ],
        ),
      ),
    );
  }
}
