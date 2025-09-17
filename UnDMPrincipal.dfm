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
      'Select * from pessoa'
      'Where CPF = :CPF and Senha = :Senha')
    Left = 664
    Top = 112
    ParamData = <
      item
        Name = 'CPF'
        ParamType = ptInput
      end
      item
        Name = 'SENHA'
        ParamType = ptInput
      end>
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
    object FDQueryfk_psicologo_id: TIntegerField
      FieldName = 'fk_psicologo_id'
      Origin = 'fk_psicologo_id'
    end
  end
end
