inherited FrmFornecedores: TFrmFornecedores
  Caption = 'FrmFornecedores'
  ClientWidth = 775
  ExplicitWidth = 781
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTitulo: TPanel
    Width = 775
  end
  inherited PnlFormulario: TPanel
    Width = 775
    Height = 102
    ExplicitWidth = 775
    ExplicitHeight = 102
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 104
      Height = 13
      Caption = 'Nome do Fornecedor:'
    end
    object Label2: TLabel
      Left = 376
      Top = 16
      Width = 28
      Height = 13
      Caption = 'E-Mail'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object Label4: TLabel
      Left = 376
      Top = 64
      Width = 84
      Height = 13
      Caption = 'Nome do Contao:'
    end
    object DBEdit1: TDBEdit
      Left = 126
      Top = 13
      Width = 244
      Height = 21
      DataField = 'nome_fornecedor'
      DataSource = DataSource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 466
      Top = 13
      Width = 273
      Height = 21
      DataField = 'email'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 126
      Top = 56
      Width = 244
      Height = 21
      DataField = 'telefone'
      DataSource = DataSource
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 466
      Top = 56
      Width = 273
      Height = 21
      DataField = 'nome_contato'
      DataSource = DataSource
      TabOrder = 3
    end
  end
  inherited DBGrid: TDBGrid
    Top = 209
    Width = 775
    Height = 167
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_fornecedor'
        Title.Caption = 'Nome do Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'E-Mail'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_contato'
        Title.Caption = 'Nome do Contato'
        Visible = True
      end>
  end
  inherited PnlControles: TPanel
    Width = 775
  end
  inherited PnlPesquisa: TPanel
    Width = 775
  end
  inherited DataSource: TDataSource
    DataSet = DM.TableFornecedores
    Left = 40
    Top = 296
  end
end
