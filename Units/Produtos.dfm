inherited FrmProdutos: TFrmProdutos
  Caption = 'FrmProdutos'
  ClientWidth = 758
  ExplicitWidth = 764
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTitulo: TPanel
    Width = 758
  end
  inherited PnlFormulario: TPanel
    Width = 758
    Height = 54
    ExplicitWidth = 758
    ExplicitHeight = 54
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 87
      Height = 13
      Caption = 'Nome do Produto:'
    end
    object Label2: TLabel
      Left = 376
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object DBEdit1: TDBEdit
      Left = 109
      Top = 13
      Width = 261
      Height = 21
      DataField = 'nome_produto'
      DataSource = DataSource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 425
      Top = 13
      Width = 233
      Height = 21
      DataField = 'unidade'
      DataSource = DataSource
      TabOrder = 1
    end
  end
  inherited DBGrid: TDBGrid
    Top = 161
    Width = 758
    Height = 215
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_produto'
        Title.Caption = 'Nome do Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unidade'
        Title.Caption = 'Unidade'
        Visible = True
      end>
  end
  inherited PnlControles: TPanel
    Width = 758
  end
  inherited PnlPesquisa: TPanel
    Width = 758
  end
  inherited DataSource: TDataSource
    DataSet = DM.TableProdutos
    Left = 40
    Top = 304
  end
end
