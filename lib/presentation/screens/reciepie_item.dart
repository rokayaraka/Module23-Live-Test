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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.reciepe.description ?? "No description available",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Ingredients:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ...?widget.reciepe.ingredients?.map((ingredient) => Text("- $ingredient")),
          ],
        ),
      ),
    );
  }
}