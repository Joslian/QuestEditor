unit mainPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, struct, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, loadTask, Vcl.Buttons, saveTask, Vcl.ExtCtrls, sSkinManager,
  sPanel, sMonthCalendar, sSpeedButton, sColorSelect, acProgressBar, sMaskEdit,
  sCustomComboEdit, sTooledit, sButton, IniFiles, Unit2, Vcl.DBCtrls,
  Vcl.CheckLst, Vcl.Menus, sSpinEdit, Vcl.Samples.Spin, sEdit;

type
  TaskArr = array of Task;

type
  TForm19 = class(TForm)
    Button1: TButton;
    sFilenameEdit1: TsFilenameEdit;
    ListBox1: TListBox;
    sProgressBar1: TsProgressBar;
    ListBox2: TListBox;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    QuestName: TEdit;
    sColorSelect1: TsColorSelect;
    Label3: TLabel;
    Memo2: TMemo;
    GroupBox2: TGroupBox;
    ListBox3: TListBox;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    ListBox4: TListBox;
    Memo3: TMemo;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    GroupBox4: TGroupBox;
    ListBox5: TListBox;
    Label8: TLabel;
    Edit7: TEdit;
    Memo4: TMemo;
    ComboBox1: TComboBox;
    Edit6: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label7: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label9: TLabel;
    ComboBox2: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Edit11: TEdit;
    GroupBox5: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    sMonthCalendar1: TsMonthCalendar;
    Label14: TLabel;
    Edit13: TEdit;
    Label15: TLabel;
    Edit14: TEdit;
    ComboBox3: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox4: TCheckBox;
    Button2: TButton;
    Label16: TLabel;
    Edit15: TEdit;
    Label17: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    TabSheet6: TTabSheet;
    Button3: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    Edit20: TEdit;
    Label22: TLabel;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    GroupBox6: TGroupBox;
    CheckBox15: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox13: TCheckBox;
    GroupBox8: TGroupBox;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    TabSheet2: TTabSheet;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox12: TGroupBox;
    Label10: TLabel;
    Edit28: TEdit;
    Label37: TLabel;
    Edit29: TEdit;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    ComboBox4: TComboBox;
    Edit44: TEdit;
    Edit45: TEdit;
    ComboBox5: TComboBox;
    GroupBox9: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    sSpinEdit1: TsSpinEdit;
    sSpinEdit2: TsSpinEdit;
    sSpinEdit3: TsSpinEdit;
    sSpinEdit4: TsSpinEdit;
    sSkinManager1: TsSkinManager;
    ComboBox6: TComboBox;
    Label13: TLabel;
    ComboBox7: TComboBox;
    Label30: TLabel;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    Label31: TLabel;
    Label32: TLabel;
    BitBtn4: TBitBtn;
    Edit21: TEdit;
    CheckBox5: TCheckBox;
    Label33: TLabel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit12: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure TreeView1AdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure refreshChildTask;
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ListBox2DblClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure refreshWorkPanel;
    procedure setParam;
    procedure setAnswer;
    procedure setQuestion;
    procedure QuestNameExit(Sender: TObject);
    procedure sColorSelect1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure ListBox4Click(Sender: TObject);
    procedure ListBox5Click(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    FLbFont, FLbF: TFont;
    procedure ClearListBox(aLb: TListBox);

  end;

var
  Form19: TForm19;
  Tasks: TaskArr;
  TaskCount: Integer;
  SPos: array of Integer;
  stamp: Integer;
  version: Integer;
  f: TStream;
  offsets: array of Integer;
  DrowMod: Boolean;
  Node, Node2: TTreeNode;
  Nodes: TTreeNodes;
  Tree: TTreeView;
  CurrentTask: ^Task;
  ParentTask: array of ^Task;
  reqCraft: array [0 .. 3] of integer;

implementation

{$R *.dfm}

procedure ShiftArr(var aArr : TaskArr; const aI1, aI2 : Integer);
var
  i, j, h : Integer;
begin
  if aI1 = aI2 then Exit;
  h := High(aArr);
  j := aI2;
  for i := aI1 to h do begin
    aArr[j] := aArr[i];
    Inc(j);
  end;
  SetLength(aArr, j);
end;


function HexToInt(HexStr: string): Integer;
var
  RetVar: Integer;
  i, j: Integer;
begin
  RetVar := 0;
  for i := (length(HexStr) div 2) downto 1 do
  begin
    for j := 1 to 2 do
    begin
      RetVar := RetVar * 16;
      if HexStr[(i - 1) * 2 + j] in ['0' .. '9'] then
        RetVar := RetVar + ord(HexStr[(i - 1) * 2 + j]) - 48;
      if HexStr[(i - 1) * 2 + j] in ['a' .. 'f'] then
        RetVar := RetVar + ord(HexStr[(i - 1) * 2 + j]) - 87;
      if HexStr[(i - 1) * 2 + j] in ['A' .. 'F'] then
        RetVar := RetVar + ord(HexStr[(i - 1) * 2 + j]) - 55;
    end;
  end;
  Result := RetVar;
end;

procedure TForm19.BitBtn1Click(Sender: TObject);
begin
  if length(ParentTask) = 1 then
  begin
    setLength(ParentTask, 0);
    BitBtn1.Visible := false;
    ListBox2.Visible := false;
    ListBox1.Visible := true;
  end
  else
  begin
    setLength(ParentTask, length(ParentTask) - 1);
    refreshChildTask;
  end;
end;

procedure TForm19.BitBtn4Click(Sender: TObject);
var
  k: Integer;
begin
if length(ParentTask)=0 then
begin
  k := ListBox1.ItemIndex;
  ShiftArr(Tasks, k+1, k);
  dec(TaskCount);
  ListBox1.Items.Delete(k);
  if k < TaskCount then
    ListBox1.ItemIndex := k
  else if k > 0 then
    ListBox1.ItemIndex := k - 1;
  Listbox1Click(Form19);
end else
begin
  k := Listbox2.ItemIndex;
  dec(ParentTask[high(ParentTask)]^.subQuestC);
  Listbox2.Items.Delete(k);
  if k < ParentTask[high(ParentTask)]^.subQuestC then
     Listbox2.ItemIndex:= k
  else if k>0 then
    Listbox1.ItemIndex:= k-1;
  Listbox2Click(Form19);
end;
end;

procedure TForm19.Button1Click(Sender: TObject);
var
  i: Integer;
  name, color1: string;
  FontT, myFont: TFont;
begin
  ListBox1.Clear;
  FontT := TFont.Create;
  FontT.Charset := GB2312_CHARSET;
  FontT.Size := 8;
  FontT.name := 'Microsoft Sans Serif';
  FontT.Style := [fsBold];
  f := TFileStream.Create(sFilenameEdit1.FileName, fmOpenRead);
  f.Read(stamp, 4);
  f.Read(version, 4);
  if (version = 108) or (version = 105) or (version = 103) or (version = 102)
  or (version = 100) or (version = 93) or (version = 55) or (version = 53) then
  begin
    f.Read(TaskCount, 4);
    sProgressBar1.Max := TaskCount - 1;
    setLength(offsets, TaskCount);
    setLength(Tasks, TaskCount);
    for i := 0 to TaskCount - 1 do
      f.Read(offsets[i], 4);
    for i := 0 to TaskCount - 1 do
    begin
      sProgressBar1.Position := i;
      Application.ProcessMessages;
      myFont := TFont.Create;
      myFont.Assign(FontT);
      f.Position := offsets[i];
      Tasks[i] := loadTask.loadT(f, offsets[i], version);
      if Tasks[i].names <> '' then
        if Tasks[i].names[1] = '^' then
        begin
          color1 := copy(Tasks[i].names, 2, 6);
          myFont.Color := HexToInt(color1);
        end
        else
          myFont.Color := clWhite;
      if Tasks[i].names <> '' then
        if Tasks[i].names[1] = '^' then
          name := copy(Tasks[i].names, 8, length(Tasks[i].names) - 7)
        else
          name := Tasks[i].names;
      ListBox1.Items.AddObject(inttostr(Tasks[i].id) + ' - ' + name + ' [' +
        inttostr(Tasks[i].subQuestC) + ']', myFont);
    end;
    Showmessage('Tasks.data успешно загружен! Версия: ' +
      inttostr(version) + '.');

    Button1.Enabled := false;
    sFilenameEdit1.Enabled := false;
    Button3.Enabled := true;
    PageControl1.Enabled := true;
    BitBtn2.Enabled := true;
    BitBtn3.Enabled := true;
    //BitBtn4.Enabled := true;

    case version of
      55:
        ComboBox3.ItemIndex := 0;
      56:
        ComboBox3.ItemIndex := 1;
      93:
        ComboBox3.ItemIndex := 2;
      100:
        ComboBox3.ItemIndex := 3;
      102:
        ComboBox3.ItemIndex := 4;
      103:
        ComboBox3.ItemIndex := 5;
      105:
        ComboBox3.ItemIndex := 6;
      108:
        ComboBox3.ItemIndex := 7;
    end;
    sFilenameEdit1.DialogKind := dkSave;
  end
  else
    Showmessage('Неподдерживаемая версия! (' + inttostr(version) + ')');
  ListBox1.Refresh;
  freeandnil(FontT);
  f.Free;
end;

procedure TForm19.Button2Click(Sender: TObject);
begin
  Form2.ShowMOdal;
end;

procedure TForm19.FormCreate(Sender: TObject);
var
  SaveFile: TIniFile;
  path:string;
begin
   //получаем путь к текущей директории
   GetDir(0,path);
   ListBox1.Color := 2105376;
   ListBox2.Color := 2105376;
   FLbFont := TFont.Create;
   FLbFont.Assign(ListBox1.Canvas.Font);
   FLbF := TFont.Create;
   FLbF.Assign(ListBox2.Canvas.Font);
   SaveFile := TIniFile.Create(path + '\settings.ini');
   sSkinManager1.SkinName := SaveFile.ReadString('LoadOptions', 'SkinName', 'xyz');

   SaveFile.Free;
end;

procedure TForm19.Button3Click(Sender: TObject);
var
  i: Integer;
  t: Integer;
begin
  f := TFileStream.Create(sFilenameEdit1.FileName, fmCreate or fmOpenWrite);
  f.Size := 0;
  f.Write(stamp, 4);
  t := 0;
  f.Write(version, 4);
  f.Write(TaskCount, 4);
  for i := 0 to TaskCount - 1 do
    f.Write(t, 4);
  sProgressBar1.Max := TaskCount - 1;
  for i := 0 to TaskCount - 1 do
  begin
    t := f.Position;
    f.Position := 12 + i * 4;
    f.Write(t, 4);
    f.Position := t;
    saveT(f, Tasks[i], version);
    sProgressBar1.Position := i;
    Application.ProcessMessages;
  end;
  f.Free;
  Showmessage('Успешно сохранено!');
end;

procedure TForm19.Button4Click(Sender: TObject);
begin
  if ListBox4.ItemIndex >= 0 then
  begin
    inc(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answerC);
    setLength(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers, CurrentTask^.conver.Dialogs
      [ListBox3.ItemIndex].questions[ListBox4.ItemIndex].answerC);
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers
      [CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answerC - 1].questionLink := 0;
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers
      [CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answerC - 1].taskLink := 0;
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers
      [CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answerC - 1].answerText := '';
    ListBox4Click(Form19);
  end;
end;

procedure TForm19.Button5Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox4.ItemIndex >= 0 then
  begin
    for i := ListBox5.ItemIndex + 1 to CurrentTask^.conver.Dialogs
      [ListBox3.ItemIndex].questions[ListBox4.ItemIndex].answerC - 1 do
    begin
      CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
        [ListBox4.ItemIndex].answers[i - 1] := CurrentTask^.conver.Dialogs
        [ListBox3.ItemIndex].questions[ListBox4.ItemIndex].answers[i];
    end;
    dec(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answerC);
    setLength(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers, CurrentTask^.conver.Dialogs
      [ListBox3.ItemIndex].questions[ListBox4.ItemIndex].answerC);
    ListBox4Click(Form19);
  end;
end;

procedure TForm19.Button6Click(Sender: TObject);
begin
  if ListBox3.ItemIndex >= 0 then
  begin
    if CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC = 0 then
      CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].dialogText := 'RootNode';
    inc(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC);
    setLength(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions,
      CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC);
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC - 1]
      .questID := 0;
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC - 1]
      .previosQ := -1;
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC - 1]
      .questionText := '';
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC - 1]
      .answerC := 0;
    ListBox3Click(Form19);
  end;
end;

procedure TForm19.Button7Click(Sender: TObject);
var
  i: Integer;
begin
  if ListBox4.ItemIndex >= 0 then
  begin
    for i := ListBox4.ItemIndex + 1 to CurrentTask^.conver.Dialogs
      [ListBox3.ItemIndex].questionC - 1 do
      CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions[i - 1] :=
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions[i];
    dec(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC);
    setLength(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions,
      CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC);
    if CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questionC = 0 then
    begin
      CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].dialogText := '';
      CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].unk := 0;
    end;
  end;
end;

procedure TForm19.ClearListBox(aLb: TListBox);
var
  FontNew: TFont;
  i: Integer;
begin
  for i := 0 to aLb.Items.Count - 1 do
  begin
    FontNew := TFont(aLb.Items.Objects[i]);
    freeandnil(FontNew);
  end;
  aLb.Clear;
end;

procedure TForm19.ComboBox3Change(Sender: TObject);
begin
  version := strtoint(ComboBox3.Text);
end;

procedure TForm19.QuestNameExit(Sender: TObject);
begin
  setParam;
end;

procedure TForm19.Edit3Exit(Sender: TObject);
begin
  if ListBox3.ItemIndex >= 0 then
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].unk := strtoint(Edit3.Text);
end;

procedure TForm19.Edit4Exit(Sender: TObject);
begin
  setQuestion;
end;

procedure TForm19.Edit6Exit(Sender: TObject);
begin
  setAnswer;
end;

procedure TForm19.FormDestroy(Sender: TObject);
begin
  ClearListBox(ListBox1);
  freeandnil(FLbFont);
  ClearListBox(ListBox2);
  freeandnil(FLbF);
end;

procedure TForm19.refreshChildTask;
var
  i: Integer;
  FontT, myFont: TFont;
  myColor: TColor;
  tTask: Task;
  color1, name: string;
begin
  FontT := TFont.Create;
  FontT.Charset := GB2312_CHARSET;
  FontT.Size := 8;
  FontT.name := 'Microsoft Sans Serif';
  FontT.Style := [fsBold];
  ListBox2.Clear;
  for i := 0 to ParentTask[length(ParentTask) - 1]^.subQuestC - 1 do
  begin
    tTask := ParentTask[length(ParentTask) - 1]^.subQuests[i];
    myFont := TFont.Create;
    myFont.Assign(FontT);
    if tTask.names <> '' then
      if tTask.names[1] = '^' then
      begin
        color1 := copy(tTask.names, 2, 6);
        myFont.Color := HexToInt(color1);
      end
      else
        myFont.Color := clWhite;
    if tTask.names <> '' then
      if tTask.names[1] = '^' then
        name := copy(tTask.names, 8, length(tTask.names) - 7)
      else
        name := tTask.names;
    ListBox2.Items.AddObject(inttostr(tTask.id) + ' - ' + name + ' [' +
      inttostr(tTask.subQuestC) + ']', myFont);
  end;
  ListBox2.Refresh;
  freeandnil(FontT);
end;

procedure TForm19.refreshWorkPanel;
var
  tTask: Task;
begin
  tTask := CurrentTask^;
  if tTask.names[1] = '^' then
  begin
    QuestName.Text := copy(tTask.names, 8, length(tTask.names) - 7);
    sColorSelect1.ColorValue := HexToInt(copy(tTask.names, 2, 6));
  end
  else
  begin
    QuestName.Text := tTask.names;
    sColorSelect1.ColorValue := $FFFFFF;
  end;
  Memo1.Text := tTask.conver.promtText;
  Memo2.Text := tTask.conver.genText;
  ListBox3.ItemIndex := -1;
  Edit3.Text := '';
  CheckBox1.Checked := false;
  ComboBox3.Enabled := false;
  CheckBox3.Checked := false;
  CheckBox10.Checked := false;
  ComboBox4.Style := csDropDown;
  ListBox4.Clear;
  ListBox5.Clear;
  Memo3.Text := '';
  Memo4.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  Edit7.Text := '';
  ComboBox1.ItemIndex := -1;
  ComboBox2.ItemIndex := tTask.qtype;
  ComboBox4.ItemIndex := tTask.unk8;
  ComboBox5.ItemIndex := tTask.reqForce;
  ComboBox6.ItemIndex := tTask.reqCult;
  ComboBox7.ItemIndex := tTask.reqGend;
  ComboBox8.ItemIndex := tTask.reqSuccesType;
  ComboBox9.ItemIndex := tTask.reqNPCType;
  ComboBox10.ItemIndex := tTask.reqWaitTime;
  Edit8.Text := inttostr(tTask.id);
  Edit9.Text := tTask.authorText;
  Edit11.Text := inttostr(tTask.timelim);
  Edit13.Text := inttostr(tTask.qNPC);
  Edit14.Text := inttostr(tTask.rNPC);
  Edit15.Text := inttostr(tTask.unk9);
  Edit16.Text := inttostr(tTask.parQ);
  Edit17.Text := inttostr(tTask.prevQ);
  Edit18.Text := inttostr(tTask.nextQ);
  Edit19.Text := inttostr(tTask.subQFirst);
  Edit20.Text := inttostr(tTask.aiTrigger);
  Edit21.Text := inttostr(tTask.datespanc);
  Edit22.Text := inttostr(tTask.unk1);
  Edit23.Text := inttostr(tTask.unk2);
  Edit24.Text := inttostr(tTask.unk3);
  Edit25.Text := inttostr(tTask.unk4);
  Edit26.Text := inttostr(tTask.unk5);
  Edit27.Text := inttostr(tTask.unk6);
  Edit28.Text := inttostr(tTask.lvlmin);
  Edit29.Text := inttostr(tTask.lvlmax);
  Edit44.Text := inttostr(tTask.reqPrestige);
  Edit45.Text := inttostr(tTask.reqInfluence);
  CheckBox2.Checked := tTask.offail;
  CheckBox3.Checked := tTask.datefailb;
  CheckBox4.Checked := tTask.itemfail;
  CheckBox5.Checked := tTask.hasdatespan;
  CheckBox6.Checked := tTask.unk10;
  CheckBox7.Checked := tTask.unk11;
  CheckBox8.Checked := tTask.unk12;
  CheckBox9.Checked := tTask.unk13;
  CheckBox10.Checked := tTask.unk14;
  CheckBox11.Checked := tTask.unk15;
  CheckBox12.Checked := tTask.unk16;
  CheckBox13.Checked := tTask.afsq;
  CheckBox14.Checked := tTask.arsq;
  CheckBox15.Checked := tTask.ansq;
  sSpinEdit1.Text := inttostr(tTask.reqCraft[0]);
  sSpinEdit2.Text := inttostr(tTask.reqCraft[1]);
  sSpinEdit3.Text := inttostr(tTask.reqCraft[2]);
  sSpinEdit4.Text := inttostr(tTask.reqCraft[3]);
end;

procedure TForm19.sColorSelect1Change(Sender: TObject);
begin
  setParam;
end;

procedure TForm19.setAnswer;
begin
  if ListBox5.ItemIndex >= 0 then
  begin
    case ComboBox1.ItemIndex of
      0:
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
          [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink :=
          -2147483642;
      1:
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
          [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink :=
          -2147483641;
      2:
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
          [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink :=
          -2147483648;
      3:
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
          [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink :=
          -2147483630;
      4:
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
          [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink :=
          -2147483627;
      5:
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
          [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink :=
          -2147483631;
      6:
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
          [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink :=
          -2147483640;
      7:
        CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
          [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink :=
          strtoint(Edit6.Text);
    end;
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].answerText := Memo4.Text;
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].taskLink :=
      strtoint(Edit7.Text);
    ListBox5Click(Form19);
  end;
end;

procedure TForm19.setParam;
var
  teFont, f1: TFont;
  name: string;
begin
  if CurrentTask <> nil then
  begin
    f1 := TFont.Create;
    if sColorSelect1.ColorValue <> $FFFFFF then
      CurrentTask^.names := '^' + IntToHex(sColorSelect1.ColorValue mod 256, 2)
        + IntToHex(sColorSelect1.ColorValue mod 65536 div 256, 2) +
        IntToHex(sColorSelect1.ColorValue div 65536, 2) + QuestName.Text;
    CurrentTask^.conver.promtText := Memo1.Text;
    CurrentTask^.conver.genText := Memo2.Text;
    CurrentTask^.id := strtoint(Edit8.Text);
    CurrentTask^.qtype := ComboBox2.ItemIndex;
    CurrentTask^.unk8 := ComboBox4.ItemIndex;
    CurrentTask^.reqForce := ComboBox5.ItemIndex;
    CurrentTask^.reqCult := ComboBox6.ItemIndex;
    CurrentTask^.reqGend := ComboBox7.ItemIndex;
    CurrentTask^.reqSuccesType := ComboBox8.ItemIndex;
    CurrentTask^.reqNPCType := ComboBox9.ItemIndex;
    CurrentTask^.reqWaitTime := ComboBox10.ItemIndex;
    CurrentTask^.authorText := Edit9.Text;
    if CurrentTask^.authorText <> '' then
      CurrentTask^.amode := true
    else
      CurrentTask^.amode := false;
    CurrentTask^.timelim := strtoint(Edit11.Text);
    CurrentTask^.qNPC := strtoint(Edit13.Text);
    CurrentTask^.rNPC := strtoint(Edit14.Text);
    CurrentTask^.unk9 := strtoint(Edit15.Text);
    CurrentTask^.parQ := strtoint(Edit16.Text);
    CurrentTask^.prevQ := strtoint(Edit17.Text);
    CurrentTask^.nextQ := strtoint(Edit18.Text);
    CurrentTask^.subQFirst := strtoint(Edit19.Text);
    CurrentTask^.aiTrigger := strtoint(Edit20.Text);
    CurrentTask^.datespanc := strtoint(Edit21.Text);
    CurrentTask^.unk1 := strtoint(Edit22.Text);
    CurrentTask^.unk2 := strtoint(Edit23.Text);
    CurrentTask^.unk3 := strtoint(Edit24.Text);
    CurrentTask^.unk4 := strtoint(Edit25.Text);
    CurrentTask^.unk5 := strtoint(Edit26.Text);
    CurrentTask^.unk6 := strtoint(Edit27.Text);
    CurrentTask^.lvlmin := strtoint(Edit28.Text);
    CurrentTask^.lvlmax := strtoint(Edit29.Text);
    CurrentTask^.reqPrestige := strtoint(Edit44.Text);
    CurrentTask^.reqInfluence := strtoint(Edit45.Text);
    CurrentTask^.offail := CheckBox2.Checked;
    CurrentTask^.datefailb := CheckBox3.Checked;
    CurrentTask^.itemfail := CheckBox4.Checked;
    CurrentTask^.hasdatespan := CheckBox5.Checked;
    CurrentTask^.unk11 := CheckBox6.Checked;
    CurrentTask^.unk12 := CheckBox7.Checked;
    CurrentTask^.unk13 := CheckBox8.Checked;
    CurrentTask^.unk14 := CheckBox9.Checked;
    CurrentTask^.unk15 := CheckBox10.Checked;
    CurrentTask^.unk16 := CheckBox11.Checked;
    CurrentTask^.afsq := CheckBox13.Checked;
    CurrentTask^.arsq := CheckBox14.Checked;
    CurrentTask^.ansq := CheckBox15.Checked;
    teFont := TFont.Create;
    teFont.Assign(f1);
    teFont.Size := 8;
    teFont.Style := [fsBold];
    teFont.name := 'Microsoft Sans Serif';
    teFont.Charset := GB2312_CHARSET;
    teFont.Color := sColorSelect1.ColorValue;
    if length(ParentTask) = 0 then
    begin
      ListBox1.Items.Objects[ListBox1.ItemIndex] := teFont;
      ListBox1.Refresh;
      ListBox1.Items.Strings[ListBox1.ItemIndex] := inttostr(CurrentTask^.id) +
        ' - ' + QuestName.Text + ' [' + inttostr(CurrentTask^.subQuestC) + ']';
    end
    else
    begin
      ListBox2.Items.Objects[ListBox2.ItemIndex] := teFont;
      ListBox2.Refresh;
      ListBox2.Items.Strings[ListBox2.ItemIndex] := inttostr(CurrentTask^.id) +
        ' - ' + QuestName.Text + ' [' + inttostr(CurrentTask^.subQuestC) + ']';
    end;
    freeandnil(f1);
  end;
end;

procedure TForm19.setQuestion;
begin
  if ListBox4.ItemIndex >= 0 then
  begin
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].questID := strtoint(Edit4.Text);
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].previosQ := strtoint(Edit5.Text);
    CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].questionText := Memo3.Text;
    ListBox4.Items.Strings[ListBox4.ItemIndex] := 'Реплика ' +
      inttostr(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].questID);
  end;
end;

procedure TForm19.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex >= 0 then
    CurrentTask := @Tasks[ListBox1.ItemIndex]
  else
    CurrentTask := nil;
  refreshWorkPanel;
end;

procedure TForm19.ListBox1DblClick(Sender: TObject);
begin
  setLength(ParentTask, 1);
  ParentTask[0] := @Tasks[ListBox1.ItemIndex];
  ListBox1.Visible := false;
  ListBox2.Visible := true;
  BitBtn1.Visible := true;
  refreshChildTask;
end;

procedure TForm19.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  Lb: TListBox;
  FontNew: TFont;
begin
  Lb := Control as TListBox;
  FontNew := TFont(Lb.Items.Objects[Index]);
  if FontNew <> nil then
  begin
    Lb.Canvas.Font.Assign(FontNew);
    if odSelected in State then
      Lb.Canvas.Font.Color := clWhite;
    Lb.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Lb.Items[index]);
    Lb.Canvas.Font.Assign(FLbFont);
  end;
end;

procedure TForm19.ListBox2Click(Sender: TObject);
begin
  if ListBox2.ItemIndex >= 0 then
    CurrentTask := @ParentTask[high(ParentTask)].subQuests
      [ListBox2.ItemIndex]
  else
    CurrentTask := nil;
  refreshWorkPanel;
end;

procedure TForm19.ListBox2DblClick(Sender: TObject);
begin
  setLength(ParentTask, length(ParentTask) + 1);
  ParentTask[length(ParentTask) - 1] := @ParentTask[length(ParentTask) - 2]
    ^.subQuests[ListBox2.ItemIndex];
  refreshChildTask;
end;

procedure TForm19.ListBox2DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  Lb: TListBox;
  FontNew: TFont;
begin
  Lb := Control as TListBox;
  FontNew := TFont(Lb.Items.Objects[Index]);
  if FontNew <> nil then
  begin
    Lb.Canvas.Font.Assign(FontNew);
    if odSelected in State then
      Lb.Canvas.Font.Color := clWhite;
    Lb.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Lb.Items[Index]);
    Lb.Canvas.Font.Assign(FLbF);
  end;
end;


procedure TForm19.ListBox3Click(Sender: TObject);
var
  i: Integer;
begin
  if (CurrentTask <> nil) and (ListBox3.ItemIndex >= 0) then
  begin
    ListBox4.Clear;
    ListBox5.Clear;
    Memo3.Clear;
    Memo4.Clear;
    Edit4.Text := '';
    Edit5.Text := '';
    Edit6.Text := '';
    Edit7.Text := '';
    ComboBox1.ItemIndex := -1;
    if CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].dialogText = 'RootNode'
    then
      CheckBox1.Checked := true
    else
      CheckBox1.Checked := false;
    Edit1.Text := inttostr(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].unk);
    for i := 0 to CurrentTask^.conver.Dialogs[ListBox3.ItemIndex]
      .questionC - 1 do
      ListBox4.Items.Add('Реплика ' + inttostr(CurrentTask^.conver.Dialogs
        [ListBox3.ItemIndex].questions[i].questID));
  end;
end;

procedure TForm19.ListBox4Click(Sender: TObject);
var
  i: Integer;
begin
  if (CurrentTask <> nil) and (ListBox4.ItemIndex >= 0) then
  begin
    ListBox5.Clear;
    Memo4.Clear;
    Edit6.Text := '';
    Edit7.Text := '';
    ComboBox1.ItemIndex := -1;
    Memo3.Text := CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].questionText;
    Edit4.Text := inttostr(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex]
      .questions[ListBox4.ItemIndex].questID);
    Edit5.Text := inttostr(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex]
      .questions[ListBox4.ItemIndex].previosQ);
    for i := 0 to CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answerC - 1 do
      ListBox5.Items.Add('Ответ №' + inttostr(i + 1));
  end;
end;

procedure TForm19.ListBox5Click(Sender: TObject);
begin
  if (CurrentTask <> nil) and (ListBox5.ItemIndex >= 0) then
  begin

    Memo4.Text := CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].answerText;
    Edit6.Text := inttostr(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex]
      .questions[ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink);
    Edit7.Text := inttostr(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex]
      .questions[ListBox4.ItemIndex].answers[ListBox5.ItemIndex].taskLink);

    Edit6.Visible := false;
    ComboBox1.Width := 143;
    Edit6.Text := '0';
    case CurrentTask^.conver.Dialogs[ListBox3.ItemIndex].questions
      [ListBox4.ItemIndex].answers[ListBox5.ItemIndex].questionLink of
      - 2147483642:
        ComboBox1.ItemIndex := 0;
      -2147483641:
        ComboBox1.ItemIndex := 1;
      -2147483648:
        ComboBox1.ItemIndex := 2;
      -2147483630:
        ComboBox1.ItemIndex := 3;
      -2147483627:
        ComboBox1.ItemIndex := 4;
      -2147483631:
        ComboBox1.ItemIndex := 5;
      -2147483640:
        ComboBox1.ItemIndex := 6;
      0 .. 2147483647:
        begin
          ComboBox1.Width := 103;
          ComboBox1.ItemIndex := 7;
          Edit6.Visible := true;
          Edit6.Text := inttostr(CurrentTask^.conver.Dialogs[ListBox3.ItemIndex]
            .questions[ListBox4.ItemIndex].answers[ListBox5.ItemIndex]
            .questionLink);
        end;
    end;
  end;
end;

procedure TForm19.TreeView1AdvancedCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
  var PaintImages, DefaultDraw: Boolean);
var
  color1: string;
  myColor: Integer;
begin
  Application.ProcessMessages;
  color1 := Tasks[Node.Index].names;
  if color1[1] = '^' then
  begin
    color1 := copy(color1, 2, 6);
    myColor := HexToInt(color1);
  end
  else
    myColor := clBlack;
  Sender.Canvas.Font.Color := myColor;
end;

end.
