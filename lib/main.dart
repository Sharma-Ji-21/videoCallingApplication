import 'package:flutter/material.dart';
import 'package:video_calling/calling_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Calling App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController callIdController = TextEditingController();

  @override
  void dispose() {
    callIdController.dispose();
    super.dispose();
  }

  void joinCall() {
    final callId = callIdController.text.trim();
    if (callId.isEmpty) return;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => CallingPage(callId: callId)),
    );

    callIdController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Video Calling App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: callIdController,
              decoration: const InputDecoration(
                labelText: "Enter Call ID",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: joinCall, child: const Text("Join Call")),
          ],
        ),
      ),
    );
  }
}
