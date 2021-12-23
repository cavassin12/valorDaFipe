class Ano {
  String _nome;
  String _codigo;

  Ano({String nome, String codigo}) {
    this._nome = nome;
    this._codigo = codigo;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;
  String get codigo => _codigo;
  set codigo(String codigo) => _codigo = codigo;

  Ano.fromJson(Map<String, dynamic> json) {
    _nome = json['nome'];
    _codigo = json['codigo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this._nome;
    data['codigo'] = this._codigo;
    return data;
  }
}