unit stackinc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,sharedata;

 procedure Init(var top:PLIFO);stdcall; external 'stack.dll';
 procedure Push(var s:PLIFO; item:Te; var fl:boolean);stdcall;external 'stack.dll';
 procedure Pop(var s:PLIFO; var item:Te; var fl:boolean);stdcall;external 'stack.dll';
 procedure Top(s:PLIFO; var item:Te; var fl: boolean);stdcall; external 'stack.dll';
 function Empty(top: PLIFO):boolean;stdcall; external 'stack.dll';

implementation



end.

