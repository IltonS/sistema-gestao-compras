inherited FrmFuncionarios: TFrmFuncionarios
  Caption = 'FrmFuncionarios'
  ClientWidth = 754
  ExplicitWidth = 760
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTitulo: TPanel
    Width = 754
  end
  inherited PnlFormulario: TPanel
    Width = 754
    Height = 134
    ExplicitWidth = 754
    ExplicitHeight = 134
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 104
      Height = 13
      Caption = 'Nome do Funcion'#225'rio:'
    end
    object Label2: TLabel
      Left = 376
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 32
      Height = 13
      Caption = 'E-Mail:'
    end
    object Label4: TLabel
      Left = 376
      Top = 72
      Width = 33
      Height = 13
      Caption = 'Cargo:'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 35
      Width = 354
      Height = 21
      DataField = 'nome_funcionario'
      DataSource = DataSource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 376
      Top = 35
      Width = 201
      Height = 21
      DataField = 'telefone'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 91
      Width = 354
      Height = 21
      DataField = 'email'
      DataSource = DataSource
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 376
      Top = 91
      Width = 201
      Height = 21
      DataField = 'id_cargo'
      DataSource = DataSource
      KeyField = 'id_cargo'
      ListField = 'nome_cargo'
      ListSource = DSCargos
      TabOrder = 3
    end
  end
  inherited DBGrid: TDBGrid
    Top = 241
    Width = 754
    Height = 135
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_funcionario'
        Title.Caption = 'Nome do Funcion'#225'rio'
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
        FieldName = 'id_cargo'
        Title.Caption = 'Cargo'
        Visible = True
      end>
  end
  inherited PnlControles: TPanel
    Width = 754
  end
  inherited PnlPesquisa: TPanel
    Width = 754
  end
  inherited DataSource: TDataSource
    DataSet = DM.TableFuncionarios
    Left = 48
    Top = 288
  end
  object DSCargos: TDataSource
    DataSet = DM.TableCargos
    Left = 120
    Top = 288
  end
end
