import 'package:mobx/mobx.dart';

class Counter{

  //vinculando ação a função 
  Counter(){
    increment = Action(_increment);
  }

  //instanciando um Observable(estado) 
  Observable<int> _count = Observable(0);

  //fazendo um get count q irá retornar o valor contido no Observable
  int get count => _count.value;

  //definindo a ação que vai mudar o estado do Observable
  late Action increment;

  //é ncessario vincular ação a função para funcionar 
  void _increment(){
    _count.value ++;
  }
}