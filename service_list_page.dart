import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drill_18/pages/service_detail.dart';
import 'package:flutter_drill_18/service.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key, required this.serviceList}) : super(key: key);
  final List<Service> serviceList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('サービス一覧'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 8),
          shrinkWrap: true,
          itemCount: serviceList.length,
          itemBuilder: (context, index) {
            final service = serviceList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    service.imagePath,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ServiceDetail(
                                        service: service,
                                      )));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    service.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                const Icon(CupertinoIcons.forward)
                              ],
                            ),
                            const SizedBox(height: 4),
                            SizedBox(
                              child: Text(
                                service.detail,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
