import 'package:flutter/material.dart';
import 'package:gojjoapp/models/user_post.dart';

import '../utils/app_colors.dart';

class UserPostsList extends StatefulWidget {
  const UserPostsList({Key? key}) : super(key: key);

  @override
  State<UserPostsList> createState() => _UserPostsListState();
}

class _UserPostsListState extends State<UserPostsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Posts"),
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.only(top: 20),
          child: ListView.builder(
              itemCount: userPosts.length,
              itemBuilder: (BuildContext context, int index) {
                final userpost = userPosts[index];
                return Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("${userpost.houseImage}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Address: ${userpost.street}, ${userpost.subcity}, ${userpost.city}, Ethiopia",
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "price: ${userpost.price} Birr",
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Description: ${userpost.description}",
                        style: TextStyle(
                          color: AppColors.paraColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "phone number: ${userpost.phone}",
                        style: TextStyle(
                          color: AppColors.mainColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Email: ${userpost.email}",
                        style: TextStyle(
                          color: AppColors.mainColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.red,
                              child: Text("delete"),
                            ),
                          ),
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.blue,
                              child: Text("edit"),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
