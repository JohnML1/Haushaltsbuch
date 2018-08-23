unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, IniPropStorage,
  ExtCtrls, ComCtrls, db, csvdataset, UniqueInstance, SortGrid, jvCSVBase;

type

  { TForm1 }

  TForm1 = class(TForm)
    CoolBar1: TCoolBar;
    CSVDataset1: TCSVDataset;
    DataSource1: TDataSource;
    IniPropStorage1: TIniPropStorage;
    jvCSVBase1: TjvCSVBase;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    UniqueInstance1: TUniqueInstance;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

