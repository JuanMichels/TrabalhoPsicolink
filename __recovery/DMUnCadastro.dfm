object DMCadastro: TDMCadastro
  Height = 600
  Width = 800
  object QRYCadastro: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'id_psicologo'
    MasterSource = DSPsicologo
    MasterFields = 'id_psicologo'
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from pessoa'
      'where id_psicologo = :id_psicologo')
    Left = 429
    Top = 128
    ParamData = <
      item
        Name = 'ID_PSICOLOGO'
        ParamType = ptInput
        Value = Null
      end>
    object QRYCadastroid: TLargeintField
      Alignment = taLeftJustify
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QRYCadastronome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 150
    end
    object QRYCadastrocpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 12
    end
    object QRYCadastrodatanascimento: TDateField
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
    end
    object QRYCadastroendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 150
    end
    object QRYCadastrotelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 11
    end
    object QRYCadastroemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 150
    end
    object QRYCadastrosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 6
    end
    object QRYCadastrocep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 15
    end
    object QRYCadastrobairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object QRYCadastronumerocasa: TBCDField
      Alignment = taLeftJustify
      FieldName = 'numerocasa'
      Origin = 'numerocasa'
      Precision = 15
      Size = 2
    end
    object QRYCadastroconfirmarsenha: TWideStringField
      FieldName = 'confirmarsenha'
      Origin = 'confirmarsenha'
      Size = 6
    end
    object QRYCadastroid_psicologo: TIntegerField
      FieldName = 'id_psicologo'
      Origin = 'id_psicologo'
    end
  end
  object QRYPsicologo: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'id_psicologo'
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from psicologo')
    Left = 429
    Top = 192
    object QRYPsicologocrp: TWideStringField
      FieldName = 'crp'
      Origin = 'crp'
      Size = 5
    end
    object QRYPsicologoid_psicologo: TLargeintField
      FieldName = 'id_psicologo'
      Origin = 'id_psicologo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DSCadastro: TDataSource
    DataSet = QRYCadastro
    Left = 570
    Top = 109
  end
  object DSPsicologo: TDataSource
    DataSet = QRYPsicologo
    Left = 570
    Top = 173
  end
  object QRYEpresa: TFDQuery
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from empresa')
    Left = 422
    Top = 294
  end
  object DSEmpresa: TDataSource
    DataSet = QRYEpresa
    Left = 557
    Top = 301
  end
end
