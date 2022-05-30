import 'package:flutter/material.dart';
import 'package:gojjoapp/utils/app_colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  Column buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Display Name",
              style: TextStyle(color: Colors.grey),
            )),
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: "Update your Name",
          ),
        )
      ],
    );
  }

  Column buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            "Bio",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: "Update Email",
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit profile"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            right: 60,
            left: 60,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              buildNameField(),
              const SizedBox(
                height: 20,
              ),
              buildEmailField(),
              const SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: updateProfileData,
                color: Colors.blue,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateProfileData() {
    print(
        "The user want to create an account with\n Name: ${nameController.text} \n email: ${emailController.text} \n");
  }
}
