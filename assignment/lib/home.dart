import 'package:assignment/card_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> languages = ['DART', 'Python', 'PHP', 'JavaScript'];
    List<String> frameworks = ['FLUTER', 'Django & React', 'LARAVEL', 'MERN'];
    List<String> batches = ['ব্যাচ ১৩', 'ব্যাচ ৬', 'ব্যাচ ১০', 'ব্যাচ ৮'];
    List<String> availableSeats = [
      '৬ সিট বাকি',
      '১০ সিট বাকি',
      '৯ সিট বাকি',
      '১৮ সিট বাকি'
    ];
    List<String> dayLeft = [
      '৬ দিন বাকি',
      '৪৯ দিন বাকি',
      '৯ দিন বাকি',
      '১৮ দিন বাকি'
    ];
    List<String> webOrApp = ["APP", "WEB", "WEB", "WEB"];
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: const Text(
          'Module-10-Assignment',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.5,
        ),
        itemCount: 4,
        itemBuilder: (context, index) => CardWidget(
          language: languages[index],
          framework: frameworks[index],
          batch: batches[index],
          availableSeats: availableSeats[index],
          dayLeft: dayLeft[index],
          webORApp: webOrApp[index],
        ),
      ),
    );
  }
}
