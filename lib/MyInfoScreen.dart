import 'package:flutter/material.dart';
import 'package:info_card/postImages.dart';

import 'AppColors.dart';

class MyInfoScreen extends StatelessWidget {
  const MyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    Icon(Icons.check_circle, color: AppColors.primeBlue),
                  ],
                ),
                Text(
                  "@this.ahmed",
                  style: TextStyle(fontSize: 16, color: AppColors.darkGray),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primeBlue,
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
                  color: AppColors.gray,
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
                  color: AppColors.gray,
                  indent: 30,
                  endIndent: 30,
                ),
                Row(
                  spacing: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.feed, color: AppColors.gray),
                    Text(
                      "Posts",
                      style: TextStyle(fontSize: 14, color: AppColors.darkGray),
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
