program sgc;

uses
  Vcl.Forms,
  Main in 'Units\Main.pas' {FrmMain},
  DataModule in 'Units\DataModule.pas' {DM: TDataModule},
  ModeloCadastro in 'Units\ModeloCadastro.pas' {FrmModeloCadastro},
  Produtos in 'Units\Produtos.pas' {FrmProdutos},
  Fornecedores in 'Units\Fornecedores.pas' {FrmFornecedores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema para Gestão de Compras';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmModeloCadastro, FrmModeloCadastro);
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmFornecedores, FrmFornecedores);
  Application.Run;
end.
