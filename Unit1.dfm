object Form1: TForm1
  Left = -8
  Top = -8
  Width = 1296
  Height = 936
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 593
    Height = 609
    OnMouseMove = Image1MouseMove
  end
  object Label1: TLabel
    Left = 368
    Top = 48
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 368
    Top = 72
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 752
    Top = 800
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 752
    Top = 824
    Width = 3
    Height = 13
  end
  object PaintBox1: TPaintBox
    Left = 592
    Top = 0
    Width = 593
    Height = 609
    Color = clWhite
    ParentColor = False
    OnMouseMove = PaintBox1MouseMove
  end
  object Label5: TLabel
    Left = 16
    Top = 736
    Width = 3
    Height = 13
  end
  object Label6: TLabel
    Left = 312
    Top = 800
    Width = 8
    Height = 13
    Caption = 'R'
  end
  object Label7: TLabel
    Left = 312
    Top = 824
    Width = 8
    Height = 13
    Caption = 'G'
  end
  object Label8: TLabel
    Left = 312
    Top = 848
    Width = 7
    Height = 13
    Caption = 'B'
  end
  object Label9: TLabel
    Left = 507
    Top = 800
    Width = 3
    Height = 13
  end
  object Label10: TLabel
    Left = 507
    Top = 824
    Width = 3
    Height = 13
  end
  object Label11: TLabel
    Left = 507
    Top = 848
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 16
    Top = 824
    Width = 121
    Height = 41
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 0
    OnClick = Button1Click
  end
  object memo1: TMemo
    Left = 592
    Top = 648
    Width = 129
    Height = 185
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button3: TButton
    Left = 1200
    Top = 736
    Width = 1
    Height = 1
    Caption = #1056#1077#1076#1072#1082#1090#1086#1088
    TabOrder = 2
    Visible = False
  end
  object Edit2: TEdit
    Left = 592
    Top = 840
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object Button4: TButton
    Left = 1048
    Top = 792
    Width = 1
    Height = 9
    Caption = 'Button4'
    TabOrder = 4
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 824
    Width = 121
    Height = 41
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' COM-'#1087#1086#1088#1090#1072
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object ScrollBar1: TScrollBar
    Left = 328
    Top = 800
    Width = 169
    Height = 17
    Max = 255
    PageSize = 0
    TabOrder = 6
    OnScroll = ScrollBar1Scroll
  end
  object ScrollBar2: TScrollBar
    Left = 328
    Top = 824
    Width = 169
    Height = 17
    Max = 255
    PageSize = 0
    TabOrder = 7
    OnScroll = ScrollBar2Scroll
  end
  object ScrollBar3: TScrollBar
    Left = 328
    Top = 848
    Width = 169
    Height = 17
    Max = 255
    PageSize = 0
    TabOrder = 8
    OnScroll = ScrollBar3Scroll
  end
  object XPManifest1: TXPManifest
    Left = 1024
    Top = 824
  end
  object MainMenu1: TMainMenu
    Left = 1056
    Top = 824
    object N1: TMenuItem
      Caption = #1052#1077#1085#1102
      object N3: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ShortCut = 16463
        OnClick = N3Click
      end
      object N2: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '
        ShortCut = 16450
        OnClick = N2Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ShortCut = 27
        OnClick = N4Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.bmp|*.bmp'
    Left = 1000
    Top = 824
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 1088
    Top = 824
  end
  object ComPort1: TComPort
    BaudRate = br1200
    Port = 'COM4'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    Left = 1120
    Top = 824
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer3Timer
    Left = 1152
    Top = 824
  end
end
