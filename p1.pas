program p1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes,  sharedata, stackinc
  { you can add units after this };
var
  //x:integer;

  s1: PLIFO;
  x: Te;
  i: integer;
  fl: boolean;
//procedure MinMax(var x:integer; b:integer); stdcall; external 'd1.dll';

 begin
(*  readln(x);
  MinMax(x,7);
  writeln(x);
  Readln();*)

  Init(s1);

  for i := 1 to 3 do begin
    write('Push value=');readln(x);
    Push(s1, x, fl);
  end;

  writeln('-----------');
  for i := 1 to 4 do begin
    if not Empty(s1) then begin
      Pop(s1, x, fl);
      if fl then writeln('Pop value=',x);
    end;
  end;

  readln;
end.

