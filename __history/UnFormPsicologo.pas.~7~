unit UnFormPsicologo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, UnDMPsicologo, UnDMPrincipal;

type
  TFormPsicologo = class(TForm)
    painel_superior: TPanel;
    Image1: TImage;
    sub_painel: TPanel;
    menu_central: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Salvar: TButton;
    painel_inferior: TPanel;
    procedure FormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPsicologo: TFormPsicologo;
  DMPsicologo: TDMPsicologo;

implementation

{$R *.dfm}

procedure TFormPsicologo.FormShow(Sender: TObject);
begin
  DMPsicologo := TDMPsicologo.create(nil);
  DMPsicologo.QRYPsicologos.close;
  DMPsicologo.QRYPsicologos.SQL.Clear;
  DMPsicologo.QRYPsicologos.SQL.Add('Select * from psicologo where id_pessoa = ' + IntToStr(DMPrincipalP.Usuarioid));
  DMPsicologo.QRYPsicologos.Open;

  DMPsicologo.QRYPsicologos.Append;
end;

procedure TFormPsicologo.SalvarClick(Sender: TObject);
begin
  DMPsicologo.DSPsicologo.DataSet.FieldByName('id_pessoa').AsInteger := DMPrincipalP.Usuarioid;
  DMPsicologo.QRYPsicologos.ApplyUpdates();
  DMPsicologo.QRYPsicologos.CommitUpdates;
end;

end.
