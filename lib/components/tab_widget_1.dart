import 'package:flutter/material.dart';

class TabWidget1 extends StatelessWidget {
  const TabWidget1({super.key});

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.black87),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(value, style: const TextStyle(color: Colors.black54)),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header Bar Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 24.0),
            ), 
            const SizedBox(height: 5), // Space after header

            // Profile Section
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
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/self-06.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Matthew Andrei O. Valencia',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'BS in Computer Science',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                        Text(
                          'Major in Artificial Intelligence',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                          overflow: TextOverflow.visible,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25), // Space between sections

            // Information Section
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildInfoRow(Icons.email, 'Email', 'matthewandrei.valencia@wvsu.edu.ph'),
                  const SizedBox(height: 20),
                  _buildInfoRow(Icons.phone, 'Phone', '+63 912 652 0936'),
                  const SizedBox(height: 20),
                  _buildInfoRow(Icons.location_on, 'Location', 'Miagao, Iloilo, 5023'),
                  const SizedBox(height: 20),
                  _buildInfoRow(Icons.work, 'Occupation', 'Photographer at RNFTC'),
                  const SizedBox(height: 20),
                  _buildInfoRow(Icons.favorite, 'Hobbies', 'Photography, Learning languages, Programming, Watching Anime'),
                  const SizedBox(height: 20),
                  _buildInfoRow(Icons.cake, 'Birthday', 'October 5, 2003')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
