object Form1: TForm1
  Left = 222
  Top = 84
  Width = 771
  Height = 668
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 8
    Width = 26
    Height = 19
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 72
    Top = 504
    Width = 142
    Height = 19
    Caption = 'MASUKKKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 72
    Top = 56
    Width = 45
    Height = 19
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 96
    Width = 31
    Height = 19
    Caption = 'Telp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 136
    Width = 46
    Height = 19
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 72
    Top = 176
    Width = 63
    Height = 19
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 72
    Top = 216
    Width = 57
    Height = 19
    Caption = 'Member'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 256
    Top = 216
    Width = 74
    Height = 19
    Caption = 'DISKON : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 336
    Top = 216
    Width = 108
    Height = 19
    Caption = 'Terisi Otomatis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 168
    Top = 8
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 80
    Top = 272
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 272
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 304
    Top = 272
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 408
    Top = 272
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 320
    Width = 441
    Height = 168
    DataSource = DataModule2.ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt6: TEdit
    Left = 240
    Top = 504
    Width = 265
    Height = 21
    TabOrder = 6
    OnChange = edt6Change
  end
  object edt2: TEdit
    Left = 168
    Top = 56
    Width = 329
    Height = 21
    TabOrder = 7
  end
  object edt3: TEdit
    Left = 168
    Top = 96
    Width = 329
    Height = 21
    TabOrder = 8
  end
  object edt4: TEdit
    Left = 168
    Top = 136
    Width = 329
    Height = 21
    TabOrder = 9
  end
  object edt5: TEdit
    Left = 168
    Top = 176
    Width = 329
    Height = 21
    TabOrder = 10
  end
  object ComboBox1: TComboBox
    Left = 168
    Top = 216
    Width = 73
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    OnChange = ComboBox1Change
    Items.Strings = (
      'Ya'
      'Tidak')
  end
end
