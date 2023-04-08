import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail Page'),
      ),
      body: IconButton(
        onPressed: () {
          context.go('/users/veri');
        },
        icon: const Icon(Icons.details),
      ),
    );
  }
}
