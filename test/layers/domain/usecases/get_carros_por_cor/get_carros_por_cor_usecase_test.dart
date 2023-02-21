import 'package:clean_architecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instância de carro quando passar qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );

    var result = useCase('azul');

    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar uma carro de quatro portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );

    var result = useCase('vermelho');
    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.qtdPortas, 4);
  });

  test(
      'Deve retornar uma carro de duas portas quando qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp(),
      ),
    );

    var result = useCase('verde');

    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.qtdPortas, 2);
  });
}
