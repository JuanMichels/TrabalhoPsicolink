unit UnFormUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  UnDMUsuario,
  Vcl.StdCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, UnDMPrincipal,
  UnAdiconarTelefone, UnFormPsicologo;

type
  TFormUsuario = class(TForm)
    painel_superior: TPanel;
    Image1: TImage;
    sub_painel: TPanel;
    painel_inferior: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Sair: TButton;
    Salvar: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuario: TFormUsuario;

implementation

{$R *.dfm}

procedure TFormUsuario.Button1Click(Sender: TObject);
var
  LformTelefone: TFormTelefone;
begin
  if DMUsuario.QRYUsuarioContatos.State in [dsEdit, dsBrowse] then
    LformTelefone := TFormTelefone.create(nil);
  try
    LformTelefone.showModal;
  finally
    FreeAndNil(LformTelefone);
  end
end;

procedure TFormUsuario.FormShow(Sender: TObject);

begin
  DMUsuario := TDMUsuario.create(nil);
  DMUsuario.QRYUsuario.close;
  DMUsuario.QRYUsuario.SQL.clear;
  DMUsuario.QRYUsuario.SQL.Add(Format('Select * from pessoa where id =  %0:d',
    [DMPrincipalP.Usuarioid]));
  DMUsuario.QRYUsuario.open;

  DMUsuario.QRYUsuarioContatos.close;
  DMUsuario.QRYUsuarioContatos.SQL.clear;
  DMUsuario.QRYUsuarioContatos.SQL.Add('Select * from contatos');
  DMUsuario.QRYUsuarioContatos.open;

  Label11.caption := 'Usuario: ' + DMPrincipalP.FDQuery.FieldByName('nome')
    .AsString + sLineBreak + 'CPF: ' + DMPrincipalP.FDQuery.FieldByName
    ('cpf').AsString;

end;

procedure TFormUsuario.SairClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFormUsuario.SalvarClick(Sender: TObject);
begin
  if DMUsuario.QRYUsuario.State in [dsEdit, dsInsert] then
  begin
    DMUsuario.QRYUsuario.Post;
    DMUsuario.QRYUsuario.ApplyUpdates();
    DMUsuario.QRYUsuario.CommitUpdates;
    ShowMessage('Salvo com sucesso!');
  end;
end;

end.
