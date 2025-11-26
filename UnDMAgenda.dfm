object DMAgenda: TDMAgenda
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object QRYAgenda: TFDQuery
    CachedUpdates = True
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from agenda')
    Left = 400
    Top = 64
  end
  object DSAgenda: TDataSource
    DataSet = QRYAgenda
    Left = 536
    Top = 73
  end
  object QRYPsicologo: TFDQuery
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from psicologo')
    Left = 393
    Top = 168
  end
  object DSPsicologo: TDataSource
    DataSet = QRYPsicologo
    Left = 536
    Top = 176
  end
  object QRYTipo: TFDQuery
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from psicologo')
    Left = 393
    Top = 256
  end
  object DSTipo: TDataSource
    DataSet = QRYTipo
    Left = 536
    Top = 264
  end
  object QRYPessoa: TFDQuery
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from pessoa')
    Left = 376
    Top = 353
  end
  object DSpessoa: TDataSource
    DataSet = QRYPessoa
    Left = 520
    Top = 353
  end
  object QRYConsulta: TFDQuery
    Connection = DMPrincipalP.FDConnection
    SQL.Strings = (
      'Select * from consulta')
    Left = 360
    Top = 440
  end
  object DSConsulta: TDataSource
    DataSet = QRYConsulta
    Left = 488
    Top = 440
  end
end
