unit CadastroPsicolink;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask;

type
  Tcadprofissional = class(TForm)
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
    crp: TPanel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadprofissional: Tcadprofissional;

implementation

{$R *.dfm}

end.
