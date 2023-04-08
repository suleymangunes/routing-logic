import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key, required this.id});
  final String? id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('user screen $id'),
      ),
      body: IconButton(
        onPressed: () {
          // query ile sayfalar arasi gecis
          // context.go('/users?filter=thisisfilter');
          context.go(Uri(path: "/users", queryParameters: {"filter": "this is filter"}).toString());
        },
        icon: const Icon(Icons.verified_user),
      ),
    );
  }
}
