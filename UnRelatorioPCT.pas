unit UnRelatorioPCT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, Data.DB,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TRelatorioPCTES = class(TForm)
    DSRelatorio: TDataSource;
    RLReportPCT: TRLReport;
    Cabecalho: TRLBand;
    Image1: TImage;
    Cabecalholabel: TLabel;
    Rodape: TRLBand;
    TempoRodape: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    Corpo: TRLBand;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    Label4: TLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelatorioPCTES: TRelatorioPCTES;

implementation

{$R *.dfm}

end.
