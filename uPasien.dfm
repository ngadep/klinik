object FrmPasien: TFrmPasien
  Left = 0
  Top = 0
  Caption = 'Daftar Pasien'
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
    object Tablepasien: TcxGridDBTableView
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DsPasien
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      EditForm.UseDefaultLayout = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.EditMode = emInplaceEditForm
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
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Action = AcAuto
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        LayoutItem = TablepasienLayoutItem1.Owner
        Width = 45
      end
      object Tablepasiennama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        LayoutItem = TablepasienLayoutItem2.Owner
        Width = 127
      end
      object Tablepasienjenis_kelamin: TcxGridDBColumn
        Caption = 'Kelamin'
        DataBinding.FieldName = 'jenis_kelamin'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Pria'
          'Wanita')
        LayoutItem = TablepasienLayoutItem3.Owner
        Width = 50
      end
      object Tablepasientempat_lahir: TcxGridDBColumn
        Caption = 'Tempat'
        DataBinding.FieldName = 'tempat_lahir'
        LayoutItem = TablepasienLayoutItem4.Owner
        Width = 60
      end
      object Tablepasientanggal_lahir: TcxGridDBColumn
        Caption = 'Tgl Lahir'
        DataBinding.FieldName = 'tanggal_lahir'
        LayoutItem = TablepasienLayoutItem5.Owner
        Width = 59
      end
      object Tablepasienalamat: TcxGridDBColumn
        Caption = 'Alamat Lengkap'
        DataBinding.FieldName = 'alamat'
        LayoutItem = TablepasienLayoutItem6.Owner
        Width = 91
      end
      object Tablepasienpekerjaan: TcxGridDBColumn
        Caption = 'Pekerjaan'
        DataBinding.FieldName = 'pekerjaan'
        LayoutItem = TablepasienLayoutItem7.Owner
        Width = 42
      end
      object Tablepasienpendidikan: TcxGridDBColumn
        Caption = 'Studi'
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
        LayoutItem = TablepasienLayoutItem8.Owner
        Width = 38
      end
      object Tablepasiengolongan_darah: TcxGridDBColumn
        Caption = 'Darah'
        DataBinding.FieldName = 'golongan_darah'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'A'
          'AB'
          'B'
          'O'
          'LAIN')
        LayoutItem = TablepasienLayoutItem9.Owner
        Width = 36
      end
      object Tablepasienstatus_nikah: TcxGridDBColumn
        Caption = 'NIKAH'
        DataBinding.FieldName = 'status_nikah'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'BELUM NIKAH'
          'NIKAH')
        LayoutItem = TablepasienLayoutItem10.Owner
        Width = 45
      end
      object Tablepasiennama_ortu: TcxGridDBColumn
        Caption = 'ORTU'
        DataBinding.FieldName = 'nama_ortu'
        LayoutItem = TablepasienLayoutItem11.Owner
        Width = 47
      end
      object Tablepasienpekerjaan_ortu: TcxGridDBColumn
        Caption = 'Pekerjaan ORTU'
        DataBinding.FieldName = 'pekerjaan_ortu'
        LayoutItem = TablepasienLayoutItem12.Owner
        Width = 38
      end
      object Tablepasiennama_pasangan: TcxGridDBColumn
        Caption = 'Pasangan'
        DataBinding.FieldName = 'nama_pasangan'
        LayoutItem = TablepasienLayoutItem13.Owner
        Width = 33
      end
      object TablepasienRootGroup: TcxGridInplaceEditFormGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Template Card'
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object TablepasienLayoutItem1: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup3.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 0
      end
      object TablepasienLayoutItem2: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup3.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 1
      end
      object TablepasienLayoutItem3: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup3.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 2
      end
      object TablepasienLayoutItem4: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup4.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 0
      end
      object TablepasienLayoutItem5: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup4.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 1
      end
      object TablepasienLayoutItem6: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup4.Owner
        AlignHorz = ahClient
        AlignVert = avClient
        Index = 4
      end
      object TablepasienLayoutItem7: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup4.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 3
      end
      object TablepasienLayoutItem8: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup4.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 2
      end
      object TablepasienLayoutItem9: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup3.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 3
      end
      object TablepasienLayoutItem10: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup5.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 0
      end
      object TablepasienLayoutItem11: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup5.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 2
      end
      object TablepasienLayoutItem12: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup5.Owner
        AlignHorz = ahClient
        AlignVert = avClient
        Index = 3
      end
      object TablepasienLayoutItem13: TcxGridInplaceEditFormLayoutItem
        Parent = TablepasienGroup5.Owner
        AlignHorz = ahLeft
        AlignVert = avTop
        SizeOptions.Width = 254
        Index = 1
      end
      object TablepasienGroup3: TdxLayoutGroup
        Parent = TablepasienGroup1.Owner
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Umum'
        SizeOptions.Width = 293
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        Index = 0
      end
      object TablepasienGroup4: TdxLayoutGroup
        Parent = TablepasienRootGroup.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Keterangan'
        SizeOptions.Width = 288
        ButtonOptions.Buttons = <>
        Index = 1
      end
      object TablepasienGroup5: TdxLayoutGroup
        Parent = TablepasienGroup1.Owner
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Keluarga'
        SizeOptions.Height = 114
        SizeOptions.Width = 92
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        Index = 1
      end
      object TablepasienGroup1: TdxLayoutAutoCreatedGroup
        Parent = TablepasienRootGroup.Owner
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
    end
    object GLevelViewTabel: TcxGridLevel
      Caption = 'Tabel'
      GridView = Tablepasien
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
  object ActionList: TActionList
    Left = 64
    Top = 88
    object AcAuto: TAction
      Caption = 'Auto Code'
      OnExecute = AcAutoExecute
    end
  end
end
