import 'package:flutter/material.dart';
import 'package:flutter_crud_contacts/models/user.dart';

class UserTile extends StatelessWidget {

  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      leading: avatar,
      trailing: SizedBox(
        width: 100.0,
        child: Row(
          children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: Colors.blue),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.red)
          ],
        ),
      ),
    );
  }
}
