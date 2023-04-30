object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 506
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 781
    Height = 401
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 105
    Align = alTop
    TabOrder = 1
    ExplicitTop = -6
    object Edit1: TEdit
      Left = 1
      Top = 1
      Width = 655
      Height = 103
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -73
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'oi'
      ExplicitHeight = 96
    end
    object Button1: TButton
      Left = 656
      Top = 1
      Width = 124
      Height = 103
      Align = alRight
      Caption = 'Mostrar Dados'
      TabOrder = 1
      ExplicitLeft = 662
      ExplicitTop = -4
    end
  end
  object DataSource1: TDataSource
    Left = 416
    Top = 184
  end
end
