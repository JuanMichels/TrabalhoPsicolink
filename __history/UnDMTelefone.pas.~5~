unit UnDMTelefone;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UnDMPrincipal;

type
  TDMTelefone = class(TDataModule)
    QRYPessoa: TFDQuery;
    QRYContato: TFDQuery;
    DSPessoa: TDataSource;
    DSContato: TDataSource;
    QRYPessoaid: TLargeintField;
    QRYPessoanome: TWideStringField;
    QRYPessoacpf: TWideStringField;
    QRYPessoadatanascimento: TDateField;
    QRYPessoaendereco: TWideStringField;
    QRYPessoaemail: TWideStringField;
    QRYPessoasenha: TWideStringField;
    QRYPessoacep: TWideStringField;
    QRYPessoabairro: TWideStringField;
    QRYPessoanumerocasa: TBCDField;
    QRYPessoaconfirmarsenha: TWideStringField;
    QRYPessoaempresaid: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTelefone: TDMTelefone;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
