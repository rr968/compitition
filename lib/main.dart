import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'introduction/dashboard.dart';
import 'introduction/pageone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Start());
  }
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  bool loading = true;
  late bool fpage;
  @override
  void initState() {
    getfirstpage();
    super.initState();
  }

  getfirstpage() async {
    SharedPreferences name = await SharedPreferences.getInstance();
    var p = name.getString("name");
    if (p == null) {
      fpage = true;
    } else {
      fpage = false;
    }
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: loading
            ? const Center(child: CircularProgressIndicator())
            : fpage
                ? const FirstPage()
                : const dashboard());
  }
}
