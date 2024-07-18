import 'package:flutter/material.dart';

class MyCalculatorPage extends StatefulWidget {
  const MyCalculatorPage({super.key});

  @override
  State<MyCalculatorPage> createState() => _MyCalculatorPageState();
}

class _MyCalculatorPageState extends State<MyCalculatorPage> {
  final TextEditingController _number01Controller = TextEditingController();
  final TextEditingController _number02Controller = TextEditingController();
  int _totalvalue = 0;

  //methods
  void add() {
    setState(() {
      int number01 = int.tryParse(_number01Controller.text) ?? 0;
      int number02 = int.tryParse(_number02Controller.text) ?? 0;

      _totalvalue = number02 + number01;
    });
  }

  void substraction() {
    setState(() {
      int number01 = int.tryParse(_number01Controller.text) ?? 0;
      int number02 = int.tryParse(_number02Controller.text) ?? 0;

      _totalvalue = number02 - number01;
    });
  }

  void multification() {
    setState(() {
      int number01 = int.tryParse(_number01Controller.text) ?? 0;
      int number02 = int.tryParse(_number02Controller.text) ?? 0;

      _totalvalue = number02 * number01;
    });
  }

  void division() {
    setState(() {
      int number01 = int.tryParse(_number01Controller.text) ?? 0;
      int number02 = int.tryParse(_number02Controller.text) ?? 0;

      double answer = number02 / number01;
      _totalvalue = answer.ceil();
    });
  }

  @override
  void dispose() {
    _number01Controller.dispose();
    _number01Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Calculator"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _number01Controller,
                decoration: InputDecoration(
                  hintText: "Number 01",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _number02Controller,
                decoration: InputDecoration(
                  hintText: "Number 02",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  _totalvalue.toString(),
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: add,
                child: const Text("+"),
              ),
              FloatingActionButton(
                onPressed: substraction,
                child: const Text("-"),
              ),
              FloatingActionButton(
                onPressed: multification,
                child: const Text("X"),
              ),
              FloatingActionButton(
                onPressed: division,
                child: const Text("%"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
