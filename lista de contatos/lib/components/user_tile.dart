import 'package:flutter/material.dart';
import 'package:exemplo/models/users.dart';

class UserTile extends StatelessWidget {
  
  final User user;

  const UserTile(this.user);

  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == Null || user.avatarUrl.isEmpty
      ? CircleAvatar(child: Icon(Icons.person))
      : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.edit),
                color: Colors.blue,
                ),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.delete),
                color: Colors.red,
            )
          ]
        ),
      ),
    );
  }
}