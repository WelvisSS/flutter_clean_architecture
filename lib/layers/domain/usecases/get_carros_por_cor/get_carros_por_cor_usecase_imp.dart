import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;
  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
