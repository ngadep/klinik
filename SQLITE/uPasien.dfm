object FrmPasien: TFrmPasien
  Left = 0
  Top = 0
  Caption = 'Aplikasi Rekam Medis Klinik'
  ClientHeight = 416
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 702
    Height = 410
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitHeight = 390
    object Tablepasien: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DsPasien
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      EditForm.UseDefaultLayout = False
      OptionsBehavior.CellHints = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.EditMode = emInplaceEditForm
      OptionsCustomize.ColumnsQuickCustomization = True
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
        Width = 53
      end
      object Tablepasiennama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        LayoutItem = TablepasienLayoutItem2.Owner
        Width = 150
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
        Width = 48
      end
      object Tablepasientempat_lahir: TcxGridDBColumn
        Caption = 'Tempat'
        DataBinding.FieldName = 'tempat_lahir'
        LayoutItem = TablepasienLayoutItem4.Owner
        Width = 75
      end
      object Tablepasientanggal_lahir: TcxGridDBColumn
        Caption = 'Tgl Lahir'
        DataBinding.FieldName = 'tanggal_lahir'
        LayoutItem = TablepasienLayoutItem5.Owner
        Width = 65
      end
      object Tablepasienalamat: TcxGridDBColumn
        Caption = 'Alamat Lengkap'
        DataBinding.FieldName = 'alamat'
        LayoutItem = TablepasienLayoutItem6.Owner
        Width = 166
      end
      object Tablepasienpekerjaan: TcxGridDBColumn
        Caption = 'Pekerjaan'
        DataBinding.FieldName = 'pekerjaan'
        LayoutItem = TablepasienLayoutItem7.Owner
        Width = 106
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
        Width = 77
      end
      object Tablepasiennama_ortu: TcxGridDBColumn
        Caption = 'ORTU'
        DataBinding.FieldName = 'nama_ortu'
        LayoutItem = TablepasienLayoutItem11.Owner
        Width = 150
      end
      object Tablepasienpekerjaan_ortu: TcxGridDBColumn
        Caption = 'Pekerjaan ORTU'
        DataBinding.FieldName = 'pekerjaan_ortu'
        LayoutItem = TablepasienLayoutItem12.Owner
        Width = 100
      end
      object Tablepasiennama_pasangan: TcxGridDBColumn
        Caption = 'Pasangan'
        DataBinding.FieldName = 'nama_pasangan'
        LayoutItem = TablepasienLayoutItem13.Owner
        Width = 150
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
        Parent = TablepasienRootGroup
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
        Parent = TablepasienRootGroup
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
    end
    object TableRekam: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Hint = 'Insert'
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DsRekamMedis
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      EditForm.UseDefaultLayout = False
      OptionsBehavior.CellHints = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.EditMode = emInplaceEditForm
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object TableRekamId: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Visible = False
        SortIndex = 0
        SortOrder = soDescending
      end
      object TableRekampasien_id: TcxGridDBColumn
        DataBinding.FieldName = 'pasien_id'
        Visible = False
      end
      object TableRekamtanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.AssignedValues.DisplayFormat = True
        Properties.AssignedValues.EditFormat = True
        LayoutItem = TableRekamLayoutItem1.Owner
        Width = 112
      end
      object TableRekamanamnesis: TcxGridDBColumn
        Caption = 'Anamnesis'
        DataBinding.FieldName = 'anamnesis'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.WantReturns = False
        LayoutItem = TableRekamLayoutItem3.Owner
        Width = 90
      end
      object TableRekamhasil_pemeriksaan: TcxGridDBColumn
        Caption = 'Hasil Pemeriksaan'
        DataBinding.FieldName = 'hasil_pemeriksaan'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.WantReturns = False
        LayoutItem = TableRekamLayoutItem4.Owner
        Width = 92
      end
      object TableRekamdiagnosis: TcxGridDBColumn
        Caption = 'Diagnosis'
        DataBinding.FieldName = 'diagnosis'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.WantReturns = False
        LayoutItem = TableRekamLayoutItem5.Owner
        Width = 90
      end
      object TableRekampenatalaksanaan: TcxGridDBColumn
        Caption = 'Penatalaksanaan'
        DataBinding.FieldName = 'penatalaksanaan'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.WantReturns = False
        LayoutItem = TableRekamLayoutItem6.Owner
        Width = 92
      end
      object TableRekamtindakan_obat: TcxGridDBColumn
        Caption = 'Tindakan/Obat'
        DataBinding.FieldName = 'tindakan_obat'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.WantReturns = False
        LayoutItem = TableRekamLayoutItem7.Owner
        Width = 91
      end
      object TableRekampelayanan_lain: TcxGridDBColumn
        Caption = 'Pelayanan Lain'
        DataBinding.FieldName = 'pelayanan_lain'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.WantReturns = False
        LayoutItem = TableRekamLayoutItem8.Owner
        Width = 91
      end
      object TableRekamRootGroup: TcxGridInplaceEditFormGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Template Card'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object TableRekamLayoutItem3: TcxGridInplaceEditFormLayoutItem
        Parent = TableRekamGroup1.Owner
        AlignHorz = ahClient
        AlignVert = avClient
        SizeOptions.Height = 52
        Index = 1
      end
      object TableRekamLayoutItem4: TcxGridInplaceEditFormLayoutItem
        Parent = TableRekamGroup1.Owner
        AlignHorz = ahClient
        AlignVert = avTop
        SizeOptions.Height = 62
        SizeOptions.Width = 313
        Index = 2
      end
      object TableRekamLayoutItem5: TcxGridInplaceEditFormLayoutItem
        Parent = TableRekamGroup1.Owner
        AlignHorz = ahClient
        SizeOptions.Height = 71
        SizeOptions.Width = 246
        Index = 3
      end
      object TableRekamLayoutItem6: TcxGridInplaceEditFormLayoutItem
        Parent = TableRekamGroup2.Owner
        AlignHorz = ahClient
        AlignVert = avClient
        SizeOptions.Height = 62
        SizeOptions.Width = 326
        Index = 0
      end
      object TableRekamLayoutItem7: TcxGridInplaceEditFormLayoutItem
        Parent = TableRekamGroup2.Owner
        SizeOptions.Height = 65
        Index = 1
      end
      object TableRekamLayoutItem8: TcxGridInplaceEditFormLayoutItem
        Parent = TableRekamGroup2.Owner
        SizeOptions.Height = 66
        Index = 2
      end
      object TableRekamGroup1: TdxLayoutGroup
        Parent = TableRekamRootGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        Index = 0
      end
      object TableRekamGroup2: TdxLayoutGroup
        Parent = TableRekamRootGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        Index = 1
      end
      object TableRekamLayoutItem1: TcxGridInplaceEditFormLayoutItem
        Parent = TableRekamGroup1.Owner
        Index = 0
      end
    end
    object GLevelPasien: TcxGridLevel
      Caption = 'Daftar Pasien'
      GridView = Tablepasien
    end
    object GLEvelRekam: TcxGridLevel
      Caption = 'Daftar Rekam Medis Pasien'
      GridView = TableRekam
    end
  end
  object DsPasien: TDataSource
    DataSet = QPasien
    Left = 144
    Top = 192
  end
  object ActionList: TActionList
    Left = 48
    Top = 312
    object AcAuto: TAction
      Caption = 'Auto Code'
      OnExecute = AcAutoExecute
    end
  end
  object DsRekamMedis: TDataSource
    DataSet = QRekamMedis
    Left = 144
    Top = 256
  end
  object QPasien: TFDQuery
    Connection = Dm.Con
    SQL.Strings = (
      'SELECT * FROM TbPasien')
    Left = 56
    Top = 192
  end
  object QRekamMedis: TFDQuery
    MasterSource = DsPasien
    MasterFields = 'id'
    DetailFields = 'pasien_id'
    Connection = Dm.Con
    SQL.Strings = (
      'SELECT * FROM TbRekamMedis WHERE pasien_id = :id')
    Left = 56
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end
