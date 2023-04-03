import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 500,
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(20),
                child: Text('Item # $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
