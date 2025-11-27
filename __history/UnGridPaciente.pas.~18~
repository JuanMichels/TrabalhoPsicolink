unit UnGridPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  UnDMAgenda, UnDMPrincipal;

type
  TGridpaciente = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Gridpaciente: TGridpaciente;
  SelectIDAgenda: Integer;
  SelectIDPaciente: Integer;

implementation

{$R *.dfm}

uses Unformagendapsico;

procedure TGridpaciente.FormCreate(Sender: TObject);
begin
  DMAgenda := TDMAgenda.create(nil);

  DMAgenda.QRYPessoa.Close;
  DMAgenda.QRYPessoa.SQL.Clear;
  DMAgenda.QRYPessoa.SQL.Add('Select * from pessoa');
  // where id =  %0:d',
  // [DMPrincipalP.Usuarioid]));
  DMAgenda.QRYPessoa.Open;

  DMAgenda.QRYPsicologo.Close;
  DMAgenda.QRYPsicologo.SQL.Clear;
  DMAgenda.QRYPsicologo.SQL.Add('SELECT * FROM psicologo where id_psicologo = '
    + IntToStr(DMPrincipalP.Usuarioid));
  DMAgenda.QRYPsicologo.Open;

  DMAgenda.QRYAgenda.Close;
  DMAgenda.QRYAgenda.SQL.Clear;
  DMAgenda.QRYAgenda.Params.Clear;
  DMAgenda.QRYAgenda.SQL.Add
    ('SELECT  pessoa.nome, agenda.data_agendamento, agenda.hora_consulta, agenda.fk_pessoa, pessoa.id, agenda.id'
    + #13 + 'FROM AGENDA ' + #13 + 'join pessoa' + #13 +
    'on (agenda.fk_pessoa = pessoa.id)'
     + #13 + 'where pessoa.id = ' + #13 +
    IntToStr(DMPrincipalP.Usuarioid));

  DMAgenda.QRYAgenda.Open;
end;

procedure TGridpaciente.DBGrid1CellClick(Column: TColumn);
begin
  SelectIDAgenda := DMAgenda.QRYAgenda.FieldByName('id').AsInteger;
  SelectIDPaciente := DMAgenda.QRYAgenda.FieldByName('fk_pessoa').AsInteger;

  ModalResult := mrOk;
end;

end.
