import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // const AnswerButton(this.answerText, this.onTap, {super.key});
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(188, 87, 87, 87)
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
