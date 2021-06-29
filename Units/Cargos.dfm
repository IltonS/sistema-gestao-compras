inherited FrmCargos: TFrmCargos
  Caption = 'FrmCargos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlFormulario: TPanel
    Height = 54
    ExplicitHeight = 54
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Nome do Cargo:'
    end
    object DBEdit1: TDBEdit
      Left = 100
      Top = 13
      Width = 270
      Height = 21
      DataField = 'nome_cargo'
      DataSource = DataSource
      TabOrder = 0
    end
  end
  inherited DBGrid: TDBGrid
    Top = 161
    Height = 215
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_cargo'
        Title.Caption = 'Nome do Cargo'
        Visible = True
      end>
  end
  inherited DataSource: TDataSource
    DataSet = DM.TableCargos
    Left = 48
    Top = 304
  end
end
