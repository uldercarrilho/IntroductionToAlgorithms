object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Introduction to Algorithms - Exercises'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMenu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmMenu: TMainMenu
    Left = 312
    Top = 152
    object Chapter11: TMenuItem
      Caption = 'Chapter 1'
    end
    object Chapter21: TMenuItem
      Caption = 'Chapter 2'
    end
    object Chapter31: TMenuItem
      Caption = 'Chapter 3'
      object FibonacciRecursive1: TMenuItem
        Caption = 'Fibonacci Recursive'
        OnClick = FibonacciRecursive1Click
      end
      object FibonacciFormula1: TMenuItem
        Caption = 'Fibonacci Formula'
        OnClick = FibonacciFormula1Click
      end
    end
  end
end
