import 'package:flutter/material.dart';
import 'package:rspgame/config.dart';
import 'input_card.dart';

class Cpu extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const Cpu({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SizedBox.shrink()),
        Expanded(
          child: InputCard(
            child: getCpuInput(),
          ),
        ),
        const Expanded(child: SizedBox.shrink()),
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }
    return SizedBox(
      height: 80,
      child: Center(
           child: Image.asset('assets/images/random.png'),
      ),
    );
  }
}
