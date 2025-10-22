object DMUsuario: TDMUsuario
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object DSUsuario: TDataSource
    DataSet = QRYUsuario
    Left = 408
    Top = 160
  end
  object QRYUsuario: TFDQuery
    CachedUpdates = True
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from pessoa')
    Left = 313
    Top = 160
    object QRYUsuarioid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QRYUsuarionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object QRYUsuariocpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 12
    end
    object QRYUsuariodatanascimento: TDateField
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
    end
    object QRYUsuarioendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 150
    end
    object QRYUsuarioemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 150
    end
    object QRYUsuariosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 6
    end
    object QRYUsuariocep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '99999-999'
      FixedChar = True
      Size = 15
    end
    object QRYUsuariobairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object QRYUsuarionumerocasa: TBCDField
      FieldName = 'numerocasa'
      Origin = 'numerocasa'
      Precision = 15
      Size = 2
    end
    object QRYUsuarioconfirmarsenha: TWideStringField
      FieldName = 'confirmarsenha'
      Origin = 'confirmarsenha'
      Size = 6
    end
  end
  object QRYUsuarioContatos: TFDQuery
    CachedUpdates = True
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from contatos')
    Left = 313
    Top = 273
    object QRYUsuarioContatosid_telefone: TLargeintField
      FieldName = 'id_telefone'
      Origin = 'id_telefone'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QRYUsuarioContatoscontato1: TWideStringField
      FieldName = 'contato1'
      Origin = 'contato1'
      Size = 11
    end
    object QRYUsuarioContatosfk_pessoas: TLargeintField
      FieldName = 'fk_pessoas'
      Origin = 'fk_pessoas'
    end
    object QRYUsuarioContatoscontatoempresaid: TIntegerField
      FieldName = 'contatoempresaid'
      Origin = 'contatoempresaid'
    end
  end
  object DSContatos: TDataSource
    DataSet = QRYUsuarioContatos
    Left = 408
    Top = 273
  end
end
