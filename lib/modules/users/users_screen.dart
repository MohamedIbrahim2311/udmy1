import 'package:flutter/material.dart';

import '../../models/user/UserModel.dart';
class UserScreen extends StatelessWidget {
  List<UserModel>user =[
    UserModel(
      id: 1,
      name: 'Mohamed Ibrahim',
      phone: '+0201545654',
    ),
    UserModel(
      id: 2,
      name: 'Tarek',
      phone: '+02011445266',
    ),
    UserModel(
      id: 3,
      name: 'Hassan',
      phone: '+02011474484',
    ),
    UserModel(
      id: 4,
      name: 'Ahamed Slaha',
      phone: '+0201585268',
    ),
    UserModel(
      id: 5,
      name: 'Amr Fathy',
      phone: '+02011445266',
    ),
    UserModel(
      id: 3,
      name: 'Hassan',
      phone: '+02011474484',
    ),
    UserModel(
      id: 4,
      name: 'Ahamed Slaha',
      phone: '+0201585268',
    ),
    UserModel(
      id: 5,
      name: 'Amr Fathy',
      phone: '+02011445266',
    ),    UserModel(
      id: 3,
      name: 'Hassan',
      phone: '+02011474484',
    ),
    UserModel(
      id: 4,
      name: 'Ahamed Slaha',
      phone: '+0201585268',
    ),
    UserModel(
      id: 5,
      name: 'Amr Fathy',
      phone: '+02011445266',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Users'
          ),
        ),
        body:ListView.separated(
          itemBuilder:(context, index)=>buildUserItime(user[index]),
          separatorBuilder:(context, index)=>Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],

            ),
          ) ,
          itemCount: user.length
        ),


    );
  }
    Widget buildUserItime(UserModel user)=> Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            child: Text(
              '${user.id}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Text(
                '${user.phone}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );


}
