unit sharedata;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  Te = integer;
  PLIFO = ^LIFO;
  LIFO = record
    data: Te;
    next: PLIFO;
  end;

implementation

end.

