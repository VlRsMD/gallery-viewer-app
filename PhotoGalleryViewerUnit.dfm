object PhotoGalleryViewer: TPhotoGalleryViewer
  Left = 0
  Top = 0
  Caption = 'Photo Gallery Viewer'
  ClientHeight = 788
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 60
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1174
    object headerLabel: TLabel
      Left = 376
      Top = 14
      Width = 188
      Height = 25
      Alignment = taCenter
      Caption = 'Photo Gallery Viewer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 747
    Width = 953
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 504
    ExplicitTop = 536
    ExplicitWidth = 185
    object footerLabel: TLabel
      Left = 432
      Top = 8
      Width = 93
      Height = 15
      Caption = 'Made with Delphi'
    end
  end
  object pnlSidebar: TPanel
    Left = 0
    Top = 60
    Width = 200
    Height = 687
    Align = alLeft
    Caption = 'pnlSidebar'
    TabOrder = 2
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 198
      Height = 685
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 320
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
  object pnlContent: TPanel
    Left = 200
    Top = 60
    Width = 753
    Height = 687
    Align = alClient
    Caption = 'pnlContent'
    TabOrder = 3
    ExplicitLeft = 392
    ExplicitTop = 392
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 751
      Height = 685
      Align = alClient
      Stretch = True
      ExplicitLeft = 40
      ExplicitTop = -32
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
  end
end
