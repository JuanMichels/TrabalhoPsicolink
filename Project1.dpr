program Project1;

uses
  Vcl.Forms,
  UnFormPsicolink in 'UnFormPsicolink.pas' {formlogin},
  psicolink2 in 'psicolink2.pas' {selecao_profissional_paciente},
  UnDMPrincipal in 'UnDMPrincipal.pas' {DMPrincipalP: TDataModule},
  psicolink3 in '..\..\Downloads\psicolink\psicolink3.pas' {cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tformlogin, formlogin);
  Application.CreateForm(Tselecao_profissional_paciente, selecao_profissional_paciente);
  Application.CreateForm(Tselecao_profissional_paciente, selecao_profissional_paciente);
  Application.CreateForm(TDMPrincipalP, DMPrincipalP);
  Application.CreateForm(Tcadastro, cadastro);
  Application.Run;
end.
