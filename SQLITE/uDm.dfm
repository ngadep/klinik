object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 352
  Width = 455
  object Con: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Connected = True
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
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 24
    Top = 176
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 128
    Top = 176
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 216
    Top = 176
  end
end
