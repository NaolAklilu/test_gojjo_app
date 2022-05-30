import 'package:flutter/material.dart';
import 'package:gojjoapp/utils/app_colors.dart';

import '../models/user_post.dart';

class PostDetails extends StatefulWidget {
  final Post userPost;
  const PostDetails({Key? key, required this.userPost}) : super(key: key);

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Post details",
          // style: TextStyle(color: Colors.blue[700]),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[700],
      ),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: 280,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: double.maxFinite,
              padding: EdgeInsets.only(right: 16, left: 16, top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address: ${widget.userPost.subcity} ${widget.userPost.subcity}, ${widget.userPost.city}, Ethiopia",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "price: ${widget.userPost.price} Birr",
                    style: TextStyle(
                      color: Colors.blue[400],
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Description: ${widget.userPost.description}",
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "phone number: ${widget.userPost.phone}",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Email: ${widget.userPost.email}",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}








// Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Post details",
//           // style: TextStyle(color: Colors.blue[700]),
//         ),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.blue[700],
//       ),
//       body: Stack(
//         children: [
//           Positioned(
//             right: 0,
//             left: 0,
//             child: Container(
//               height: 300,
//               color: Colors.orange,
//             ),
//           ),
//           Positioned(
//             top: 280,
//             right: 0,
//             left: 0,
//             bottom: 0,
//             child: Container(
//               height: double.maxFinite,
//               padding: EdgeInsets.only(right: 16, left: 16, top: 20),
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20.0),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Address: Arada, Addis Ababa, Ethiopia",
//                     style: TextStyle(
//                       color: AppColors.mainColor,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 1.2,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     "price: 4,322 Birr",
//                     style: TextStyle(
//                       color: AppColors.mainColor,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 1.2,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "Description: \nLorem, ipsum dolor sit amet consectetur adipisicing elit. Iure possimus architecto reprehenderit ipsam delectus officiis ab dolorem doloremque consequuntur, ipsum quo assumenda blanditiis suscipit fuga!",
//                     style: TextStyle(
//                       color: AppColors.paraColor,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "phone number: +25190090909",
//                     style: TextStyle(
//                       color: AppColors.mainColor,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     "Email: user@user.com",
//                     style: TextStyle(
//                       color: AppColors.mainColor,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
