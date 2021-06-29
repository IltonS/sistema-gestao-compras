unit Funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ModeloCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DataModule, Vcl.DBCtrls,
  Vcl.Mask;

type
  TFrmFuncionarios = class(TFrmModeloCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DSCargos: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncionarios: TFrmFuncionarios;

implementation

{$R *.dfm}

procedure TFrmFuncionarios.BtnPesquisarClick(Sender: TObject);
begin
  FiltroPesquisar := 'nome_funcionario LIKE ' + #39 + '%' + EdtPesquisa.Text + '%' + #39;
  inherited;
end;

procedure TFrmFuncionarios.FormActivate(Sender: TObject);
begin
  NomeTabela := 'tb_funcionarios';
  NomeJanela := 'Cadastro de Funcionários';
  Titulo := '   Funcionários';
  CampoPesquisar := 'Pesquisar por Nome do Funcionário:';
  inherited;
end;

end.
