unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  locale_de, Classes, SysUtils, Forms,
  Controls, Graphics, Dialogs, IniPropStorage, ExtCtrls, ComCtrls, DBCtrls,
  DBGrids, db, SdfData, UniqueInstance;

type

  { TForm1 }

  TForm1 = class(TForm)
    CoolBar1: TCoolBar;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    IniPropStorage1: TIniPropStorage;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    SdfDataSet1: TSdfDataSet;
    UniqueInstance1: TUniqueInstance;
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  FName : string;
  lst : TStringList;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var line : String;
begin

  lst := TStringList.Create;

  line := 'Zaehler;Datum;Gattung;Artikel;Preis';
  lst.Add(line);


  FName := ExePath + 'Daten.csv';
  SDFDataset1.FileName:=FName;

  if not FileExists(FName) then
  begin
      ShowMessage(FName + NL + 'erxistiert noch nicht, wird erzeugt');
      lst.SaveToFile(FName);


  end;

  SDFDataset1.Active:=true;

end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  canClose := true;
  FreeAndNil(lst);
end;

end.

