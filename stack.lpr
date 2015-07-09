library stack;

{$mode objfpc}{$H+}

uses
  Classes, sharedata
  { you can add units after this };



  procedure Init(var top:PLIFO);stdcall;
  begin
    top := nil;
  end;

  procedure Push(var s:PLIFO; item:Te; var fl:boolean);stdcall;
  var
    q: PLIFO;
  begin
    fl := false;
    new(q);
    if q <> nil then begin
      q^.data := item;
      q^.next := s;
      s := q;
      fl := true;
    end;
  end;

procedure Pop(var s:PLIFO; var item:Te; var fl:boolean);stdcall;
  var
    q: PLIFO;
  begin
    fl := false;
    if s <> nil then begin
      q:= s;
      item := s^.data;
      s := s^.next;
      dispose(q);
      fl := true;
    end;
  end;

  procedure Top(s:PLIFO; var item:Te; var fl: boolean);stdcall;
  begin
    fl := false;
    if s <> nil then begin
      item := s^.data;
      fl := true;
    end;
  end;

  function Empty(top: PLIFO):boolean;stdcall;
  begin
    Empty := (top = nil);
  end;

exports
  Init, Push, Pop, Top, Empty;

begin
end.

