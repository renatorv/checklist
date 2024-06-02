import 'dart:convert';

class ChecklistModel {
  int? codigoVeiculo;
  String? placa;
  int? frota;
  String? motorista;
  int? codigoGrupo;
  String? descricaoGrupo;
  int? sequenciaGrupo;
  String? grupo;
  int? sequenciaPergunta;
  String? pergunta;
  String? acaoValueC;
  String? acaoLabelC;
  int? codigoProdutoC;
  String? acaoValueS;
  String? acaoLabelS;
  int? codigoProdutoS;

  ChecklistModel({
    this.codigoVeiculo,
    this.placa,
    this.frota,
    this.motorista,
    this.codigoGrupo,
    this.descricaoGrupo,
    this.sequenciaGrupo,
    this.grupo,
    this.sequenciaPergunta,
    this.pergunta,
    this.acaoValueC,
    this.acaoLabelC,
    this.codigoProdutoC,
    this.acaoValueS,
    this.acaoLabelS,
    this.codigoProdutoS,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codigoVeiculo': codigoVeiculo,
      'placa': placa,
      'frota': frota,
      'motorista': motorista,
      'codigoGrupo': codigoGrupo,
      'descricaoGrupo': descricaoGrupo,
      'sequenciaGrupo': sequenciaGrupo,
      'grupo': grupo,
      'sequenciaPergunta': sequenciaPergunta,
      'pergunta': pergunta,
      'acaoValueC': acaoValueC,
      'acaoLabelC': acaoLabelC,
      'codigoProdutoC': codigoProdutoC,
      'acaoValueS': acaoValueS,
      'acaoLabelS': acaoLabelS,
      'codigoProdutoS': codigoProdutoS,
    };
  }

  factory ChecklistModel.fromMap(Map<String, dynamic> map) {
    return ChecklistModel(
      codigoVeiculo: map['codigoVeiculo'] as int,
      placa: map['placa'] as String,
      frota: map['frota'] as int,
      motorista: map['motorista'] as String,
      codigoGrupo: map['codigoGrupo'] as int,
      descricaoGrupo: map['descricaoGrupo'] as String,
      sequenciaGrupo: map['sequenciaGrupo'] as int,
      grupo: map['grupo'] as String,
      sequenciaPergunta: map['sequenciaPergunta'] as int,
      pergunta: map['pergunta'] as String,
      acaoValueC: map['acaoValueC'] != null ? map['acaoValueC'] as String : null,
      acaoLabelC: map['acaoLabelC'] != null ? map['acaoLabelC'] as String : null,
      codigoProdutoC: map['codigoProdutoC'] != null ? map['codigoProdutoC'] as int : null,
      acaoValueS: map['acaoValueS'] != null ? map['acaoValueS'] as String : null,
      acaoLabelS: map['acaoLabelS'] != null ? map['acaoLabelS'] as String : null,
      codigoProdutoS: map['codigoProdutoS'] != null ? map['codigoProdutoS'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChecklistModel.fromJson(String source) => ChecklistModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
