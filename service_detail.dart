import 'package:flutter/material.dart';
import 'package:flutter_drill_18/service.dart';

class ServiceDetail extends StatelessWidget {
  const ServiceDetail({Key? key, required this.service}) : super(key: key);
  final Service service;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('サービス詳細'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(service.imagePath),
          const SizedBox(height: 10),
          Text(
            service.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            service.detail,
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
