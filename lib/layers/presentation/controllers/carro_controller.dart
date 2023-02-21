import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCasa;

  CarroController(
    this._getCarrosPorCorUseCase,
    this._salvarCarroFavoritoUseCasa,
  ) {
    getCarrosPorCor('vermelho');
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor) {
    var result = _getCarrosPorCorUseCase(cor);
    result.fold(
      (error) => print(error.toString()),
      (sucess) => carro = sucess,
    );
  }

  salvarCarrofavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUseCasa(carro);
  }
}
