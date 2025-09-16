object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 544
    Top = 24
  end
  object FDTable1: TFDTable
    Connection = DMPrincipalP.FDConnection
    Left = 448
    Top = 24
  end
end
