unit UnTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, UnFormUsuario, UnAgenda, UnDMPrincipal,
  Vcl.ComCtrls, UnAdiconarTelefone, UnFormPsicologo;

type
  TFormPrincipal = class(TForm)
    painel_superior: TPanel;
    Image1: TImage;
    sub_painel: TPanel;
    painel_inferior: TPanel;
    menu_central: TPanel;
    Usuario: TPanel;
    Agenda: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Label3: TLabel;
    procedure AgendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}



procedure TFormPrincipal.AgendaClick(Sender: TObject);
var
  LFormAgenda: TFormAgenda;
begin
  LFormAgenda := TFormAgenda.create(Self);
  try
    LFormAgenda.showModal;
  finally
    FreeAndNil(LFormAgenda);
  end;
end;



procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  Label3.caption := 'Usuario: ' + DMPrincipalP.FDQuery.FieldByName('nome').AsString + sLineBreak +
   'CPF: ' + DMPrincipalP.FDQuery.FieldByName('cpf').AsString;
end;


procedure TFormPrincipal.UsuarioClick(Sender: TObject);
var
  LFormUsuario: TFormUsuario;
begin
  LFormUsuario := TFormUsuario.create(Self);
  try
    LFormUsuario.showModal;

  finally
    FreeAndNil(LFormUsuario);
  end;
end;

end.
