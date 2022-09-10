import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget calculaterButton(String text, Color btncolor, Color textcolor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: btncolor,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(35)),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 28,
            color: textcolor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculater"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /////////////////////////Row/////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '0',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 100),
                    ),
                  )
                ],
              ),
              /////////////////////////Row/////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //calculater button in here
                  calculaterButton('C', Colors.grey, Colors.black),
                  calculaterButton('A', Colors.grey, Colors.black),
                  calculaterButton('%', Colors.grey, Colors.black),
                  calculaterButton('/', Colors.amber, Colors.white)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ///////////////////////////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //calculater button in here
                  calculaterButton('7', Colors.grey.shade800, Colors.white),
                  calculaterButton('8', Colors.grey.shade800, Colors.white),
                  calculaterButton('9', Colors.grey.shade800, Colors.white),
                  calculaterButton('x', Colors.amber, Colors.white)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ///////////////////////////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //calculater button in here
                  calculaterButton('4', Colors.grey.shade800, Colors.white),
                  calculaterButton('5', Colors.grey.shade800, Colors.white),
                  calculaterButton('6', Colors.grey.shade800, Colors.white),
                  calculaterButton('-', Colors.amber, Colors.white)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ///////////////////////////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //calculater button in here
                  calculaterButton('1', Colors.grey.shade800, Colors.white),
                  calculaterButton('2', Colors.grey.shade800, Colors.white),
                  calculaterButton('3', Colors.grey.shade800, Colors.white),
                  calculaterButton('+', Colors.amber, Colors.white)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //////////////////////////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.grey.shade800,
                          padding: const EdgeInsets.fromLTRB(30, 25, 130, 25)),
                      child: const Text(
                        '0',
                        style: TextStyle(fontSize: 28),
                      )),
                  calculaterButton('.', Colors.grey.shade800, Colors.white),
                  calculaterButton('=', Colors.amber, Colors.white)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
