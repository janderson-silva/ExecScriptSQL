unit untPrincipal;

interface

uses
  FireDAC.Comp.Script,
  FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Async,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Util,
  FireDAC.UI.Intf,
  System.Classes,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Winapi.Messages,
  Winapi.Windows;

type
  TfrmPrincipal = class(TForm)
    pnlLateral: TPanel;
    pnlConfigurarConexao: TPanel;
    pnlTestarConexao: TPanel;
    pnlExecutarScript: TPanel;
    pnlExecutarQuery: TPanel;
    procedure pnlConfigurarConexaoClick(Sender: TObject);
    procedure pnlTestarConexaoClick(Sender: TObject);
    procedure pnlExecutarScriptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  untConfigurarConexao,
  untDmConexao,
  untExecutarScript;

{$R *.dfm}

procedure TfrmPrincipal.pnlConfigurarConexaoClick(Sender: TObject);
var
  FormConfigurarConexao: TfrmConfigurarConexao;
begin
  FormConfigurarConexao := TfrmConfigurarConexao.Create(nil);
  try
    FormConfigurarConexao.ShowModal;
  finally
    FreeAndNil(FormConfigurarConexao);
  end;
end;

procedure TfrmPrincipal.pnlExecutarScriptClick(Sender: TObject);
var
  FormExecutarScript: TfrmExecutarScript;
begin
  FormExecutarScript := TfrmExecutarScript.Create(nil);
  try
    FormExecutarScript.ShowModal;
  finally
    FreeAndNil(FormExecutarScript);
  end;
end;

procedure TfrmPrincipal.pnlTestarConexaoClick(Sender: TObject);
begin
  if frmDmConexao.FDConnection.Connected then
  begin
    MessageBox(0, 'Sucesso ao conectar!', 'Sucesso', MB_OK or MB_ICONINFORMATION);
  end
  else
  begin
    MessageBox(0, 'Falha ao conectar!', 'Erro', MB_OK or MB_ICONERROR);
  end;
end;

end.
