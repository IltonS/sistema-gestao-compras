object DM: TDM
  OldCreateOrder = False
  Height = 357
  Width = 527
  object SQLiteDriver: TFDPhysSQLiteDriverLink
    DriverID = 'SQLite'
    VendorLib = '.\Lib\sqlite3.dll'
    Left = 24
    Top = 16
  end
  object SQLiteConnection: TFDConnection
    Params.Strings = (
      'Database=.\Database\db_sgc.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 112
    Top = 16
  end
  object TableProdutos: TFDTable
    Connection = SQLiteConnection
    UpdateOptions.UpdateTableName = 'tb_produtos'
    TableName = 'tb_produtos'
    Left = 40
    Top = 104
  end
end
