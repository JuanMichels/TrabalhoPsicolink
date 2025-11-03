unit UnTelaPrincipalPsicologo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, UnFormUsuario, Unformagendapsico;

type
  TFormprincipalpsicologo = class(TForm)
    Image1: TImage;
    painel_superior: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    agenda: TButton;
    pacientes: TButton;
    Perfil: TButton;
    procedure agendaClick(Sender: TObject);
    procedure PerfilClick(Sender: TObject);
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


procedure TFormprincipalpsicologo.PerfilClick(Sender: TObject);
var
  LFormUsuario: TFormUsuario;
begin
  LFormUsuario := TFormUsuario.create(nil);
  try
    LFormUsuario.showModal;

  finally
    FreeAndNil(LFormUsuario);
  end;
end;

end.
