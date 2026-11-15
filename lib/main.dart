import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyInfoScreen(), debugShowCheckedModeBanner: false);
  }
}

class MyInfoScreen extends StatelessWidget {
  const MyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 4,
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/v2/D4D03AQFFFZMc-MUVfA/profile-displayphoto-shrink_200_200/B4DZp3r_zgJAAc-/0/1762944614450?e=1796256000&v=beta&t=GK6Rbwib2u8lrHAR5a7wwEZtjNgUau20pAKPNr7Rx48',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      "Ahmed Sayed",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.check_circle, color: Colors.blue),
                  ],
                ),
                Text(
                  "@this.ahmed",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text("Follow", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 8),
                Text(
                  "I am a passionate Software Engineer from Egypt 🇪🇬.",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Divider(
                  thickness: 0.3,
                  color: Colors.grey,
                  indent: 30,
                  endIndent: 30,
                ),
                _buildInfoRow(icon: Icons.phone, text: "01159352875"),
                _buildInfoRow(
                  icon: Icons.mail,
                  text: "this.ahmedsayed@gmail.com",
                ),
                _buildInfoRow(icon: Icons.home, text: "Cairo, Egypt"),
                SizedBox(height: 4),
                Divider(
                  thickness: 0.3,
                  color: Colors.grey,
                  indent: 30,
                  endIndent: 30,
                ),
                Row(
                  spacing: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.feed, color: Colors.grey),
                    Text(
                      "Posts",
                      style: TextStyle(fontSize: 14, color: Colors.black38),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                          childAspectRatio: 1,
                        ),
                    itemCount: postImages.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          postImages[index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildInfoRow({required IconData icon, required String text}) {
  return Row(
    spacing: 10,
    children: [
      Icon(icon, color: Colors.black45, size: 18),
      Text(text, style: const TextStyle(fontSize: 12, color: Colors.black54)),
    ],
  );
}

final List<String> postImages = [
  'https://images.unsplash.com/photo-1551650975-87deedd944c3?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?auto=format&fit=crop&w=600&q=80',
  'https://developer.android.com/static/images/social/android-developers.png',
  'https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1526498460520-4c246339dccb?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1596742578443-7682ef5251cd?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1555066931-4365d14bab8c?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1542831371-29b0f74f9713?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1587620962725-abab7fe55159?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1558494949-ef010cbdcc31?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1618401471353-b98afee0b2eb?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1581291518633-83b4ebd1d83e?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1507238691740-187a5b1d37b8?auto=format&fit=crop&w=600&q=80',
  'https://images.unsplash.com/photo-1555949963-ff9fe0c870eb?auto=format&fit=crop&w=600&q=80',
];
