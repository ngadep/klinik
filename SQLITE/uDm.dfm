object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 352
  Width = 455
  object Con: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object QOpen: TFDQuery
    Connection = Con
    Left = 24
    Top = 104
  end
  object QTemp: TFDQuery
    Connection = Con
    Left = 72
    Top = 112
  end
  object QExe: TFDQuery
    Connection = Con
    Left = 128
    Top = 104
  end
end
