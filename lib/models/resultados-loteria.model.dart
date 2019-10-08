// To parse this JSON data, do
//
//     final resultado = resultadoFromJson(jsonString);

import 'dart:convert';

ResultadoModel resultadoFromJson(String str) => ResultadoModel.fromJson(json.decode(str));

String resultadoToJson(ResultadoModel data) => json.encode(data.toJson());


class ResultadoModel {
    int id;
    int loteria;
    String numero;
    String premio;
    String serie;
    String sorteo;
    String fecha;

    ResultadoModel({
        this.id,
        this.loteria,
        this.numero,
        this.premio,
        this.serie,
        this.sorteo,
        this.fecha,
    });

    factory ResultadoModel.fromJson(Map<String, dynamic> json) => ResultadoModel(
        id: json["id"] == null ? null : json["id"],
        loteria: json["loteria"] == null ? null : json["loteria"],
        numero: json["numero"] == null ? null : json["numero"],
        premio: json["premio"] == null ? null : json["premio"],
        serie: json["serie"] == null ? null : json["serie"],
        sorteo: json["sorteo"] == null ? null : json["sorteo"],
        fecha: json["fecha"] == null ? null : json["fecha"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "loteria": loteria == null ? null : loteria,
        "numero": numero == null ? null : numero,
        "premio": premio == null ? null : premio,
        "serie": serie == null ? null : serie,
        "sorteo": sorteo == null ? null : sorteo,
        "fecha": fecha == null ? null : fecha,
    };
}