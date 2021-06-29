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
  PixelsPerInch = 96
  TextHeight = 13
  object ActionManager: TActionManager
    Left = 32
    Top = 136
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
  end
  object MainMenu: TMainMenu
    Left = 32
    Top = 192
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
  end
end
