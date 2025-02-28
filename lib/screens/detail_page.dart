import 'package:flutter/material.dart';
import '../models/quiz_model.dart';
import '../models/quiz_model.dart';

class DetailPage extends StatelessWidget {
  final Question question;
  DetailPage({required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question Details"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade700,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade300, Colors.deepPurple.shade900],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            Column(
              children: question.options.map((option) => Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 5),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  title: Text(option, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  onTap: () {},
                ),
              )).toList(),
            ),
            SizedBox(height: 20),
            Text(
              "Correct Answer: ${question.correctAnswer}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
