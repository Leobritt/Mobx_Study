import 'package:mobx/mobx.dart';
part 'counter.g.dart';
//informando q o counter usa part do arquvido gerado

//mesclando a class que vai ser gerada _$Counter com a class _Counter
class Counter = _Counter with _$Counter;

//Para usar o gerador roda o comando flutter packages pub run build_runner build

//gerando codigo com o build runner e codgen usa o with store 
//abstract pq ñ é para permitir que instancie-se uma class _Counter
abstract class _Counter with Store{

  @observable
  int count = 0;

  @action
  void increment(){
    count++;
  }
}