class Modelo {
  List<Modelos> _modelos;
  List<Anos> _anos;

  Modelo({List<Modelos> modelos, List<Anos> anos}) {
    this._modelos = modelos;
    this._anos = anos;
  }

  List<Modelos> get modelos => _modelos;
  set modelos(List<Modelos> modelos) => _modelos = modelos;
  List<Anos> get anos => _anos;
  set anos(List<Anos> anos) => _anos = anos;

  Modelo.fromJson(Map<String, dynamic> json) {
    if (json['modelos'] != null) {
      _modelos = new List<Modelos>();
      json['modelos'].forEach((v) {
        _modelos.add(new Modelos.fromJson(v));
      });
    }
    if (json['anos'] != null) {
      _anos = new List<Anos>();
      json['anos'].forEach((v) {
        _anos.add(new Anos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._modelos != null) {
      data['modelos'] = this._modelos.map((v) => v.toJson()).toList();
    }
    if (this._anos != null) {
      data['anos'] = this._anos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Modelos {
  String _nome;
  int _codigo;

  Modelos({String nome, int codigo}) {
    this._nome = nome;
    this._codigo = codigo;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;
  int get codigo => _codigo;
  set codigo(int codigo) => _codigo = codigo;

  Modelos.fromJson(Map<String, dynamic> json) {
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

class Anos {
  String _nome;
  String _codigo;

  Anos({String nome, String codigo}) {
    this._nome = nome;
    this._codigo = codigo;
  }

  String get nome => _nome;
  set nome(String nome) => _nome = nome;
  String get codigo => _codigo;
  set codigo(String codigo) => _codigo = codigo;

  Anos.fromJson(Map<String, dynamic> json) {
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
