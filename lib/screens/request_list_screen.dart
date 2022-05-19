import 'package:flutter/material.dart';
import 'package:gojjoapp/models/user_request.dart';
import 'package:gojjoapp/utils/app_colors.dart';

class UserRequestList extends StatelessWidget {
  const UserRequestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Request List")),
      body: Container(
        child: ListView.builder(
            itemCount: userRequests.length,
            itemBuilder: (BuildContext context, int index) {
              final userRequest = userRequests[index];
              return Center(
                child: Container(
                  width: 325,
                  child: Card(
                    margin: const EdgeInsets.only(top: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "City: ",
                                style: TextStyle(color: AppColors.mainColor),
                              ),
                              Text('${userRequest.city}')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Subcity: ",
                                style: TextStyle(color: AppColors.mainColor),
                              ),
                              Text('${userRequest.subcity}')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Street: ",
                                style: TextStyle(color: AppColors.mainColor),
                              ),
                              Text('${userRequest.street}')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "BedRoom Number: ",
                                style: TextStyle(color: AppColors.mainColor),
                              ),
                              Text('${userRequest.bedRoomNumber}')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Description: ",
                            style: TextStyle(color: AppColors.mainColor),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Flexible(
                                child: Text('${userRequest.description}'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
