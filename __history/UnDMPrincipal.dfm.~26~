object DMPrincipalP: TDMPrincipalP
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=PSICOLINK'
      'User_Name=postgres'
      'Password=Juan2006'
      'DriverID=PG')
    Connected = True
    Left = 376
    Top = 113
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 520
    Top = 113
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      '')
    Left = 664
    Top = 128
    object FDQueryid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerynome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 150
    end
    object FDQuerycpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 12
    end
    object FDQuerydatanascimento: TDateField
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
    end
    object FDQueryendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 150
    end
    object FDQuerytelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 11
    end
    object FDQueryemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 150
    end
    object SenhaEdit: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 6
    end
    object FDQuerycep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      FixedChar = True
      Size = 15
    end
    object FDQuerybairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object FDQuerynumerocasa: TBCDField
      FieldName = 'numerocasa'
      Origin = 'numerocasa'
      Precision = 15
      Size = 2
    end
  end
end
