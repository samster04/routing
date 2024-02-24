import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TopPicsModel{

  String ? image;
  double ? rating;
  String ? title;
  TopPicsModel({this.image,this.rating,this.title,});

}
final List<TopPicsModel> movieList =[
  TopPicsModel( image: 'https://i.ibb.co/XVYT7M7/movie1.jpg', rating: 7.5,title:'OMG'),
  TopPicsModel( image: 'https://i.ibb.co/QCT5fMF/movie2.jpg', rating: 5.8,title:'Babby'),
  TopPicsModel( image: 'https://i.ibb.co/TbJ9cwZ/movie3.jpg', rating: 9.0,title:'Breaking Bad'),

];