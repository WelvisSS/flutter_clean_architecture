import 'package:dartz/dartz.dart';

import '../../entities/carro_entity.dart';

abstract class SalvarCarroFavoritoUseCase {
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
