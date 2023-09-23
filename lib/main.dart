import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Received_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => receiveData(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePagestl(),
    );
  }
}

class HomePagestl extends StatelessWidget {
  const HomePagestl({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData= Provider.of<receiveData>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${providerData.number}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      providerData.increment();
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        providerData.deletNumber();
                      },
                      child: Icon(Icons.delete)),
                      SizedBox(
                    width: 8,
                  ),
                      ElevatedButton(onPressed: (){
                        providerData.decrementNumber();
                      }, child: Icon(Icons.remove))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}