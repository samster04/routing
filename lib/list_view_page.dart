import 'package:flutter/material.dart';
import 'package:routing/model/list_view_model.dart';
class  ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder (
        itemCount: movielist.length,
        itemBuilder: (BuildContext context, int index){
          final movieData = movielist[index];
          return ListTile(
            leading: Icon(movieData.icon),
            title: Text(movieData.title ?? 'heloo', style: TextStyle(fontWeight: FontWeight.bold,),),//?? le moviedata.icon null aayo bhane k print garne bhanera define garxa
            subtitle: Text('\$${movieData.revenue} M'),
          );
        },
      ),
    );
  }
}