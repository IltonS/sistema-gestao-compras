unit ModeloCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, DataModule, DBCtrls,
  FireDAC.Stan.Error;

type
  TFrmModeloCadastro = class(TForm)
    PnlTitulo: TPanel;
    PnlFormulario: TPanel;
    DBGrid: TDBGrid;
    PnlControles: TPanel;
    PnlPesquisa: TPanel;
    EdtPesquisa: TLabeledEdit;
    BtnNovo: TBitBtn;
    BtnGravar: TBitBtn;
    BtnEditar: TBitBtn;
    BtnDeletar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnPrimeiro: TBitBtn;
    BtnAnterior: TBitBtn;
    BtnPosterior: TBitBtn;
    BtnUltimo: TBitBtn;
    DataSource: TDataSource;
    BtnPesquisar: TBitBtn;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnPosteriorClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    FNomeTabela: String;
    FNomeJanela: String;
    FTitulo: String;
    FCampoPesquisar: String;
    FFiltroPesquisar: String;
    procedure HabilitaControles;
    procedure HabilitaControlesVisuais(Status: Boolean);
  public
    { Public declarations }
    property NomeTabela: String read FNomeTabela write FNomeTabela;
    property NomeJanela: String read FNomeJanela write FNomeJanela;
    property Titulo: String read FTitulo write FTitulo;
    property CampoPesquisar: String read FCampoPesquisar write FCampoPesquisar;
    property FiltroPesquisar: String read FFiltroPesquisar write FFiltroPesquisar;
  end;

var
  FrmModeloCadastro: TFrmModeloCadastro;

implementation

{$R *.dfm}

procedure TFrmModeloCadastro.BtnAnteriorClick(Sender: TObject);
begin
  DataSource.DataSet.Prior;
end;

procedure TFrmModeloCadastro.BtnCancelarClick(Sender: TObject);
begin
  DataSource.DataSet.Cancel;
  DataSource.DataSet.Filtered := False;
  HabilitaControles;
  HabilitaControlesVisuais(False);
end;

procedure TFrmModeloCadastro.BtnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir o Registro', mtconfirmation, [mbYes, mbNo], 0) = mrYes then
    DataSource.DataSet.Delete;

  HabilitaControles;
  HabilitaControlesVisuais(False);
end;

procedure TFrmModeloCadastro.BtnEditarClick(Sender: TObject);
begin
  DataSource.DataSet.Edit;
  HabilitaControles;
  HabilitaControlesVisuais(True);
end;

procedure TFrmModeloCadastro.BtnGravarClick(Sender: TObject);
begin
  DataSource.DataSet.Post;
  DataSource.DataSet.Filtered := False;
  HabilitaControles;
  HabilitaControlesVisuais(False);
end;

procedure TFrmModeloCadastro.BtnNovoClick(Sender: TObject);
var
  I: Integer;
begin
  DataSource.DataSet.Insert;
  HabilitaControles;
  HabilitaControlesVisuais(True);

  //Se o formul�rio filho possuir um Radio Group, marca o primeiro item
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBRadioGroup then
      TDBRadioGroup(Components[I]).ItemIndex := 0;
  end;

end;

procedure TFrmModeloCadastro.BtnPesquisarClick(Sender: TObject);
begin
  if EdtPesquisa.Text = '' then
    DataSource.DataSet.Filtered := False
  else
  begin
    DataSource.DataSet.Filtered := False;
    DataSource.DataSet.Filter := FiltroPesquisar;
    DataSource.DataSet.Filtered := True
  end;
end;

procedure TFrmModeloCadastro.BtnPosteriorClick(Sender: TObject);
begin
  DataSource.DataSet.Next;
end;

procedure TFrmModeloCadastro.BtnPrimeiroClick(Sender: TObject);
begin
  DataSource.DataSet.First;
end;

procedure TFrmModeloCadastro.BtnUltimoClick(Sender: TObject);
begin
  DataSource.DataSet.Last;
end;

procedure TFrmModeloCadastro.FormActivate(Sender: TObject);
var
  I: Integer;
begin

  //Par�metros para personaliza��o do formul�rio
  Self.Caption := NomeJanela;
  Self.PnlTitulo.Caption := Titulo;
  Self.EdtPesquisa.EditLabel.Caption := CampoPesquisar;

  HabilitaControles;
  HabilitaControlesVisuais(False);

  //Configura o filtro do dataset
  DataSource.DataSet.FilterOptions := [foCaseInsensitive];

  //Se o formul�rio filho possuir um Radio Group, marca o primeiro item
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBRadioGroup then
      TDBRadioGroup(Components[I]).ItemIndex := 0;
  end;

end;

procedure TFrmModeloCadastro.HabilitaControles;
begin
  //Habilita os controles de acordo com o estado do dataset
  BtnNovo.Enabled := not(DataSource.DataSet.State in [dsInsert, dsEdit]);
  BtnGravar.Enabled := (DataSource.DataSet.State in [dsInsert, dsEdit]);
  BtnEditar.Enabled := (DataSource.DataSet.State in [dsBrowse]);
  BtnDeletar.Enabled := (DataSource.DataSet.State in [dsBrowse, dsEdit]);
  BtnCancelar.Enabled := (DataSource.DataSet.State in [dsInsert, dsEdit]);
  BtnPrimeiro.Enabled := not(DataSource.DataSet.State in [dsInsert, dsEdit]);
  BtnAnterior.Enabled := not(DataSource.DataSet.State in [dsInsert, dsEdit]);
  BtnPosterior.Enabled := not(DataSource.DataSet.State in [dsInsert, dsEdit]);
  BtnUltimo.Enabled := not(DataSource.DataSet.State in [dsInsert, dsEdit]);
  BtnPesquisar.Enabled := not (DataSource.DataSet.State in [dsInsert, dsEdit]);
end;

procedure TFrmModeloCadastro.HabilitaControlesVisuais(Status: Boolean);
var
  I: Integer;
begin
  //Varre os componentes visuais do formul�rio para habilit�-los
  //ou desabilit�-los de acordo com o par�metro Status
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBEdit then
      TDBEdit(Components[I]).Enabled := Status
    else if Components[I] is TDBLookupComboBox then
      TDBLookupComboBox(Components[I]).Enabled := Status
    else if Components[I] is TDBComboBox then
      TDBComboBox(Components[I]).Enabled := Status
    else if Components[I] is TDBMemo then
      TDBMemo(Components[I]).Enabled := Status
    else if Components[I] is TDBCheckBox then
      TDBCheckBox(Components[I]).Enabled := Status
    else if Components[I] is TDBRadioGroup then
      TDBRadioGroup(Components[I]).Enabled := Status;

  end;
end;

end.
