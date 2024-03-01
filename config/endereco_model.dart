import 'dart:convert'; 

class EnderecoModel {
  final String cep;
  final String logradouro;
  final String complemento;

  EnderecoModel({
   required this.cep,
   required this.logradouro,
   required this.complemento
  });


  Map<String,dynamic> toMap(){
    return{
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento
    };
  }

  factory EnderecoModel.fromMap(Map<String, dynamic> map){
    return EnderecoModel(
     cep: map['cep'],
     logradouro: map['logradouro'],
     complemento: map['complemento']);
  }

  factory EnderecoModel.fromJson(String json) => EnderecoModel.fromMap(jsonDecode(json));

}