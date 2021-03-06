import 'package:flutter/material.dart';
import 'package:flutter_crud_contacts/provider/users.dart';
import 'package:flutter_crud_contacts/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) {
              return Users();
            },
          )
        ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const UserList(),
      ),
    );
  }
}