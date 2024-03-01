import '../endereco_model.dart';

abstract class CepRepository{

  Future<EnderecoModel> getCep(String cep);

}