object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Sistema para Gest'#227'o de Compras'
  ClientHeight = 393
  ClientWidth = 1012
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 374
    Width = 1012
    Height = 19
    Panels = <
      item
        Width = 60
      end
      item
        Width = 260
      end
      item
        Width = 260
      end>
    ExplicitLeft = 512
    ExplicitTop = 216
    ExplicitWidth = 0
  end
  object ActionManager: TActionManager
    Left = 32
    Top = 16
    StyleName = 'Standard'
    object ProdutosCmd: TAction
      Category = 'cadastros'
      Caption = '&Produtos'
      Hint = 'Produtos|Manuten'#231#227'o do cadastro de produtos do sistema.'
      ShortCut = 49232
      OnExecute = Produtos
    end
    object FornecedoresCmd: TAction
      Category = 'cadastros'
      Caption = '&Fornecedores'
      Hint = 'Fornecedores|Manuten'#231#227'o do cadastro de fornecedores do sistema.'
      ShortCut = 49222
      OnExecute = Fornecedores
    end
    object CargosCmd: TAction
      Category = 'cadastros'
      Caption = '&Cargos'
      Hint = 'Cargos|Manuten'#231#227'o do cadastro de cargos do sistema.'
      ShortCut = 49219
      OnExecute = Cargos
    end
    object FuncionariosCmd: TAction
      Category = 'cadastros'
      Caption = 'F&uncion'#225'rios'
      Hint = 'Funcion'#225'rios|Manuten'#231#227'o do cadastro de funcion'#225'rios do sistema.'
      ShortCut = 49237
      OnExecute = Funcionarios
    end
    object SairCmd: TAction
      Category = 'sistema'
      Caption = 'Sai&r'
      Hint = 'Sair|Encerra a aplica'#231#227'o.'
      OnExecute = Sair
    end
    object CalculadoraCmd: TAction
      Category = 'utilitarios'
      Caption = '&Calculadora'
      Hint = 'Calculadora|Abre a calculadora do sistema.'
      ShortCut = 8259
      OnExecute = Calculadora
    end
    object NavegadorCmd: TAction
      Category = 'utilitarios'
      Caption = '&Navegador'
      Hint = 'Navegador|Abre o navegador padr'#227'o do Windows.'
      ShortCut = 8270
      OnExecute = Navegador
    end
  end
  object MainMenu: TMainMenu
    Left = 112
    Top = 16
    object Sistema1: TMenuItem
      Caption = '&Sistema'
      object Cadastros1: TMenuItem
        Caption = 'C&adastros'
        object Produtos1: TMenuItem
          Action = ProdutosCmd
        end
        object Fornecedores1: TMenuItem
          Action = FornecedoresCmd
        end
        object Cargos1: TMenuItem
          Action = CargosCmd
        end
        object Funcionrios1: TMenuItem
          Action = FuncionariosCmd
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Action = SairCmd
      end
    end
    object Utilitrios1: TMenuItem
      Caption = '&Utilit'#225'rios'
      object Calculadora1: TMenuItem
        Action = CalculadoraCmd
      end
      object Navegador1: TMenuItem
        Action = NavegadorCmd
      end
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 184
    Top = 16
  end
  object ApplicationEvents: TApplicationEvents
    OnHint = ApplicationEventsHint
    Left = 264
    Top = 16
  end
end
