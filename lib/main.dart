import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'unit4_assignment_delosreyes',
      theme: ThemeData(
        primaryColor: Color(0xFFFC8EAC), // Main pink color
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kianne Maye B. De Los Reyes'), // Your name
        backgroundColor: Color(0xFFFC8EAC),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profilepic.png'), // Ensure the path to image is correct
                  ),
                  SizedBox(width: 16),
                  Expanded( // Wrap in Expanded to prevent overflow
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kianne Maye B. De Los Reyes', // Your full name
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFC8EAC),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Unhinged. Call me Maui!', // Bio section
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 8),
                        buildInfoRow(Icons.cake, 'Birthday', 'November 8, 2003'),
                        buildInfoRow(Icons.location_on, 'Address', 'Pavia, Iloilo'),
                        buildInfoRow(Icons.email, 'Email', 'kiannemaye.delosreyes@wvsu.edu.ph'),
                        buildInfoRow(Icons.phone, 'Phone', '09091606943'),
                        buildInfoRow(Icons.hiking, 'Hobbies', 'Reading, Writing, Sleeping, Watching Series/Movies'),
                        buildInfoRow(Icons.music_note, 'Favorite Artists', 'THE BOYZ, WOODZ and Jang Wonyoung'),
                        buildInfoRow(Icons.favorite, 'Likes', 'PINK! Make-up and bed rotting'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFFFE4E9), // Light pink background
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFC8EAC), // Main pink color
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'I am just a girl. Growing up, I despised femininity yet look at me now, enjoying being feminine in some ways.'
                      'I hated pink but it grew on me and slowly fell in love with it. Skirts and dresses are now my thing.'
                      'I even started wearing make-up sometimes when I felt like it. Who would have expected right?'
                      'Aside from embracing femininity, I also love K-POP, yes, again "I am just a girl~".'
                      'Well, this is getting longer. Just that for now!',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(IconData icon, String title, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFFFC8EAC), size: 20), // Pink icons
          SizedBox(width: 8),
          Text(
            '$title: ',
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFC8EAC)),
          ),
          Expanded(
            child: Text(
              data,
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
