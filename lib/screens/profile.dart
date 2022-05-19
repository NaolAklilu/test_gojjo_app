import 'package:flutter/material.dart';
import 'package:gojjoapp/screens/edit_profile.dart';
import 'package:gojjoapp/screens/user_post_list.dart';
import 'package:gojjoapp/screens/user_requests.dart';
import 'package:gojjoapp/utils/app_colors.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Full Name: ",
                          style: TextStyle(color: AppColors.mainColor),
                        ),
                        Text("Full Name: User userf"),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Email: ",
                          style: TextStyle(color: AppColors.mainColor),
                        ),
                        Text("Email: user@user.com"),
                      ],
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Edit profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => EditProfile()),
              );
            },
          ),
          // const SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Change password"),
            onTap: () {},
          ),
          // const SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Your posts"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => UserPostsList()));
            },
          ),
          // const SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Your requests"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => UserRequests()));
            },
          ),
        ],
      ),
    );
  }
}
