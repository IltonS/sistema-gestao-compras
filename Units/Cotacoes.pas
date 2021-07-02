unit Cotacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ModeloCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, DataModule, Vcl.DBCtrls,
  Vcl.Mask;

type
  TFrmCotacoes = class(TFrmModeloCadastro)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DSProdutos: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DSFuncionarios: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DSFornecedores: TDataSource;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    DSPequisaProdutos: TDataSource;
    CmbPesquisar: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnPosteriorClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCotacoes: TFrmCotacoes;

implementation

{$R *.dfm}

procedure TFrmCotacoes.BtnAnteriorClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.BtnDeletarClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.BtnEditarClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.BtnGravarClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.BtnNovoClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.BtnPesquisarClick(Sender: TObject);
begin
  FiltroPesquisar := 'id_produto = ' + VarToStr(CmbPesquisar.KeyValue);
  DataSource.DataSet.Filtered := False;
  DataSource.DataSet.Filter := FiltroPesquisar;
  DataSource.DataSet.Filtered := True
  //inherited;
end;

procedure TFrmCotacoes.BtnPosteriorClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.BtnPrimeiroClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.BtnUltimoClick(Sender: TObject);
begin
  inherited;
  CmbPesquisar.Enabled := True;
end;

procedure TFrmCotacoes.FormActivate(Sender: TObject);
begin
  NomeTabela := 'tb_cotacoes';
  NomeJanela := 'Cadastro de Cotações';
  Titulo := '   Cotações';
  CampoPesquisar := 'Pesquisar por Nome do Produto:';
  inherited;

  CmbPesquisar.Enabled := True;
end;

end.
