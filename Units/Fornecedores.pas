unit Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ModeloCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DataModule, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrmFornecedores = class(TFrmModeloCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedores: TFrmFornecedores;

implementation

{$R *.dfm}

procedure TFrmFornecedores.BtnPesquisarClick(Sender: TObject);
begin
  FiltroPesquisar := 'nome_fornecedor LIKE ' + #39 + '%' + EdtPesquisa.Text + '%' + #39;
  inherited;
end;

procedure TFrmFornecedores.FormActivate(Sender: TObject);
begin
  NomeTabela := 'tb_fornecedores';
  NomeJanela := 'Cadastro de Fornecedores';
  Titulo := '   Fornecedores';
  CampoPesquisar := 'Pesquisar por Nome do Fornecedor:';
  inherited;
end;

end.
