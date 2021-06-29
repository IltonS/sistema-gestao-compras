unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.ActnMan, Vcl.StdStyleActnCtrls;

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
    procedure Sair(Sender: TObject);
    procedure Produtos(Sender: TObject);
    procedure Fornecedores(Sender: TObject);
    procedure Cargos(Sender: TObject);
    procedure Funcionarios(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.Cargos(Sender: TObject);
begin
  //To-do
end;

procedure TFrmMain.Fornecedores(Sender: TObject);
begin
  //To-do
end;

procedure TFrmMain.Funcionarios(Sender: TObject);
begin
  //To-do
end;

procedure TFrmMain.Produtos(Sender: TObject);
begin
  //To-do
end;

procedure TFrmMain.Sair(Sender: TObject);
begin
  Close;
end;

end.
