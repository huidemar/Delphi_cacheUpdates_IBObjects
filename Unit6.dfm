object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 367
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object IB_Grid1: TIB_Grid
    Left = 0
    Top = 0
    Width = 379
    Height = 120
    CustomGlyphsSupplied = []
    DataSource = DsCliente
    PreventEditing = True
    PreventInserting = True
    TabOrder = 0
  end
  object IB_UpdateBar1: TIB_UpdateBar
    Left = 8
    Top = 126
    Width = 190
    Height = 44
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    DataSource = DsCliente
    ReceiveFocus = False
    CustomGlyphsSupplied = []
  end
  object IB_UpdateBar2: TIB_UpdateBar
    Left = 8
    Top = 302
    Width = 190
    Height = 43
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    DataSource = DsTelefone
    ReceiveFocus = False
    CustomGlyphsSupplied = []
  end
  object IB_Grid2: TIB_Grid
    Left = 0
    Top = 176
    Width = 625
    Height = 120
    CustomGlyphsSupplied = []
    DataSource = DsTelefone
    TabOrder = 3
  end
  object Button1: TButton
    Left = 304
    Top = 126
    Width = 150
    Height = 44
    Caption = 'ApplyUpdate Cliente'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 302
    Width = 150
    Height = 43
    Caption = 'ApplyUpdate Telefone'
    TabOrder = 5
    OnClick = Button2Click
  end
  object edtCLIENTE_ID: TIB_Edit
    Left = 460
    Top = 33
    Width = 80
    Height = 21
    AutoLabel.Kind = albLeft
    AutoLabel.Suffix = ':'
    DataField = 'CLIENTE_ID'
    DataSource = DsCliente
    TabOrder = 6
  end
  object edtNOME: TIB_Edit
    Left = 460
    Top = 62
    Width = 80
    Height = 21
    AutoLabel.Kind = albLeft
    AutoLabel.Suffix = ':'
    DataField = 'NOME'
    DataSource = DsCliente
    TabOrder = 7
  end
  object Button3: TButton
    Left = 528
    Top = 126
    Width = 150
    Height = 44
    Caption = 'CancelUpdates'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 528
    Top = 302
    Width = 150
    Height = 43
    Caption = 'CancelUpdates'
    TabOrder = 9
    OnClick = Button4Click
  end
  object IB_Connection1: TIB_Connection
    CacheStatementHandles = False
    PasswordStorage = psNotSecure
    SQLDialect = 3
    FieldsDisplayLabel.Strings = (
      'NOME=Descri'#231#227'o')
    Params.Strings = (
      'SERVER=servidor/3050'
      'PATH=C:\projetos\D2010\cache_updates\banco.fdb'
      'CHARACTER SET=WIN1252'
      'USER NAME=SYSDBA'
      'SQL DIALECT=3')
    Left = 64
    Top = 8
    SavedPassword = '.JuMbLe.01.432B0639073E0E4B49'
  end
  object QyCliente: TIB_Query
    DatabaseName = 'C:\projetos\D2010\cache_updates\banco.fdb'
    IB_Connection = IB_Connection1
    SQL.Strings = (
      'select * from cliente')
    GeneratorLinks.Strings = (
      'cliente_id=seq_cliente_id')
    KeyLinks.Strings = (
      'CLIENTE.CLIENTE_ID')
    OrderingItems.Strings = (
      'CLIENTE_ID=CLIENTE_ID;CLIENTE_ID DESC'
      'NOME=NOME;NOME DESC')
    OrderingLinks.Strings = (
      'CLIENTE_ID=ITEM=1'
      'NOME=ITEM=2')
    AfterPost = QyClienteAfterPost
    CachedUpdates = True
    Left = 200
    Top = 16
  end
  object DsCliente: TIB_DataSource
    Dataset = QyCliente
    Left = 256
    Top = 24
  end
  object QyTelefone: TIB_Query
    DatabaseName = 'C:\projetos\D2010\cache_updates\banco.fdb'
    IB_Connection = IB_Connection1
    SQL.Strings = (
      'select * from telefone')
    GeneratorLinks.Strings = (
      'telefone_id=seq_telefone_id')
    KeyLinks.Strings = (
      'telefone.telefone_id')
    KeyLinksAutoDefine = False
    KeyRelation = 'TELEFONE'
    MasterSource = DsCliente
    MasterLinks.Strings = (
      'telefone.cliente_id=cliente.cliente_Id')
    CachedUpdates = True
    Left = 352
    Top = 176
    ParamValues = (
      'MLNK_CLIENTE_ID_0=')
  end
  object DsTelefone: TIB_DataSource
    Dataset = QyTelefone
    Left = 352
    Top = 208
  end
end
