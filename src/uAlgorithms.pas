unit uAlgorithms;

interface

type
  TFuncFibonacci = function(const Number: Word): Cardinal;

function Fibonacci(const Number: Word): Cardinal;
function FibonacciEx(const Number: Word): Cardinal;

implementation

uses
  System.Math;

function Fibonacci(const Number: Word): Cardinal;
begin
  if Number = 0 then
    Result := 0
  else
  if Number = 1 then
    Result := 1
  else
    Result := Fibonacci(Number - 1) + Fibonacci(Number - 2);
end;

function FibonacciEx(const Number: Word): Cardinal;
var
  Phi: Real;
  Raiz5: Real;
begin
  Raiz5 := Sqrt(5);
  Phi := (1 + Raiz5) / 2;
  Result := Floor( Power(Phi, Number) / Raiz5 + 1/2 );
end;

end.
