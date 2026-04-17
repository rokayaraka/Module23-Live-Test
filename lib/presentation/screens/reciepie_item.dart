import 'package:flutter/material.dart';
import 'package:live_exam/data/models/reciepe.dart';

class ReciepieItem extends StatefulWidget {
  const ReciepieItem({super.key, required this.reciepe});
  final Reciepe reciepe;
  @override
  State<ReciepieItem> createState() => _ReciepieItemState();
}

class _ReciepieItemState extends State<ReciepieItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.grey,
        title: Text(widget.reciepe.title ?? "Unnamed Recipe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.reciepe.description ?? "No description available",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 20),
              
              Text(
                "Ingredients",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
                SizedBox(height: 10),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://img.freepik.com/free-vector/food-ingredients-recipe-ravioli-hand-drawn-vector-illustration_1284-42012.jpg?semt=ais_hybrid&w=740&q=80",
                    fit: BoxFit.cover,
                    )),
              ),
              SizedBox(height: 20),
              ...?widget.reciepe.ingredients?.map((ingredient) => Text("- $ingredient")),
            ],
          ),
        ),
      ),
    );
  }
}