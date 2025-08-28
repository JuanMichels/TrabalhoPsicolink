unit UnDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Dialogs, System.IniFiles;

type
  TDMPrincipalP = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    FDQuery: TFDQuery;
    procedure conectarbanco;
    procedure buscarbanco;
  private
    { Private declarations }
    function buscarcaminhobase: string;
  public
    { Public declarations }
  end;

var
  DMPrincipalP: TDMPrincipalP;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDMPrincipalP }



function TDMPrincipalP.buscarcaminhobase: string;
var
  LInifile: TIniFile;
  Lcaminho: string;
begin
  Lcaminho := ExtractFilePath(ParamStr(0));
  if FileExists(Lcaminho + 'config.ini') then
  begin
    LInifile := TIniFile.Create(Lcaminho + 'config.ini');
    try
      result := LInifile.ReadString('configuracao', 'caminhobanco', '');
    finally
      FreeAndNil(LInifile);
    end;
  end
  else
  begin
    ShowMessage(' Arquivo' + Lcaminho + 'config.ini não encontrado!' + #13 +
      'Verifique!');
    Abort;
  end;
end;

procedure TDMPrincipalP.conectarbanco;
begin
  try
    FDConnection.close;
    FDConnection.Params.add('DRIVEID=PG');
    FDConnection.Params.add('Database=' + buscarcaminhobase);
    FDConnection.Params.add('User_Name=postgres');
    FDConnection.Params.add('Password=Juan2006');
    FDConnection.Connected := True;
  except
    on E: exception do
      ShowMessage('Não foi possivel conectar ao banco: ' + #13 + E.Message);
  end;
end;

procedure TDMPrincipalP.buscarbanco;
begin
  FDQuery.close;
  FDQuery.SQL.clear;
  FDQuery.SQL.Add('SELECT COUNT(*) FROM pessoa WHERE cpf = :cpf');
  FDQuery.open;
end;

end.
