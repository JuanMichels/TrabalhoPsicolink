unit UnTelaPrincipalPsicologo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, UnUsuarioPsico, Unformagendapsico, UnDMPrincipal, UnDMAgenda, UnRelatórioFiltro;

type
  TFormprincipalpsicologo = class(TForm)
    Image1: TImage;
    painel_superior: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    agenda: TButton;
    Perfil: TButton;
    Label1: TLabel;
    Relatorio: TButton;
    procedure agendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PerfilClick(Sender: TObject);
    procedure RelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formprincipalpsicologo: TFormprincipalpsicologo;

implementation

{$R *.dfm}

procedure TFormprincipalpsicologo.agendaClick(Sender: TObject);
var
  LFormAgenda: TFormAgendaPsico;
begin
  LFormAgenda := TFormAgendaPsico.create(nil);
  try

    LFormAgenda.showModal;
  finally
    FreeAndNil(LFormAgenda);
  end;
end;


procedure TFormprincipalpsicologo.FormShow(Sender: TObject);
begin
  label1.caption := 'Usuario: ' + DMPrincipalP.FDQuery.FieldByName('nome').AsString + sLineBreak +
  'CRP: ' + DMPrincipalP.QRYPsicologo.FieldByName('crp').AsString;
end;

procedure TFormprincipalpsicologo.PerfilClick(Sender: TObject);
var
  LFormUsuario: TFormUsuarioPsico;
begin
  LFormUsuario := TFormUsuarioPsico.create(nil);
  try
    LFormUsuario.showModal;

  finally
    FreeAndNil(LFormUsuario);
  end;
end;

procedure TFormprincipalpsicologo.RelatorioClick(Sender: TObject);
var
  lformrelatorio : TRelatorioBusca;
begin
  lformrelatorio := TRelatorioBusca.Create(nil);
  try
    lformrelatorio.ShowModal;
  finally
    FreeAndNil(lformrelatorio);
  end;
end;

end.
