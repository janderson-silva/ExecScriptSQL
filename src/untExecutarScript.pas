unit untExecutarScript;

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
  Vcl.CheckLst,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows, Vcl.ComCtrls;

type
  TfrmExecutarScript = class(TForm)
    pnlLateral: TPanel;
    pnlClient: TPanel;
    pnlExecutarScript: TPanel;
    FDScript: TFDScript;
    CheckListBox: TCheckListBox;
    Splitter: TSplitter;
    pgcPrincipal: TPageControl;
    tsLog: TTabSheet;
    MemoLog: TMemo;
    tsScript: TTabSheet;
    MemoScript: TMemo;
    OpenDialog1: TOpenDialog;
    pnlSelecionar: TPanel;
    tsDica: TTabSheet;
    MemoDicas: TMemo;
    procedure pnlExecutarScriptClick(Sender: TObject);
    procedure pnlSelecionarClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarArquivosSQL(const Pasta: string);
    procedure CarregarScriptNoMemo(const Arquivo: string);
    procedure ExecutarScriptDoMemo;
    procedure Log(const Msg: string);
  public
    { Public declarations }
  end;

var
  frmExecutarScript: TfrmExecutarScript;

implementation

uses
  untDmConexao;

{$R *.dfm}

{ TfrmExecutarScript }

procedure TfrmExecutarScript.CarregarArquivosSQL(const Pasta: string);
var
  SR: TSearchRec;
  ListaArquivos: TStringList;
begin
  CheckListBox.Items.Clear;
  ListaArquivos := TStringList.Create;
  try
    ListaArquivos.Sorted := True;
    ListaArquivos.Duplicates := dupIgnore;

    if FindFirst(Pasta + '\*.sql', faAnyFile, SR) = 0 then
    begin
      repeat
        ListaArquivos.Add(Pasta + '\' + SR.Name);
      until FindNext(SR) <> 0;
      System.SysUtils.FindClose(SR);
    end;

    CheckListBox.Items.Assign(ListaArquivos);
  finally
    ListaArquivos.Free;
  end;
end;

procedure TfrmExecutarScript.CarregarScriptNoMemo(const Arquivo: string);
var
  ConteudoSQL: TStringList;
begin
  ConteudoSQL := TStringList.Create;
  try
    ConteudoSQL.LoadFromFile(Arquivo, TEncoding.UTF8);
    MemoScript.Lines.Assign(ConteudoSQL);
    Application.ProcessMessages; // Opcional: garante que o MemoScript seja desenhado antes da execução
  finally
    ConteudoSQL.Free;
  end;
end;

procedure TfrmExecutarScript.ExecutarScriptDoMemo;
begin
  if Trim(MemoScript.Text) = '' then
    raise Exception.Create('O script está vazio.');

  FDScript.SQLScripts.Clear;
  FDScript.SQLScripts.Add;
  FDScript.SQLScripts[0].SQL.Text := MemoScript.Text;

  FDScript.ValidateAll;
  FDScript.ExecuteAll;
end;

procedure TfrmExecutarScript.Log(const Msg: string);
begin
  MemoLog.Lines.Add(Msg);
  MemoLog.Perform(WM_VSCROLL, SB_BOTTOM, 0); // Scroll para o final
  Application.ProcessMessages; // Atualiza tela em tempo real
end;

procedure TfrmExecutarScript.pnlExecutarScriptClick(Sender: TObject);
var
  I: Integer;
  Arquivo: string;
begin
  MemoLog.Clear;

  Log('🚀 Iniciando execução de arquivos .sql marcados...');
  for I := 0 to CheckListBox.Items.Count - 1 do
  begin
    if CheckListBox.Checked[I] then
    begin
      Arquivo := CheckListBox.Items[I];

      try
        // Carrega conteúdo do arquivo no MemoScript
        CarregarScriptNoMemo(Arquivo);
        Log('📄 Carregado: ' + ExtractFileName(Arquivo));

        // Executa o conteúdo atual do MemoScript
        ExecutarScriptDoMemo;

        Log('✅ Executado com sucesso: ' + ExtractFileName(Arquivo));
      except
        on E: Exception do
        begin
          Log('❌ Erro ao executar ' + ExtractFileName(Arquivo) + ': ' + E.Message);
          Break; // Se quiser parar no erro. Remova se quiser continuar.
        end;
      end;
    end;
  end;

  Log('🏁 Processamento concluído.');
end;

procedure TfrmExecutarScript.pnlSelecionarClick(Sender: TObject);
var
  i: Integer;
  ManterItens: Boolean;
begin
  OpenDialog1.Title := 'Selecionar arquivos .sql';
  OpenDialog1.Filter := 'Arquivos SQL (*.sql)|*.sql';
  OpenDialog1.Options := [ofAllowMultiSelect, ofFileMustExist];

  if OpenDialog1.Execute then
  begin
    // Pergunta se já houver itens
    if CheckListBox.Items.Count > 0 then
    begin
      case MessageDlg(
        'Já existem arquivos listados. Deseja manter os arquivos atuais?',
        mtConfirmation, [mbYes, mbNo], 0) of
        mrYes: ManterItens := True;
        mrNo: ManterItens := False;
      else
        Exit; // Usuário cancelou o diálogo
      end;
    end
    else
      ManterItens := False;

    CheckListBox.Items.BeginUpdate;
    try
      if not ManterItens then
        CheckListBox.Items.Clear;

      for i := 0 to OpenDialog1.Files.Count - 1 do
      begin
        CheckListBox.Items.Add(OpenDialog1.Files[i]);
        CheckListBox.Checked[CheckListBox.Items.Count - 1] := True;
      end;
    finally
      CheckListBox.Items.EndUpdate;
    end;

    Log(Format('%d arquivo(s) carregado(s) para execução.', [OpenDialog1.Files.Count]));
  end;
end;

end.
