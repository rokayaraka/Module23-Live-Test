import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:live_exam/data/json.dart';
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
    reciepes= jsonData['recipes'].map<Reciepe>((json) => Reciepe.fromJson(json)).toList();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes"),
      ),
      body: ListView.builder(
        itemCount: reciepes.length,
        itemBuilder: (context, index) {
          final reciepe = reciepes[index];
          return ListTile(
            title: Text(reciepe.title ?? "Unnamed Recipe"),
            subtitle: Text(reciepe.description ?? "No description available"),
          );
        },
      ),
    );
  }
}