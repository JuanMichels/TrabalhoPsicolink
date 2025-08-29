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
    Left = 376
    Top = 113
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 520
    Top = 112
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 648
    Top = 104
  end
end
