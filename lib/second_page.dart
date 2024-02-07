import 'package:flutter/material.dart';
import 'package:jprovider_app/list_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder: (context, list, child) => Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          list.add();
        }),
        body: Column(children: [
          Text('${list.numbers.last}'),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: 600,
            child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: list.numbers.length,
                    itemBuilder: (context, index) =>
                        Text('${list.numbers.last}'))),
          )
        ]),
      ),
    );
  }
}
