unit UnDMPsicologo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UnDMPrincipal;

type
  TDMPsicologo = class(TDataModule)
    QRYPsicologos: TFDQuery;
    DSPsicologo: TDataSource;
    QRYPessoa: TFDQuery;
    DSPessoa: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPsicologo: TDMPsicologo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMPsicologo.DataModuleCreate(Sender: TObject);
begin
  QRYPsicologos.Connection := DMPrincipalP.FDConnection;
  QRYPsicologos.Open;
end;

end.
