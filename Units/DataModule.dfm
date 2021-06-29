object DM: TDM
  OldCreateOrder = False
  Height = 357
  Width = 527
  object SQLiteDriver: TFDPhysSQLiteDriverLink
    DriverID = 'SQLite'
    VendorLib = 
      'C:\Users\Ilton\Documents\Embarcadero\Studio\Projects\sistema-ges' +
      'tao-compras\Lib\sqlite3.dll'
    Left = 24
    Top = 16
  end
  object SQLiteConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Ilton\Documents\Embarcadero\Studio\Projects\si' +
        'stema-gestao-compras\Database\db_sgc.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 112
    Top = 16
  end
  object TableProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id_produto'
    Connection = SQLiteConnection
    UpdateOptions.UpdateTableName = 'tb_produtos'
    TableName = 'tb_produtos'
    Left = 40
    Top = 104
  end
  object TableFornecedores: TFDTable
    Active = True
    IndexFieldNames = 'id_fornecedor'
    Connection = SQLiteConnection
    UpdateOptions.UpdateTableName = 'tb_fornecedores'
    TableName = 'tb_fornecedores'
    Left = 128
    Top = 104
  end
  object TableCargos: TFDTable
    Active = True
    IndexFieldNames = 'id_cargo'
    Connection = SQLiteConnection
    UpdateOptions.UpdateTableName = 'tb_cargos'
    TableName = 'tb_cargos'
    Left = 216
    Top = 104
  end
end
