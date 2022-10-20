import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:part_9/models/User.dart';

import '../screens/UserDetailScreen.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

List<User> usersList = [
  User(
      age: 16,
      firstName: 'Иван',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://meialua.net/wp-content/uploads/2022/06/junker-queen.jpg'),
  User(
      age: 16,
      firstName: 'Иван',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuLJANGKUS_GuVcmkFmo8d2kfiLKRb1R_jNiESw_Rttgw-6t3brFvJ9y3QvN9XDoi0e2c&usqp=CAU'),
  User(
      age: 16,
      firstName: 'Иван',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://static.wikia.nocookie.net/dota2_gamepedia/images/2/29/Brewmaster_Lore.png/revision/latest?cb=20210730084950'),
];

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailScreen(
                    user: usersList[index],
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: usersList[index].avatar == ''
                            ? Image.network(
                                'http://cdn.onlinewebfonts.com/svg/img_207975.png')
                            : Image.network(usersList[index].avatar,
                                fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Имя: ' + usersList[index].firstName,
                              textAlign: TextAlign.left,
                            ),
                            Text('Фамилия: ' + usersList[index].lastName),
                            Text('Возраст: ' + usersList[index].age.toString()),
                            Text('Телефон: ' + usersList[index].phone),
                            Text('Телефон: ' + usersList[index].email),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
