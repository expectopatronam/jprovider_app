import 'package:flutter/material.dart';
import 'package:jprovider_app/list_provider.dart';
import 'package:jprovider_app/second_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder: (context, list, child) => Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            list.add();
          }),
        
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('${list.numbers.last}'),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection:Axis.vertical,
                  itemCount: list.numbers.length,
                  itemBuilder: (context, index) => Text('${list.numbers[index]}')),
            ),
             const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondPage(),));
            }, child: child)
          ])),
    );
  }
}
