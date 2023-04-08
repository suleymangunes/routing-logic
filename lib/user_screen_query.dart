import 'package:flutter/material.dart';

class UserScreenQuer extends StatelessWidget {
  const UserScreenQuer({
    super.key,
    this.filter,
  });
  final String? filter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Query user: $filter"),
        ),
        body: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.query_builder),
        ));
  }
}
