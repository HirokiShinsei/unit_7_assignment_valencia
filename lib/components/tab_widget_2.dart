import 'package:flutter/material.dart';

class TabWidget2 extends StatelessWidget {
  const TabWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Biography Section
            const SizedBox(height: 30), 

            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BIOGRAPHY',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Born to a family of 7, being the youngest among the siblings of 5. Currently working part-time as a photographer to an Event Organizer "RNFTC".',
                    style: TextStyle(fontSize: 16, height: 1.75), 
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),
                  SizedBox(height: 25),
                  Text(
                    'He has been a photographer for 2 years and has been learning programming for 3 years. He is currently studying at West Visayas State University, taking up Bachelor of Science in Computer Science major in Artificial Intelligence.'
                    ' Aside from photography and programming, he also loves learning languages of different countries, currently learning German and Japanese, and watching anime.',
                    style: TextStyle(fontSize: 16, height: 1.75),
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),
                  SizedBox(height: 25),
                  Text(
                    'He is a very passionate person, always eager to learn new things and always ready to take on new challenges. He always strives to explore beyond his limits and is always ready to take on new opportunities.'
                    ' Despite being the youngest, he strives to live up to the achievements his siblings have attained.',
                    style: TextStyle(fontSize: 16, height: 1.75),
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25), // Space after biography
          ],
        ),
      ),
    );
  }
}
