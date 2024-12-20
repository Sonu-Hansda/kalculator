import 'package:flutter/material.dart';
import 'package:kalculator/widgets/custom_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.black87,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: Colors.black54,
                ),
                child: const Text(
                  '0',
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
              ),
              Expanded(
                flex: 1,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  padding: const EdgeInsets.all(12),
                  children: const [
                    CustomButton(label: 'C'),
                    CustomButton(label: 'AC'),
                    CustomButton(label: '%'),
                    CustomButton(label: '/', isOrange: true),
                    CustomButton(label: '7'),
                    CustomButton(label: '8'),
                    CustomButton(label: '9'),
                    CustomButton(label: 'x', isOrange: true),
                    CustomButton(label: '4'),
                    CustomButton(label: '5'),
                    CustomButton(label: '6'),
                    CustomButton(label: '-', isOrange: true),
                    CustomButton(label: '1'),
                    CustomButton(label: '2'),
                    CustomButton(label: '3'),
                    CustomButton(label: '+', isOrange: true),
                    CustomButton(label: '0', isWide: true),
                    CustomButton(label: '.'),
                    CustomButton(label: '=', isOrange: true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
