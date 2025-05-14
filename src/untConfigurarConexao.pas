unit untConfigurarConexao;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;

type
  TfrmConfigurarConexao = class(TForm)
    pnlConexao: TPanel;
    lblDriverID: TLabel;
    lblDatabase: TLabel;
    lblUser_name: TLabel;
    lblPassword: TLabel;
    lblPort: TLabel;
    lblServer: TLabel;
    lblVendorLib: TLabel;
    imgLocDatabase: TImage;
    imgLocVendorLib: TImage;
    edtDatabase: TEdit;
    cbxDriverID: TComboBox;
    edtUser_name: TEdit;
    edtPassword: TEdit;
    edtPort: TEdit;
    edtServer: TEdit;
    edtVendorLib: TEdit;
    pnlConfirmar: TPanel;
    OpenDialog: TOpenDialog;
    procedure cbxDriverIDSelect(Sender: TObject);
    procedure imgLocDatabaseClick(Sender: TObject);
    procedure imgLocVendorLibClick(Sender: TObject);
    procedure pnlConfirmarClick(Sender: TObject);
  private
    procedure ConfigurarConexao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigurarConexao: TfrmConfigurarConexao;

implementation

uses
  untDmConexao;

{$R *.dfm}

procedure TfrmConfigurarConexao.cbxDriverIDSelect(Sender: TObject);
begin
  ConfigurarConexao;
end;

procedure TfrmConfigurarConexao.ConfigurarConexao;
begin
  if cbxDriverID.Text = 'FB' then
  begin
    edtDatabase.Margins.Right    := 35;
    edtUser_name.Text            := 'sysdba';
    edtPassword.Text             := 'masterkey';
    edtPort.Text                 := '3050';
    edtVendorLib.Text            := ExtractFileDir(Application.ExeName) + '\libFB\fbclient.dll';
    imgLocDatabase.Visible       := True;
  end
  else if cbxDriverID.Text = 'PG' then
  begin
    edtDatabase.Margins.Right    := 10;
    edtUser_name.Text            := 'postgres';
    edtPassword.Text             := '';
    edtPort.Text                 := '5432';
    edtVendorLib.Text            := ExtractFileDir(Application.ExeName) + '\libPG\libpq.dll';
    imgLocDatabase.Visible       := False;
  end;

  edtDatabase.Text := '';
  edtServer.Text := 'localhost';
end;

procedure TfrmConfigurarConexao.imgLocDatabaseClick(Sender: TObject);
begin
  if OpenDialog.Execute and (Trim(OpenDialog.FileName) <> '') then
    edtDatabase.Text := OpenDialog.FileName;

  OpenDialog.Files.Clear;
end;

procedure TfrmConfigurarConexao.imgLocVendorLibClick(Sender: TObject);
begin
  if OpenDialog.Execute and (Trim(OpenDialog.FileName) <> '') then
    edtVendorLib.Text := OpenDialog.FileName;

  OpenDialog.Files.Clear;
end;

procedure TfrmConfigurarConexao.pnlConfirmarClick(Sender: TObject);
var
  ConnectionSuccess: Boolean;
begin
  ConnectionSuccess := frmDmConexao.Conectar(cbxDriverID.Text,
                                             edtDatabase.Text,
                                             edtUser_name.Text,
                                             edtPassword.Text,
                                             edtPort.Text,
                                             edtServer.Text,
                                             edtVendorLib.Text);

  if ConnectionSuccess then
  begin
    MessageBox(0, 'Conectado com sucesso!', 'Sucesso', MB_OK or MB_ICONINFORMATION);
    Close;
  end
  else
  begin
    MessageBox(0, 'Falha ao conectar! Verifique os parâmetros e tente novamente.', 'Erro', MB_OK or MB_ICONERROR);
  end;
end;

end.
