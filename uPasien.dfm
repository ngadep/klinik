object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 449
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TcxGrid
    Left = 0
    Top = 0
    Width = 698
    Height = 449
    Align = alClient
    TabOrder = 0
    object GridDBLayoutView1: TcxGridDBLayoutView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DsPasien
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object GridDBLayoutView1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
    end
    object GLevel: TcxGridLevel
      GridView = GridDBLayoutView1
    end
  end
  object QPasien: TMyQuery
    Connection = Dm.Con
    Left = 40
    Top = 16
  end
  object DsPasien: TDataSource
    DataSet = QPasien
    Left = 104
    Top = 16
  end
end
