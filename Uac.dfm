object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Alpha Crack 1.0 - http://u-forum.org/'
  ClientHeight = 182
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object lblText: TLabel
    Left = 12
    Top = 5
    Width = 78
    Height = 16
    Caption = 'Alpha Crack 1.0'
  end
  object lblStatus: TLabel
    Left = 12
    Top = 156
    Width = 36
    Height = 16
    Caption = 'Status:'
  end
  object lblStatus2: TLabel
    Left = 50
    Top = 157
    Width = 25
    Height = 13
    Caption = 'Ativo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object http: TIdHTTPServer
    Bindings = <>
    OnCommandGet = httpCommandGet
    Left = 125
    Top = 10
  end
end
