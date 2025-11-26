object DMCadastro: TDMCadastro
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object QRYCadastro: TFDQuery
    CachedUpdates = True
    Connection = DMPrincipalP.FDConnection
    UpdateOptions.AutoIncFields = 'id'
    SQL.Strings = (
      'Select * from pessoa')
    Left = 400
    Top = 56
  end
  object DSCadastro: TDataSource
    DataSet = QRYCadastro
    Left = 553
    Top = 48
  end
  object QRYEmpresa: TFDQuery
    CachedUpdates = True
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from empresa')
    Left = 393
    Top = 168
  end
  object DSEmpresa: TDataSource
    DataSet = QRYEmpresa
    Left = 560
    Top = 193
  end
end
