import 'package:flutter/material.dart';
import 'package:flutter_crud_contacts/provider/users.dart';
import 'package:flutter_crud_contacts/widgets/user_tile.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //dummy users
    //const users = dummy_users;
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (context, index) {
          return UserTile(users.all.elementAt(index));
        },
      ),
    );
  }
}
