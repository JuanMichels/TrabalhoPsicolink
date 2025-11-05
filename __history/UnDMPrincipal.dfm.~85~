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
    DriverID = 'Pg'
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 520
    Top = 113
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      '')
    Left = 664
    Top = 113
    object FDQueryid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuerycpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 12
    end
    object FDQuerysenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 6
    end
    object FDQuerynome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
  end
  object DSLogin: TDataSource
    DataSet = FDQuery
    Left = 521
    Top = 193
  end
  object QRYPsicologo: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      '')
    Left = 393
    Top = 336
  end
  object DSPsicologo: TDataSource
    DataSet = QRYPsicologo
    Left = 504
    Top = 336
  end
end
