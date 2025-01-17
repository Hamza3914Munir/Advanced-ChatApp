import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../firebase_options.dart';
import 'Screen_2.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(primaryColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Image.asset(
              "welcome_to_whatsapp.PNG",
              height: 300,
            ),
            languageList(),
            Padding(
              padding: const EdgeInsets.only(left: 220, bottom: 30),
              child: Builder(
                builder: (BuildContext context) {
                  return FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen2()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward,
                    ),
                    backgroundColor: Colors.lightGreen[800],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget languageList() {
  return
    Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: IconButton(
              icon: Icon(Icons.circle_outlined),
              onPressed: () {},
            ),
            title: Text(
              "Language $index",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
            subtitle: Text("Language name in English"),
          );
        },
        itemCount: 40,
      ),
    );
}
