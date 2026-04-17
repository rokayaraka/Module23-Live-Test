import 'package:flutter/material.dart';
import 'package:live_exam/data/models/reciepe.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Reciepe>reciepes=[];
  @override
  void initState() {
    super.initState();
    
  }
  void fetch(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes"),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Recipe ${index + 1}"),
            subtitle: Text("Description of Recipe ${index + 1}"),
          );
        },
      ),
    );
  }
}