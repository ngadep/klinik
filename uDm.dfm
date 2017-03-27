object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 352
  Width = 455
  object Con: TMyConnection
    Database = 'klinik'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 8
    EncryptedPassword = '8CFF9AFF8DFF89FF9AFF8DFF'
  end
  object QTemp: TMyQuery
    Connection = Con
    Left = 64
    Top = 56
  end
  object QExe: TMyQuery
    Connection = Con
    Left = 112
    Top = 56
  end
  object QOpen: TMyQuery
    Connection = Con
    Left = 16
    Top = 56
  end
end
