program sgc;

uses
  Vcl.Forms,
  Main in 'Units\Main.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema para Gest�o de Compras';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
