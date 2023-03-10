import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          valor: valorFinal,
          qtdPortas: quantidadeDePortas,
          placa: placa,
        );

  toMap() {
    return {
      "placa": this.placa,
      "quantidadeDePortas": this.quantidadeDePortas,
      "valorFinal": this.valorFinal,
    };
  }

  static fromMap(Map map) {
    return CarroDto(
      placa: map["placa"],
      quantidadeDePortas: map["quantidadeDePortas"],
      valorFinal: map["valorFinal"],
    );
  }
}
