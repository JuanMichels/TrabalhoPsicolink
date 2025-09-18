unit DMUnCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  UnDMPrincipal,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMCadastro = class(TDataModule)
    QRYCadastro: TFDQuery;
    QRYPsicologo: TFDQuery;
    QRYCadastroid: TLargeintField;
    QRYCadastronome: TWideStringField;
    QRYCadastrocpf: TWideStringField;
    QRYCadastrodatanascimento: TDateField;
    QRYCadastroendereco: TWideStringField;
    QRYCadastrotelefone: TWideStringField;
    QRYCadastroemail: TWideStringField;
    QRYCadastrosenha: TWideStringField;
    QRYCadastrocep: TWideStringField;
    QRYCadastrobairro: TWideStringField;
    QRYCadastronumerocasa: TBCDField;
    QRYPsicologoid: TLargeintField;
    QRYPsicologocrp: TWideStringField;
    QRYCadastrofk_psicologo_id: TIntegerField;
    QRYCadastroconfirmarsenha: TWideStringField;
    procedure conectarCadastro;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadastro: TDMCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDMCadastro }

procedure TDMCadastro.conectarCadastro;
begin
  QRYCadastro.close;
  QRYCadastro.SQL.clear;
  QRYCadastro.SQL.Add('SELECT * FROM pessoa');
  QRYCadastro.open;

  QRYPsicologo.close;
  QRYPsicologo.SQL.clear;
  QRYPsicologo.SQL.Add('SELECT * FROM psicologo');
  QRYPsicologo.open;
end;

end.
