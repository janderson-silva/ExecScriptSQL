program ExecScriptSQL;

uses
  Vcl.Forms,
  untPrincipal in 'src\untPrincipal.pas' {frmPrincipal},
  untDmConexao in 'src\untDmConexao.pas' {frmDmConexao: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  untConfigurarConexao in 'src\untConfigurarConexao.pas' {frmConfigurarConexao},
  untExecutarScript in 'src\untExecutarScript.pas' {frmExecutarScript};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Onyx Blue');
  Application.CreateForm(TfrmDmConexao, frmDmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConfigurarConexao, frmConfigurarConexao);
  Application.CreateForm(TfrmExecutarScript, frmExecutarScript);
  Application.Run;
end.
