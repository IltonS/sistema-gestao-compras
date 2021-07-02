inherited FrmCotacoes: TFrmCotacoes
  Caption = 'FrmCotacoes'
  ClientHeight = 546
  ClientWidth = 757
  ExplicitTop = -55
  ExplicitWidth = 763
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTitulo: TPanel
    Width = 757
  end
  inherited PnlFormulario: TPanel
    Width = 757
    Height = 222
    ExplicitHeight = 222
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 295
      Top = 16
      Width = 60
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label3: TLabel
      Left = 421
      Top = 16
      Width = 85
      Height = 13
      Caption = 'Data da Cota'#231#227'o:'
    end
    object Label4: TLabel
      Left = 512
      Top = 16
      Width = 104
      Height = 13
      Caption = 'Nome do Funcion'#225'rio:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 35
      Width = 273
      Height = 21
      DataField = 'id_produto'
      DataSource = DataSource
      KeyField = 'id_produto'
      ListField = 'nome_produto'
      ListSource = DSProdutos
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 295
      Top = 35
      Width = 120
      Height = 21
      DataField = 'quantidade'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 421
      Top = 35
      Width = 85
      Height = 21
      DataField = 'data_cotacao'
      DataSource = DataSource
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 512
      Top = 35
      Width = 227
      Height = 21
      DataField = 'id_funcionario'
      DataSource = DataSource
      KeyField = 'id_funcionario'
      ListField = 'nome_funcionario'
      ListSource = DSFuncionarios
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 72
      Width = 354
      Height = 129
      Caption = 'Cota'#231#227'o 1:'
      TabOrder = 4
      object Label5: TLabel
        Left = 16
        Top = 24
        Width = 59
        Height = 13
        Caption = 'Fornecedor:'
      end
      object Label6: TLabel
        Left = 16
        Top = 70
        Width = 31
        Height = 13
        Caption = 'Pre'#231'o:'
      end
      object Label7: TLabel
        Left = 162
        Top = 70
        Width = 62
        Height = 13
        Caption = 'Prazo: (Dias)'
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 16
        Top = 43
        Width = 323
        Height = 21
        DataField = 'cot1_id_fornecedor'
        DataSource = DataSource
        KeyField = 'id_fornecedor'
        ListField = 'nome_fornecedor'
        ListSource = DSFornecedores
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 89
        Width = 140
        Height = 21
        DataField = 'cot1_preco'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 162
        Top = 89
        Width = 177
        Height = 21
        DataField = 'cot1_prazo'
        DataSource = DataSource
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 376
      Top = 72
      Width = 363
      Height = 129
      Caption = 'Cota'#231#227'o 2:'
      TabOrder = 5
      object Label8: TLabel
        Left = 16
        Top = 24
        Width = 59
        Height = 13
        Caption = 'Fornecedor:'
      end
      object Label9: TLabel
        Left = 16
        Top = 70
        Width = 31
        Height = 13
        Caption = 'Pre'#231'o:'
      end
      object Label10: TLabel
        Left = 162
        Top = 70
        Width = 62
        Height = 13
        Caption = 'Prazo: (Dias)'
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 16
        Top = 43
        Width = 323
        Height = 21
        DataField = 'cot2_id_fornecedor'
        DataSource = DataSource
        KeyField = 'id_fornecedor'
        ListField = 'nome_fornecedor'
        ListSource = DSFornecedores
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 89
        Width = 140
        Height = 21
        DataField = 'cot2_preco'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 162
        Top = 89
        Width = 177
        Height = 21
        DataField = 'cot2_prazo'
        DataSource = DataSource
        TabOrder = 2
      end
    end
  end
  inherited DBGrid: TDBGrid
    Top = 329
    Width = 757
    Height = 160
    Columns = <
      item
        Expanded = False
        FieldName = 'id_produto'
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_cotacao'
        Title.Caption = 'Data da Cota'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_funcionario'
        Title.Caption = 'Nome do Funcion'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cot1_id_fornecedor'
        Title.Caption = 'Cota'#231#227'o 1 - Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cot1_preco'
        Title.Caption = 'Cota'#231#227'o 1 - Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cot1_prazo'
        Title.Caption = 'Cota'#231#227'o 1 - Prazo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cot2_id_fornecedor'
        Title.Caption = 'Cota'#231#227'o 2 - Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cot2_preco'
        Title.Caption = 'Cota'#231#227'o 2 - Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cot2_prazo'
        Title.Caption = 'Cota'#231#227'o 2 - Prazo'
        Visible = True
      end>
  end
  inherited PnlControles: TPanel
    Top = 489
    Width = 757
  end
  inherited PnlPesquisa: TPanel
    Width = 757
    inherited EdtPesquisa: TLabeledEdit
      Visible = False
    end
    inherited BtnPesquisar: TBitBtn
      Top = 27
      ExplicitTop = 27
    end
    object CmbPesquisar: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 273
      Height = 21
      KeyField = 'id_produto'
      ListField = 'nome_produto'
      ListSource = DSPequisaProdutos
      TabOrder = 2
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.TableCotacoes
    Left = 32
    Top = 384
  end
  object DSProdutos: TDataSource
    DataSet = DM.TableProdutos
    Left = 96
    Top = 384
  end
  object DSFuncionarios: TDataSource
    DataSet = DM.TableFuncionarios
    Left = 168
    Top = 384
  end
  object DSFornecedores: TDataSource
    DataSet = DM.TableFornecedores
    Left = 264
    Top = 384
  end
  object DSPequisaProdutos: TDataSource
    DataSet = DM.QueryProdutos
    Left = 360
    Top = 384
  end
end
