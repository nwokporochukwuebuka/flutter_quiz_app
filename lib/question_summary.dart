import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(
                  ((data["question_index"] as int) + 1).toString(),
                  style: GoogleFonts.lato(color: Colors.black),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data["question"].toString()),
                      const SizedBox(height: 5),
                      Text(data["correct_answer"].toString()),
                      Text(data["chosen_answer"].toString()),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
