unit DMUsuarioPsico;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UnDMPrincipal;

type
  TDMUsuarioPsicol = class(TDataModule)
    QRYPessoa: TFDQuery;
    QRYPsicologo: TFDQuery;
    DSPessoa: TDataSource;
    DSPsicologo: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUsuarioPsicol: TDMUsuarioPsicol;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
