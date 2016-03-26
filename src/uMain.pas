unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uAlgorithms;


type
  TfrmMain = class(TForm)
    mmMenu: TMainMenu;
    Chapter11: TMenuItem;
    Chapter21: TMenuItem;
    Chapter31: TMenuItem;
    FibonacciRecursive1: TMenuItem;
    FibonacciFormula1: TMenuItem;
    procedure FibonacciRecursive1Click(Sender: TObject);
    procedure FibonacciFormula1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalculateFibonacci(AFunc: TFuncFibonacci);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.CalculateFibonacci(AFunc: TFuncFibonacci);
var
  sInput: string;
  nNumber: Integer;
  nResult: Cardinal;
  sMsg: string;
begin
  sInput := InputBox('Fibonacci', 'Positive number:', '');
  if TryStrToInt(sInput, nNumber) and (nNumber >= 0) then
  begin
    nResult := AFunc(nNumber);
    sMsg := Format('Fibonacci(%d) = %d', [nNumber, nResult]);
    ShowMessage(sMsg);
  end
  else
    ShowMessage('Invalid number.');
end;

procedure TfrmMain.FibonacciFormula1Click(Sender: TObject);
begin
  CalculateFibonacci(FibonacciEx);
end;

procedure TfrmMain.FibonacciRecursive1Click(Sender: TObject);
begin
  CalculateFibonacci(Fibonacci);
end;

end.
