object DMUsuarioPsicol: TDMUsuarioPsicol
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object QRYPessoa: TFDQuery
    CachedUpdates = True
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from pessoa')
    Left = 224
    Top = 80
  end
  object QRYPsicologo: TFDQuery
    CachedUpdates = True
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from psicologo')
    Left = 224
    Top = 168
  end
  object DSPessoa: TDataSource
    DataSet = QRYPessoa
    Left = 352
    Top = 80
  end
  object DSPsicologo: TDataSource
    DataSet = QRYPsicologo
    Left = 360
    Top = 176
  end
end
