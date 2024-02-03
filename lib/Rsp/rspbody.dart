import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rspgame/config.dart';
import 'Config/cpu_input.dart';
import 'Config/game_result.dart';
import 'Config/user_input.dart';

  class RspBody extends StatefulWidget {
  const RspBody({super.key});

  @override
  State<RspBody> createState() => _RspBodyState();
  }

class _RspBodyState extends State<RspBody> {
  late bool isDone;
  InputType? _userInput;
  late InputType _cpuInput;

  @override
  void initState() {
    super.initState();
    isDone = false;
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Cpu(isDone: isDone, cpuInput: _cpuInput)),
        Expanded(child: GameResult(isDone: isDone, result: getResult(), callback: reset,)),
        Expanded(child: UserInput(isDone: isDone, callback: setUserInput, userInput: _userInput)),
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }
  // 컴퓨터 3가지 경우의 수 랜덤 config.dart enum 활용 / rock , scissors, paper
  void setCpuInput() {
    final random = Random();
    _cpuInput = InputType.values[random.nextInt(3)];
  }

  // 상태는 isDone = false 로 초기화 setCpuInput 랜덤준비
  void reset() {
    setState(() {
      isDone = false;
      setCpuInput();
    });
  }

  Result? getResult() {
    if (_userInput == null)
      return null;

  // switch 문 통하여 게임 결과 로직

    switch (_userInput!) {
      case InputType.rock:
        switch (_cpuInput) {
          case InputType.rock:
            return Result.draw;
          case InputType.scissors:
            return Result.playerWin;
          case InputType.paper:
            return Result.cpuWin;
        }
      case InputType.scissors:
        switch (_cpuInput) {
          case InputType.rock:
            return Result.cpuWin;
          case InputType.scissors:
            return Result.draw;
          case InputType.paper:
            return Result.playerWin;
        }
      case InputType.paper:
        switch (_cpuInput) {
          case InputType.rock:
            return Result.playerWin;
          case InputType.scissors:
            return Result.cpuWin;
          case InputType.paper:
            return Result.draw;
        }
    }
  }
}


