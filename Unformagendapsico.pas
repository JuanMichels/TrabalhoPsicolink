unit Unformagendapsico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, UnDMAgenda;

type
  TFormAgendaPsico = class(TForm)
    painel_superior: TPanel;
    Image1: TImage;
    sub_painel: TPanel;
    painel_inferior: TPanel;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgendaPsico: TFormAgendaPsico;

implementation

{$R *.dfm}

procedure TFormAgendaPsico.FormCreate(Sender: TObject);
begin
  DMAgenda := TDMAgenda.Create(nil);

  DMAgenda.QRYAgenda.Close;
  DMAgenda.QRYAgenda.SQL.Clear;
  DMAgenda.QRYAgenda.SQL.Add('Select * from agenda');
  DMAgenda.QRYAgenda.Open;
end;

end.
