unit Unit2;

interface

uses
  Forms,
  Buttons, sSpeedButton,  sPageControl,  sButton,
  sGroupBox, sComboBox, sCheckBox, IniFiles, Controls, StdCtrls, ComCtrls,
  Classes, sLabel;

type
  TForm2 = class(TForm)
    Прочти: TsPageControl;
    sTabSheet1: TsTabSheet;
    sGroupBox1: TsGroupBox;
    sComboBox1: TsComboBox;
    sButton2: TsButton;
    procedure sButton1Click(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses mainPage;

{$R *.dfm}

procedure TForm2.sButton1Click(Sender: TObject);
begin
  //если выбран первый скин в списке, значит применить стиль Vista
  if sComboBox1.ItemIndex=0 then
    Form19.sSkinManager1.SkinName := 'AlterMetro (internal)'
  //иначе применить скин Office2007 Blue
  else
    Form19.sSkinManager1.SkinName := 'Android OS (internal)';
end;

procedure TForm2.sComboBox1Change(Sender: TObject);
begin
  if sComboBox1.ItemIndex=0 then
    Form19.sSkinManager1.SkinName := 'AlterMetro (internal)';
      if sComboBox1.ItemIndex=1 then
    Form19.sSkinManager1.SkinName := 'Android OS (internal)';
      if sComboBox1.ItemIndex=2 then
    Form19.sSkinManager1.SkinName := 'Beijing (internal)';
      if sComboBox1.ItemIndex=3 then
    Form19.sSkinManager1.SkinName := 'BlueGauze (internal)';
      if sComboBox1.ItemIndex=4 then
    Form19.sSkinManager1.SkinName := 'Calcium (internal)';
      if sComboBox1.ItemIndex=5 then
    Form19.sSkinManager1.SkinName := 'Cold (internal)';
      if sComboBox1.ItemIndex=6 then
    Form19.sSkinManager1.SkinName := 'Elegant (internal)';
      if sComboBox1.ItemIndex=7 then
    Form19.sSkinManager1.SkinName := 'Lucky (internal)';
      if sComboBox1.ItemIndex=8 then
    Form19.sSkinManager1.SkinName := 'MacMetal (internal)';
      if sComboBox1.ItemIndex=9 then
    Form19.sSkinManager1.SkinName := 'MacOS2 (internal)';
      if sComboBox1.ItemIndex=10 then
    Form19.sSkinManager1.SkinName := 'Matrix (internal)';
      if sComboBox1.ItemIndex=11 then
    Form19.sSkinManager1.SkinName := 'MetroUI (internal)';
      if sComboBox1.ItemIndex=12 then
    Form19.sSkinManager1.SkinName := 'Nautilus (internal)';
      if sComboBox1.ItemIndex=13 then
    Form19.sSkinManager1.SkinName := 'Neutral2 (internal)';
      if sComboBox1.ItemIndex=14 then
    Form19.sSkinManager1.SkinName := 'Office2007 Black (internal)';
      if sComboBox1.ItemIndex=15 then
    Form19.sSkinManager1.SkinName := 'Pulsar (internal)';
      if sComboBox1.ItemIndex=16 then
    Form19.sSkinManager1.SkinName := 'Snow Leopard (internal)';
      if sComboBox1.ItemIndex=17 then
    Form19.sSkinManager1.SkinName := 'Toxic (internal)';
      if sComboBox1.ItemIndex=18 then
    Form19.sSkinManager1.SkinName := 'TV-b (internal)';
      if sComboBox1.ItemIndex=19 then
    Form19.sSkinManager1.SkinName := 'Ubuntu (internal)';
      if sComboBox1.ItemIndex=20 then
    Form19.sSkinManager1.SkinName := 'Vista (internal)';
      if sComboBox1.ItemIndex=21 then
    Form19.sSkinManager1.SkinName := 'Windows 7 (internal)';
end;

procedure TForm2.sButton2Click(Sender: TObject);
var
   SaveFile: TIniFile;
   path:string; //путь к Ini файлу
begin
   //получаем путь к текущей директории
   GetDir(0,path);

   //сохраним выбранный скин в Ini файл
   SaveFile := TIniFile.Create(path+ '\settings.INI');
   SaveFile.WriteString('LoadOptions', 'SkinName', Form19.sSkinManager1.SkinName);
   SaveFile.Free;
end;

end.
