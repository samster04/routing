import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewModel{
  IconData? icon;//? le nullable declare garxa
  String? title;
  double? revenue;

  ListViewModel({this.icon,this.title,this.revenue});
}
List<int> b=[1,2,3];
//model haru banauda list banunu parxa jahile pani ani tyo class ko bhitra jj xa sabai aaunxa
final List<ListViewModel> movielist =[
  ListViewModel(icon: Icons.add_alarm, title: null, revenue: 7.7),
  ListViewModel(icon: Icons.add_alarm, title: 'the beekeeper', revenue: 5.7),
  ListViewModel(icon: Icons.add_alarm, title: 'wonka', revenue: 6.7),
  ListViewModel(icon: Icons.add_alarm, title: 'migration', revenue: 7.7),
  ListViewModel(icon: Icons.add_alarm, title: 'anyone but you ', revenue: 4.7),
  ListViewModel(icon: Icons.add_alarm, title: 'poor things', revenue: 2.7),
];