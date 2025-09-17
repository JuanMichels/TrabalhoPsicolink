unit TelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.StdCtrls, UnCadastro, UnFormPsicolink, DMUnCadastro, UnDMPrincipal;

type
  TForm2 = class(TForm)
    painel_superior: TPanel;
    Image1: TImage;
    sub_painel: TPanel;
    menu_central: TPanel;
    Login: TPanel;
    painel_inferior: TPanel;
    Cadastro: TPanel;
    Image2: TImage;
    procedure CadastroClick(Sender: TObject);
    procedure LoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.CadastroClick(Sender: TObject);
var
  LFormCadastro: TUnFormCadastro;
begin
  LFormCadastro := TUnFormCadastro.create(Self);
  try
    LFormCadastro.showModal;
  finally
    FreeAndNil(LFormCadastro)
  end;
end;


procedure TForm2.LoginClick(Sender: TObject);
var
  LFormLogin: TFormLogin;
begin
  LFormLogin := TFormLogin.create(Self);
  try
    LFormLogin.showModal;
  finally
    FreeAndNil(LFormLogin)
  end;
end;

end.
