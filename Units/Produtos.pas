unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ModeloCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DataModule, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrmProdutos = class(TFrmModeloCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

{$R *.dfm}

procedure TFrmProdutos.BtnPesquisarClick(Sender: TObject);
begin
  FiltroPesquisar := 'nome_produto LIKE ' + #39 + '%' + EdtPesquisa.Text + '%' + #39;
  inherited;
end;

procedure TFrmProdutos.FormActivate(Sender: TObject);
begin
  NomeTabela := 'tb_produtos';
  NomeJanela := 'Cadastro de Produtos';
  Titulo := '   Produtos';
  CampoPesquisar := 'Pesquisar por Nome do Produto:';
  inherited;
end;

end.
