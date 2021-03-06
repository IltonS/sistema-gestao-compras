unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.ActnMan, Vcl.StdStyleActnCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.AppEvnts,
  ShellAPI, Produtos, Fornecedores, Cargos, Funcionarios, Cotacoes;

type
  TFrmMain = class(TForm)
    ActionManager: TActionManager;
    ProdutosCmd: TAction;
    FornecedoresCmd: TAction;
    CargosCmd: TAction;
    FuncionariosCmd: TAction;
    SairCmd: TAction;
    MainMenu: TMainMenu;
    Sistema1: TMenuItem;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Cargos1: TMenuItem;
    Funcionrios1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    StatusBar: TStatusBar;
    Timer: TTimer;
    ApplicationEvents: TApplicationEvents;
    CalculadoraCmd: TAction;
    NavegadorCmd: TAction;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    Navegador1: TMenuItem;
    CotacoesCmd: TAction;
    ComprasCmd: TAction;
    Compras1: TMenuItem;
    Cotaes1: TMenuItem;
    N2: TMenuItem;
    procedure Sair(Sender: TObject);
    procedure Produtos(Sender: TObject);
    procedure Fornecedores(Sender: TObject);
    procedure Cargos(Sender: TObject);
    procedure Funcionarios(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ApplicationEventsHint(Sender: TObject);
    procedure Calculadora(Sender: TObject);
    procedure Navegador(Sender: TObject);
    procedure Compras(Sender: TObject);
    procedure Cotacoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.ApplicationEventsHint(Sender: TObject);
begin
  //Exibe a ajuda da a??o
  StatusBar.Panels[2].Text := Application.Hint;
end;

procedure TFrmMain.Calculadora(Sender: TObject);
begin
  ShellExecute(0, nil,'calc', PChar(''), '', SW_NORMAL);
end;

procedure TFrmMain.Cargos(Sender: TObject);
begin
  FrmCargos.ShowModal;
end;

procedure TFrmMain.Compras(Sender: TObject);
begin
  //To-do
end;

procedure TFrmMain.Cotacoes(Sender: TObject);
begin
  FrmCotacoes.ShowModal;
end;

procedure TFrmMain.FormActivate(Sender: TObject);
begin
  //Atualiza a data do sistema
  StatusBar.Panels[0].Text := FormatDateTime('hh:nn:ss', Now);
  StatusBar.Panels[1].Text := FormatDateTime('dddd", "dd" de "mmmm" de "yyyy', Now);
end;

procedure TFrmMain.Fornecedores(Sender: TObject);
begin
  FrmFornecedores.ShowModal;
end;

procedure TFrmMain.Funcionarios(Sender: TObject);
begin
  FrmFuncionarios.ShowModal;
end;

procedure TFrmMain.Navegador(Sender: TObject);
begin
  ShellExecute(Handle, 'Open', PChar('https://google.com'), '', '', SW_NORMAL);
end;

procedure TFrmMain.Produtos(Sender: TObject);
begin
  //To-do
  FrmProdutos.ShowModal;
end;

procedure TFrmMain.Sair(Sender: TObject);
begin
  Close;
end;

procedure TFrmMain.TimerTimer(Sender: TObject);
begin
  //Atualiza a data do sistema
  StatusBar.Panels[0].Text := FormatDateTime('hh:nn:ss', Now);
  StatusBar.Panels[1].Text := FormatDateTime('dddd", "dd" de "mmmm" de "yyyy', Now);
end;

end.
