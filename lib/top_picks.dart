import 'package:flutter/material.dart';
import 'package:routing/model/top_picks_model.dart';
import 'package:routing/service/dio_service.dart';
class TopPicksModel extends StatelessWidget {
  const TopPicksModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Picks'),
        actions: [
          GestureDetector(
              child: Icon(Icons.account_circle_rounded),
        onTap:(){
      final dioService = DioService();
      dioService.getSingleTodo();
    },
    ),
        ],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: movieList.length,
          itemBuilder: (context,index){
          final topPicksData= movieList[index];
            return Container(
              child: Column(
                children: [
                  Image.network(topPicksData.image ?? 'https://i.ibb.co/86LP65y/false-2061131-640.png'),
                  SizedBox(height: 10,),
                  Text('${topPicksData.rating}'),
                  SizedBox(height: 10,),

                ],
              ),
            );
          },
      ),
    );
  }
}
