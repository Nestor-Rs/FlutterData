import 'package:flutter/widgets.dart';

class ToDo {
  final String task;

  const ToDo({
    required this.task
  });
}

final task = [
  //new Text("HolaMundito"),
  new ToDo(task:'IA'),
  new ToDo(task:'Movil'),
  new ToDo(task:'Big Data'),
  new ToDo(task:'Sis Integrados'),
  new ToDo(task:'Humanismo Clasico'),
  new ToDo(task:'Practicum'),
  new ToDo(task:'Adm Proyectos'),
];

/*
final countries = [
  new Country(name:'Belarus',capital:'Minsk',region:'Europe',population: 9498700),
  new Country(name:'Bulgaria',capital:'Sofia',region:'Europe',population: 7153784),
  new Country(name:'Czech Republic',capital:'Prague',region:'Europe',population: 10558524),
  new Country(name:'Denmark',capital:'Copenhagen',region:'Europe',population: 5717014),
  new Country(name:'Italy',capital:'Rome',region:'Europe',population: 60665551),
  new Country(name:'Liechtenstein',capital:'Vaduz',region:'Europe',population: 37623),
  new Country(name:'Norway',capital:'Oslo',region:'Europe',population: 5223256),
  new Country(name:'Spain',capital:'Madrid',region:'Europe',population: 46438422),
  new Country(name:'Sweden',capital:'Stockholm',region:'Europe',population: 9894888),
  new Country(name:'Ukraine',capital:'Kiev',region:'Europe',population: 42692393),
];

final countries = [
  new ToDo(tarea:'',fecha:''),
  new ToDo(tarea:'',fecha:''),
  new ToDo(tarea:'',fecha:''),
  new ToDo(tarea:'',fecha:''),
  new ToDo(tarea:'',fecha:''),
  new ToDo(tarea:'',fecha:''),
  new ToDo(tarea:'',fecha:''),
];
*/