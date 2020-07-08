import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

 abstract class CreateEventState extends Equatable{
   @override
  // TODO: implement props
  List<Object> get props => [];
}
class CreateEventStateInitial extends CreateEventState{
  CreateEventStateInitial();
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class CreateEventSuccess extends CreateEventState{}

class CreateEventFailed extends CreateEventState{}