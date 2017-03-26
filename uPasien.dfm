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
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 692
    Height = 443
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitLeft = -2
    ExplicitTop = 8
    object LayoutPasien: TcxGridDBLayoutView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DsPasien
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.MinValueWidth = 250
      object LayoutPasienid: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'id'
        Visible = False
        LayoutItem = LayoutPasienLayoutItem1
      end
      object LayoutPasienkode: TcxGridDBLayoutViewItem
        Caption = 'Kode'
        DataBinding.FieldName = 'kode'
        LayoutItem = LayoutPasienLayoutItem2
      end
      object LayoutPasiennama: TcxGridDBLayoutViewItem
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        LayoutItem = LayoutPasienLayoutItem3
      end
      object LayoutPasienjenis_kelamin: TcxGridDBLayoutViewItem
        Caption = 'Kelamin'
        DataBinding.FieldName = 'jenis_kelamin'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Pria'
          'Wanita')
        Properties.ReadOnly = False
        LayoutItem = LayoutPasienLayoutItem4
      end
      object LayoutPasientempat_lahir: TcxGridDBLayoutViewItem
        Caption = 'Tempat'
        DataBinding.FieldName = 'tempat_lahir'
        LayoutItem = LayoutPasienLayoutItem5
      end
      object LayoutPasientanggal_lahir: TcxGridDBLayoutViewItem
        Caption = 'Tgl Lahir'
        DataBinding.FieldName = 'tanggal_lahir'
        LayoutItem = LayoutPasienLayoutItem6
      end
      object LayoutPasienalamat: TcxGridDBLayoutViewItem
        Caption = 'Alamat Lengkap'
        DataBinding.FieldName = 'alamat'
        LayoutItem = LayoutPasienLayoutItem7
      end
      object LayoutPasienpekerjaan: TcxGridDBLayoutViewItem
        Caption = 'Pekerjaan'
        DataBinding.FieldName = 'pekerjaan'
        LayoutItem = LayoutPasienLayoutItem8
      end
      object LayoutPasienpendidikan: TcxGridDBLayoutViewItem
        Caption = 'Study'
        DataBinding.FieldName = 'pendidikan'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'SD'
          'SLTP'
          'SLTA'
          'S1'
          'S2'
          'S3'
          'LAIN')
        LayoutItem = LayoutPasienLayoutItem9
      end
      object LayoutPasiengolongan_darah: TcxGridDBLayoutViewItem
        Caption = 'Darah'
        DataBinding.FieldName = 'golongan_darah'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'A'
          'AB'
          'B'
          'O')
        LayoutItem = LayoutPasienLayoutItem10
      end
      object LayoutPasienstatus_nikah: TcxGridDBLayoutViewItem
        Caption = 'Nikah'
        DataBinding.FieldName = 'status_nikah'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'BELUM NIKAH'
          'NIKAH')
        LayoutItem = LayoutPasienLayoutItem11
      end
      object LayoutPasiennama_ortu: TcxGridDBLayoutViewItem
        Caption = 'Ortu'
        DataBinding.FieldName = 'nama_ortu'
        LayoutItem = LayoutPasienLayoutItem12
      end
      object LayoutPasienpekerjaan_ortu: TcxGridDBLayoutViewItem
        Caption = 'Pekerjaan Ortu'
        DataBinding.FieldName = 'pekerjaan_ortu'
        LayoutItem = LayoutPasienLayoutItem13
      end
      object LayoutPasiennama_pasangan: TcxGridDBLayoutViewItem
        Caption = 'Nama Pasangan'
        DataBinding.FieldName = 'nama_pasangan'
        LayoutItem = LayoutPasienLayoutItem14
      end
      object LayoutPasienGroup_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Template Card'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object LayoutPasienLayoutItem1: TcxGridLayoutItem
        Index = -1
      end
      object LayoutPasienLayoutItem2: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 0
      end
      object LayoutPasienLayoutItem3: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 1
      end
      object LayoutPasienLayoutItem4: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 2
      end
      object LayoutPasienLayoutItem5: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 3
      end
      object LayoutPasienLayoutItem6: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 4
      end
      object LayoutPasienLayoutItem7: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 5
      end
      object LayoutPasienLayoutItem8: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 6
      end
      object LayoutPasienLayoutItem9: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 7
      end
      object LayoutPasienLayoutItem10: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 8
      end
      object LayoutPasienLayoutItem11: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        SizeOptions.Width = 118
        Index = 9
      end
      object LayoutPasienLayoutItem12: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 10
      end
      object LayoutPasienLayoutItem13: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 11
      end
      object LayoutPasienLayoutItem14: TcxGridLayoutItem
        Parent = LayoutPasienGroup_Root
        Index = 12
      end
    end
    object Tablepasien: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DsPasien
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object Tablepasienid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object Tablepasienkode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kode'
        Width = 45
      end
      object Tablepasiennama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Width = 127
      end
      object Tablepasienjenis_kelamin: TcxGridDBColumn
        Caption = 'Kelamin'
        DataBinding.FieldName = 'jenis_kelamin'
        Width = 50
      end
      object Tablepasientempat_lahir: TcxGridDBColumn
        Caption = 'Tempat'
        DataBinding.FieldName = 'tempat_lahir'
        Width = 60
      end
      object Tablepasientanggal_lahir: TcxGridDBColumn
        Caption = 'Tgl Lahir'
        DataBinding.FieldName = 'tanggal_lahir'
        Width = 59
      end
      object Tablepasienalamat: TcxGridDBColumn
        Caption = 'Alamat Lengkap'
        DataBinding.FieldName = 'alamat'
        Visible = False
        Width = 91
      end
      object Tablepasienpekerjaan: TcxGridDBColumn
        Caption = 'Pekerjaan'
        DataBinding.FieldName = 'pekerjaan'
        Width = 42
      end
      object Tablepasienpendidikan: TcxGridDBColumn
        Caption = 'Studi'
        DataBinding.FieldName = 'pendidikan'
        Visible = False
        Width = 38
      end
      object Tablepasiengolongan_darah: TcxGridDBColumn
        Caption = 'Darah'
        DataBinding.FieldName = 'golongan_darah'
        Width = 36
      end
      object Tablepasienstatus_nikah: TcxGridDBColumn
        Caption = 'NIKAH'
        DataBinding.FieldName = 'status_nikah'
        Width = 45
      end
      object Tablepasiennama_ortu: TcxGridDBColumn
        Caption = 'ORTU'
        DataBinding.FieldName = 'nama_ortu'
        Visible = False
        Width = 47
      end
      object Tablepasienpekerjaan_ortu: TcxGridDBColumn
        Caption = 'Pekerjaan ORTU'
        DataBinding.FieldName = 'pekerjaan_ortu'
        Visible = False
        Width = 38
      end
      object Tablepasiennama_pasangan: TcxGridDBColumn
        Caption = 'Pasangan'
        DataBinding.FieldName = 'nama_pasangan'
        Visible = False
        Width = 33
      end
    end
    object GLevelViewTabel: TcxGridLevel
      Caption = 'Tabel'
      GridView = Tablepasien
    end
    object GLevelViewLayout: TcxGridLevel
      Caption = 'Detail'
      GridView = LayoutPasien
    end
  end
  object QPasien: TMyQuery
    Connection = Dm.Con
    SQL.Strings = (
      'SELECT * FROM TbPasien')
    Active = True
    Left = 40
    Top = 16
  end
  object DsPasien: TDataSource
    DataSet = QPasien
    Left = 104
    Top = 16
  end
end
