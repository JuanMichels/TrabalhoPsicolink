unit UnDMAgenda;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UnDMPrincipal;

type
  TDMAgenda = class(TDataModule)
    QRYAgenda: TFDQuery;
    DSAgenda: TDataSource;
    QRYAgendaid: TLargeintField;
    QRYAgendadata_agendamento: TDateField;
    procedure concetaragenda;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAgenda: TDMAgenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMAgenda }

procedure TDMAgenda.concetaragenda;
begin
  QRYAgenda.close;
  QRYAgenda.SQL.clear;
  QRYAgenda.SQL.Add('SELECT * FROM agenda');
  QRYAgenda.open;
end;

end.
