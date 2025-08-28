program Project2;

uses
  Vcl.Forms,
  psicolink in 'psicolink.pas' {tela_login},
  psicolink2 in 'psicolink2.pas' {selecao_profissional_paciente},
  psicolink3 in 'psicolink3.pas' {cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Ttela_login, tela_login);
  Application.CreateForm(Tselecao_profissional_paciente, selecao_profissional_paciente);
  Application.CreateForm(Tselecao_profissional_paciente, selecao_profissional_paciente);
  Application.CreateForm(Tcadastro, cadastro);
  Application.Run;
end.
