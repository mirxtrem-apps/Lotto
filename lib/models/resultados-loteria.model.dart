// To parse this JSON data, do
//
//     final resultado = resultadoFromJson(jsonString);

import 'dart:convert';

Resultado resultadoFromJson(String str) => Resultado.fromJson(json.decode(str));

String resultadoToJson(Resultado data) => json.encode(data.toJson());


class Resultado {
    String id;
    String loteria;
    String numero;
    String premio;
    String serie;
    String sorteo;

    Resultado({
        this.id,
        this.loteria,
        this.numero,
        this.premio,
        this.serie,
        this.sorteo,
    });

    factory Resultado.fromJson(Map<String, dynamic> json) => Resultado(
        id: json["id"] == null ? null : json["id"],
        loteria: json["loteria"] == null ? null : json["loteria"],
        numero: json["numero"] == null ? null : json["numero"],
        premio: json["premio"] == null ? null : json["premio"],
        serie: json["serie"] == null ? null : json["serie"],
        sorteo: json["sorteo"] == null ? null : json["sorteo"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "loteria": loteria == null ? null : loteria,
        "numero": numero == null ? null : numero,
        "premio": premio == null ? null : premio,
        "serie": serie == null ? null : serie,
        "sorteo": sorteo == null ? null : sorteo,
    };
}