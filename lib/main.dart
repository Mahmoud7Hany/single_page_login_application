// ignore_for_file: prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: test(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 35,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 50.5,
            onPressed: () {},
          )
        ],
        backgroundColor: Color.fromARGB(255, 20, 7, 63),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                width: 250,
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Your Email :',
                      hintStyle: TextStyle(fontSize: 19),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person),
                    )),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                width: 250,
                child: TextField(
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'password :',
                    hintStyle: TextStyle(fontSize: 19),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
             
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Lod in",
                  style: TextStyle(fontSize: 25),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 99, vertical: 17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
                ),
              ),
            ]),
      ),
    );
  }
}
