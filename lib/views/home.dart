import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 200),
          child: Center(
            child: Column(children: [
              Text(
                "Bem-vindo",
                style: TextStyle(fontSize: 26.0),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.USER_LIST);
                  },
                  child: Text("Ver minha lista"))
            ]),
          ),
        ));
  }
}
