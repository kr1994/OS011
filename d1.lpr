library d1;

{$mode objfpc}{$H+}

uses
  SysUtils, Windows;
  { you can add units after this }

type
  MinMax= function (x, y : Integer): Integer; stdcall;

var
  DllHandle: THandle;

const
  Max: MinMax = nil;
  Min: MinMax = nil;



exports


begin
  DllHandle := LoadLibrary('MinMaxLib.dll');
  if DllHandle <> 0 then begin

    Min := MinMax(GetProcAddress(DllHandle, 'Min'));
    if Min <> nil then begin
      writeln('min=', Min(1, 5));
    end;

    Max := MinMax(GetProcAddress(DllHandle, 'Max'));
    if Max <> nil then begin
      writeln('max=', Max(1, 5));
    end;

    FreeLibrary(DllHandle);
  end;
  readln;

end.

