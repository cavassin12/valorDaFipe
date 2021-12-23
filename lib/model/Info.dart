class Info {
  String _valor;
  String _marca;
  String _modelo;
  int _anoModelo;
  String _combustivel;
  String _codigoFipe;
  String _mesReferencia;
  int _tipoVeiculo;
  String _siglaCombustivel;

  Info(
      {String valor,
      String marca,
      String modelo,
      int anoModelo,
      String combustivel,
      String codigoFipe,
      String mesReferencia,
      int tipoVeiculo,
      String siglaCombustivel}) {
    this._valor = valor;
    this._marca = marca;
    this._modelo = modelo;
    this._anoModelo = anoModelo;
    this._combustivel = combustivel;
    this._codigoFipe = codigoFipe;
    this._mesReferencia = mesReferencia;
    this._tipoVeiculo = tipoVeiculo;
    this._siglaCombustivel = siglaCombustivel;
  }

  String get valor => _valor;
  set valor(String valor) => _valor = valor;
  String get marca => _marca;
  set marca(String marca) => _marca = marca;
  String get modelo => _modelo;
  set modelo(String modelo) => _modelo = modelo;
  int get anoModelo => _anoModelo;
  set anoModelo(int anoModelo) => _anoModelo = anoModelo;
  String get combustivel => _combustivel;
  set combustivel(String combustivel) => _combustivel = combustivel;
  String get codigoFipe => _codigoFipe;
  set codigoFipe(String codigoFipe) => _codigoFipe = codigoFipe;
  String get mesReferencia => _mesReferencia;
  set mesReferencia(String mesReferencia) => _mesReferencia = mesReferencia;
  int get tipoVeiculo => _tipoVeiculo;
  set tipoVeiculo(int tipoVeiculo) => _tipoVeiculo = tipoVeiculo;
  String get siglaCombustivel => _siglaCombustivel;
  set siglaCombustivel(String siglaCombustivel) =>
      _siglaCombustivel = siglaCombustivel;

  Info.fromJson(Map<String, dynamic> json) {
    _valor = json['Valor'];
    _marca = json['Marca'];
    _modelo = json['Modelo'];
    _anoModelo = json['AnoModelo'];
    _combustivel = json['Combustivel'];
    _codigoFipe = json['CodigoFipe'];
    _mesReferencia = json['MesReferencia'];
    _tipoVeiculo = json['TipoVeiculo'];
    _siglaCombustivel = json['SiglaCombustivel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Valor'] = this._valor;
    data['Marca'] = this._marca;
    data['Modelo'] = this._modelo;
    data['AnoModelo'] = this._anoModelo;
    data['Combustivel'] = this._combustivel;
    data['CodigoFipe'] = this._codigoFipe;
    data['MesReferencia'] = this._mesReferencia;
    data['TipoVeiculo'] = this._tipoVeiculo;
    data['SiglaCombustivel'] = this._siglaCombustivel;
    return data;
  }
}