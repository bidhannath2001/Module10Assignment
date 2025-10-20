import 'package:assignment/details.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String language;
  final String framework;
  final String batch;
  final String availableSeats;
  final String dayLeft;
  final String webORApp;
  CardWidget(
      {required this.language,
      required this.framework,
      required this.batch,
      required this.availableSeats,
      required this.dayLeft,
      required this.webORApp,
      Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
                Container(
                  color: Colors.black45,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'FULL STACK',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${webORApp} Development',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${language}',
                        style: const TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${framework}',
                        style: const TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(height: 1, color: Colors.black54),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey.shade300),

                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      // color: Colors.grey.shade300,
                      child: Text('$batch'),
                    ),
                    const SizedBox(width: 4),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey.shade300),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.event_seat,
                            size: 11,
                          ),
                          const SizedBox(width: 2),
                          Text('$availableSeats'),
                        ],
                      ),
                    ),
                    const SizedBox(width: 4),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey.shade300),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            size: 11,
                          ),
                          const SizedBox(width: 2),
                          Text('$dayLeft'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(height: 1, color: Colors.grey.shade300),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Stack ${webORApp}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Development with',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${language} and ${framework}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 1, color: Colors.grey.shade300),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                    language: language,
                                    framework: framework,
                                    batch: batch,
                                    availableSeats: availableSeats,
                                    dayLeft: dayLeft,
                                    webORApp: webORApp)));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('বিস্তারিত দেখি',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
