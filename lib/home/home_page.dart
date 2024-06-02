import 'package:checklist/itens_checklist/itens_checklist_page.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../checklist_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String ROUTE_PAGE = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<ChecklistModel> listaChecklistModel = [];
    Map<int?, List<ChecklistModel>> groupServices = {};
    dynamic lista = [
      [
        313472,
        'MWC0I67',
        210,
        'JAIRON JORGE MARQUES DE OLIVEIRA JUNIOR',
        1,
        'Cavalo',
        1,
        'Funilaria e Reparos',
        1,
        'Funilaria no para-choque dianteiro',
        'C',
        'Corrigir',
        20140,
        'S',
        'Substituir',
        20141
      ],
      [
        313472,
        'MWC0I67',
        210,
        'JAIRON JORGE MARQUES DE OLIVEIRA JUNIOR',
        1,
        'Cavalo',
        1,
        'Funilaria e Reparos',
        2,
        'Funilaria na bochecha L.D',
        'C',
        'Corrigir',
        20142,
        'S',
        'Substituir',
        20143
      ],
      [
        313472,
        'MWC0I67',
        210,
        'JAIRON JORGE MARQUES DE OLIVEIRA JUNIOR',
        1,
        'Cavalo',
        1,
        'Funilaria e Reparos',
        3,
        'Funilaria na Bochecha L.E',
        'C',
        'Corrigir',
        20144,
        'S',
        'Substituir',
        20145
      ],
      [
        313472,
        'MWC0I67',
        210,
        'JAIRON JORGE MARQUES DE OLIVEIRA JUNIOR',
        1,
        'Cavalo',
        1,
        'Funilaria e Reparos',
        4,
        'Funilaria na Porta L.D',
        'C',
        'Corrigir',
        20191,
        null,
        null,
        null
      ],
      [
        313472,
        'MWC0I67',
        210,
        'JAIRON JORGE MARQUES DE OLIVEIRA JUNIOR',
        1,
        'Cavalo',
        1,
        'Funilaria e Reparos',
        5,
        'Funilaria na Porta L.E',
        'C',
        'Corrigir',
        20192,
        'S',
        'Substituir',
        20193
      ],
      [
        313472,
        'MWC0I67',
        210,
        'JAIRON JORGE MARQUES DE OLIVEIRA JUNIOR',
        1,
        'Cavalo',
        6,
        '1º Eixo da Tração L.E',
        2,
        'Paralama 1º Eixo da Tração L.E',
        null,
        null,
        null,
        'S',
        'Substituir',
        20213
      ],
      [
        313472,
        'MWC0I67',
        210,
        'JAIRON JORGE MARQUES DE OLIVEIRA JUNIOR',
        1,
        'Cavalo',
        6,
        '1º Eixo da Tração L.E',
        3,
        'Cuica de Freio 1º Eixo da Tração L.E',
        null,
        null,
        null,
        'S',
        'Substituir',
        3055
      ],
      [
        313472,
        'MWC0I67',
        210,
        'JAIRON JORGE MARQUES DE OLIVEIRA JUNIOR',
        1,
        'Cavalo',
        6,
        '1º Eixo da Tração L.E',
        4,
        'Parafusos de Roda 1º Eixo da Tração L.E',
        null,
        null,
        null,
        'S',
        'Substituir',
        20385
      ],
    ];
    print(lista);

    for (var item in lista) {
      listaChecklistModel.add(
        ChecklistModel(
          codigoVeiculo: item[0],
          placa: item[1],
          frota: item[2],
          motorista: item[3],
          codigoGrupo: item[4],
          descricaoGrupo: item[5],
          sequenciaGrupo: item[6],
          grupo: item[7],
          sequenciaPergunta: item[8],
          pergunta: item[9],
          acaoValueC: item[10],
          acaoLabelC: item[11],
          codigoProdutoC: item[12],
          acaoValueS: item[13],
          acaoLabelS: item[14],
          codigoProdutoS: item[15],
        ),
      );
    }
    groupServices = groupBy(listaChecklistModel, (obj) => obj.sequenciaGrupo);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: groupServices.length,
        itemBuilder: (_, index) {
          int? key = groupServices.keys.elementAt(index);
          var aux = groupServices[key];
          print(aux);
          return GestureDetector(
            onTap: () => Get.toNamed(
              ItensChecklistPage.ROUTE_PAGE,
              arguments: [
                listaChecklistModel,
                groupServices,
                aux,
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Text(aux![index].grupo!),
              ),
            ),
          );
        },
      ),
    );
  }
}
