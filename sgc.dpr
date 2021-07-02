program sgc;

uses
  Vcl.Forms,
  Main in 'Units\Main.pas' {FrmMain},
  DataModule in 'Units\DataModule.pas' {DM: TDataModule},
  ModeloCadastro in 'Units\ModeloCadastro.pas' {FrmModeloCadastro},
  Produtos in 'Units\Produtos.pas' {FrmProdutos},
  Fornecedores in 'Units\Fornecedores.pas' {FrmFornecedores},
  Cargos in 'Units\Cargos.pas' {FrmCargos},
  Funcionarios in 'Funcionarios.pas' {FrmFuncionarios},
  Cotacoes in 'Units\Cotacoes.pas' {FrmCotacoes};

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
  Application.CreateForm(TFrmCargos, FrmCargos);
  Application.CreateForm(TFrmFuncionarios, FrmFuncionarios);
  Application.CreateForm(TFrmCotacoes, FrmCotacoes);
  Application.Run;
end.
