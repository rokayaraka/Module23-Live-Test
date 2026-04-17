import 'package:flutter/material.dart';
import 'package:live_exam/data/json.dart';
import 'package:live_exam/data/models/reciepe.dart';
import 'package:live_exam/presentation/screens/reciepie_item.dart';

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
    fetch();
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
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.grey,

        title: const Text("Recipes",
       style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: reciepes.length,
        itemBuilder: (context, index) {
          final reciepe = reciepes[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReciepieItem(reciepe: reciepe),
                ),
              );
              
            },
            child: Card(
              child: ListTile(
                title: Text(reciepe.title ?? "Unnamed Recipe",
                
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                leading: Icon(Icons.restaurant, color: Colors.deepPurple),
                subtitle: Text(reciepe.description ?? "No description available"),
              ),
            ),
          );
        },
      ),
    );
  }
}