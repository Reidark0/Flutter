import 'package:exemplo/components/user_tile.dart';
import 'package:exemplo/data/dummy_users.dart';
import 'package:flutter/material.dart';

class Userlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
        ),
    );
  }
}
