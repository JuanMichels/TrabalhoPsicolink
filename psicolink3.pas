unit psicolink3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tcadastro = class(TForm)
    painel_superior: TPanel;
    Image1: TImage;
    sub_painel: TPanel;
    painel_inferior: TPanel;
    menu_central: TPanel;
    nome: TPanel;
    cpf: TPanel;
    contato: TPanel;
    senha: TPanel;
    criarconta: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro: Tcadastro;

implementation

{$R *.dfm}

end.
