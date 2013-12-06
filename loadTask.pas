unit loadTask;

interface

uses System.SysUtils, System.Classes, struct;

function loadT(f: TStream; offset: integer; version: integer): Task;

implementation

function decrypt(id: integer; name: array of byte): string;
var
  res: array of byte;
  res1: string;
  i: integer;
begin
  setlength(res, length(name));
  setlength(res1, length(name) div 2);
  i := 0;
  while i < length(name) do
  begin
    res[i] := (id mod 256) xor name[i];
    res[i + 1] := (id div 256) xor name[i + 1];
    i := i + 2;
  end;
  move(res[0], res1[1], length(name));
  if pos(chr(0),res1)>0 then
  setlength(res1, pos(chr(0), res1));
  decrypt := trim(res1);
end;

function ReadDate(f: TStream; version: integer): TDate;
var
  ReadD: TDate;
begin
  f.Read(ReadD.year, 4);
  f.Read(ReadD.month, 4);
  f.Read(ReadD.day, 4);
  f.Read(ReadD.hour, 4);
  f.Read(ReadD.min, 4);
  f.Read(ReadD.week, 4);
  ReadDate := ReadD;
end;

function ReadLoc(f: TStream; version: integer): Loc;
var
  tLoc: Loc;
begin
  f.Read(tLoc.mapId, 4);
  f.Read(tLoc.x, 4);
  f.Read(tLoc.y, 4);
  f.Read(tLoc.z, 4);
  ReadLoc := tLoc;
end;

function ReadDateSpan(f: TStream; version: integer): DateSpan;
begin
  ReadDateSpan.fromdate := ReadDate(f, version);
  ReadDateSpan.todate := ReadDate(f, version);
end;

function ReadSpan(f: TStream; version: integer): Span;
var
  tSpan: Span;
begin
  f.Read(tSpan.east, 4);
  f.Read(tSpan.bottom, 4);
  f.Read(tSpan.south, 4);
  f.Read(tSpan.west, 4);
  f.Read(tSpan.top, 4);
  f.Read(tSpan.north, 4);
  ReadSpan := tSpan;
end;

function ReadItem(f: TStream; version: integer): Item;
var
  tItem: Item;
begin
  f.Read(tItem.id, 4);
  f.Read(tItem.unk, 1);
  f.Read(tItem.amount, 4);
  f.Read(tItem.prob, 4);
  if version >= 89 then
    f.Read(tItem.time, 4)
  else
    tItem.time := 0;
  ReadItem := tItem;
end;

function ReadTeamReq(f: TStream; version: integer): TeamMember;
var
  tTeam: TeamMember;
begin
  f.Read(tTeam.lvlmin, 4);
  f.Read(tTeam.lvlmax, 4);
  f.Read(tTeam.race, 4);
  f.Read(tTeam.occupation, 4);
  f.Read(tTeam.gender, 4);
  f.Read(tTeam.amountMin, 4);
  f.Read(tTeam.amountMax, 4);
  f.Read(tTeam.quest, 4);
  if version >= 100 then
    f.Read(tTeam.force, 4)
  else
    tTeam.force := 0;
  ReadTeamReq := tTeam;
end;

function ReadChase(f: TStream; version: integer): Chase;
var
  tChase: Chase;
begin
  f.Read(tChase.idmon, 4);
  f.Read(tChase.amountmon, 4);
  f.Read(tChase.iddrop, 4);
  f.Read(tChase.amountdrop, 4);
  f.Read(tChase.common, 1);
  f.Read(tChase.prob, 4);
  f.Read(tChase.killerlvl, 1);
  if version >= 92 then
  begin
    f.Read(tChase.dph, 4);
    f.Read(tChase.dps, 4);
  end
  else
  begin
    tChase.dph := 0;
    tChase.dps := 0;
  end;
  ReadChase := tChase;
end;

function ReadItemGroup(f: TStream; version: integer): ItemGroup;
var
  tItemG: ItemGroup;
  i: integer;
begin
  f.Read(tItemG.unk, 1);
  f.Read(tItemG.itemC, 4);
  setlength(tItemG.items, tItemG.itemC);
  for i := 0 to tItemG.itemC - 1 do
    tItemG.items[i] := ReadItem(f, version);
  ReadItemGroup := tItemG;
end;

function ReadReward(f: TStream; version: integer): Reward;
var
  tReward: Reward;
  i: integer;
begin
  f.Read(tReward.coins, 4);
  f.Read(tReward.exp, 4);
  f.Read(tReward.newquest, 4);
  f.Read(tReward.sp, 4);
  f.Read(tReward.rep, 4);
  f.Read(tReward.cult, 4);
  f.Read(tReward.tpPoint, 4);
  f.Read(tReward.bankSlot, 4);
  if version >= 89 then
  begin
    f.Read(tReward.cupboardSlot, 4);
    f.Read(tReward.wardrobeSlot, 4);
    f.Read(tReward.accBankSlot, 4);
  end
  else
  begin
    tReward.cupboardSlot := 0;
    tReward.wardrobeSlot := 0;
    tReward.accBankSlot := 0;
  end;
  f.Read(tReward.invSlot, 4);
  f.Read(tReward.petSlot, 4);
  f.Read(tReward.chi, 4);
  tReward.tp := ReadLoc(f, version);
  f.Read(tReward.ai, 4);
  f.Read(tReward.unk2[0], 3);
  if version > 55 then
    f.Read(tReward.unk2[3], 5)
  else
    for i := 3 to 7 do
      tReward.unk2[3] := 0;
  f.Read(tReward.itemGroupC, 4);
  setlength(tReward.itemGroups, tReward.itemGroupC);
  f.Read(tReward.seperator, 4);
  if version >= 89 then
  begin
    f.Read(tReward.pq.chasesC, 4);
    setlength(tReward.pq.chases, tReward.pq.chasesC);
    f.Read(tReward.pq.unk0[0], 6);
    f.Read(tReward.pq.eventG, 4);
    f.Read(tReward.pq.unk1[0], 9);
    f.Read(tReward.pq.unkQ, 4);
    f.Read(tReward.pq.unk2, 4);
    f.Read(tReward.pq.unklvl, 4);
    f.Read(tReward.pq.contrMin, 4);
    f.Read(tReward.pq.contrMax, 4);
    f.Read(tReward.pq.contrReq, 4);
    f.Read(tReward.pq.clanhollP1, 4);
    f.Read(tReward.pq.clanhollP2, 4);
    f.Read(tReward.pq.itemC, 4);
    setlength(tReward.pq.items, tReward.pq.itemC);
    f.Read(tReward.pq.unk4, 4);
    f.Read(tReward.pq.specialC, 4);
    setlength(tReward.pq.special, tReward.pq.specialC);
    f.Read(tReward.pq.unk5[0], 29);
    f.Read(tReward.pq.scriptC, 4);
    setlength(tReward.pq.scriptsb, tReward.pq.scriptC);
    f.Read(tReward.pq.unk6_1, 4);
    f.Read(tReward.pq.unk6_2, 4);
    f.Read(tReward.pq.messageC, 4);
    setlength(tReward.pq.messageb, tReward.pq.messageC);
    setlength(tReward.pq.messages, tReward.pq.messageC);
    f.Read(tReward.pq.unk7, 4);
  end
  else
  begin
    tReward.pq.chasesC := 0;
    for i := 0 to 5 do
      tReward.pq.unk0[i] := 0;
    tReward.pq.eventG := 0;
    for i := 0 to 8 do
      tReward.pq.unk1[i] := 0;
    tReward.pq.unkQ := 0;
    tReward.pq.unk2 := 0;
    tReward.pq.unklvl := 0;
    tReward.pq.contrMin := 0;
    tReward.pq.contrMax := 0;
    tReward.pq.contrReq := 0;
    tReward.pq.clanhollP1 := 0;
    tReward.pq.clanhollP2 := 0;
    tReward.pq.itemC := 0;
    tReward.pq.unk4 := 0;
    tReward.pq.specialC := 0;
    for i := 0 to 28 do
      tReward.pq.unk5[i] := 0;
    tReward.pq.scriptC := 0;
    tReward.pq.unk6_1 := 0;
    tReward.pq.unk6_2 := 0;
    tReward.pq.messageC := 0;
    tReward.pq.unk7 := 0;
  end;
  if version >= 100 then
  begin
    f.Read(tReward.influence, 4);
    f.Read(tReward.prestige, 4);
    f.Read(tReward.unk5, 4);
    f.Read(tReward.unk6, 4);
  end
  else
  begin
    tReward.influence := 0;
    tReward.prestige := 0;
    tReward.unk5 := 0;
    tReward.unk6 := 0;
  end;
  if version >= 102 then
    f.Read(tReward.questSlot, 4)
  else
    tReward.questSlot := 0;
  tReward.pq.chaseUnk1 := false;
  tReward.pq.chaseUnk2 := 0;
  tReward.pq.chaseUnk3 := false;
  tReward.pq.itemUnk := false;
  for i := 0 to tReward.itemGroupC - 1 do
    tReward.itemGroups[i] := ReadItemGroup(f, version);
  if tReward.pq.chasesC > 0 then
  begin
    f.Read(tReward.pq.chaseUnk1, 1);
    f.Read(tReward.pq.chaseUnk2, 4);
    f.Read(tReward.pq.chaseUnk3, 1);
    for i := 0 to tReward.pq.chasesC - 1 do
    begin
      f.Read(tReward.pq.chases[i].idmon, 4);
      f.Read(tReward.pq.chases[i].amount1, 4);
      f.Read(tReward.pq.chases[i].contr, 4);
      f.Read(tReward.pq.chases[i].amount2, 4);
    end;
  end;
  if tReward.pq.itemC > 0 then
  begin
    f.Read(tReward.pq.itemUnk, 1);
    for i := 0 to tReward.pq.itemC - 1 do
    begin
      f.Read(tReward.pq.items[i].rankFrom, 4);
      f.Read(tReward.pq.items[i].rankTo, 4);
      f.Read(tReward.pq.items[i].unk, 1);
      f.Read(tReward.pq.items[i].id, 4);
      f.Read(tReward.pq.items[i].amount, 4);
      f.Read(tReward.pq.items[i].prob, 4);
    end;
  end;
  for i := 0 to tReward.pq.specialC - 1 do
  begin
    f.Read(tReward.pq.special[i].idPQ, 4);
    f.Read(tReward.pq.special[i].unk2, 4);
    f.Read(tReward.pq.special[i].unk3, 1);
  end;
  for i := 0 to tReward.pq.scriptC - 1 do
    f.Read(tReward.pq.scriptsb[i][0], 576);
  for i := 0 to tReward.pq.messageC - 1 do
  begin
    f.Read(tReward.pq.messageb[i][0], 128);
  end;
  ReadReward := tReward;
end;

function loadT(f: TStream; offset: integer; version: integer): Task;
var
  i, j, h: integer;
  load: Task;
  n: boolean;
begin
  f.Position := offset;
  f.Read(load.id, 4);
  f.Read(load.nameb[0], 60);
  load.names := decrypt(load.id, load.nameb);
  f.Read(load.amode, 1);
  f.Read(load.amodeoff, 4);
  f.Read(load.qtype, 4);
  f.Read(load.timelim, 4);
  if version >= 89 then
  begin
    f.Read(load.offail, 1);
    f.Read(load.datefailb, 1);
    load.datefail := ReadDate(f, version);
    f.Read(load.itemfail, 1);
  end
  else
  begin
    load.offail := false;
    load.datefailb := false;
    load.datefail.year := 0;
    load.datefail.month := 0;
    load.datefail.day := 0;
    load.datefail.hour := 0;
    load.datefail.min := 0;
    load.datefail.week := 0;
    load.itemfail := false;
  end;
  f.Read(load.hasdatespan, 1);
  f.Read(load.datespanc, 4);
  setlength(load.DateSpan, load.datespanc);
  f.Read(load.timetype, 4);
  f.Read(load.unk1, 4);
  f.Read(load.unk2, 4);
  if version >= 89 then
  begin
    f.Read(load.unk3, 4);
    f.Read(load.unk4, 4);
    f.Read(load.unk5, 4);
  end
  else
  begin
    load.unk3 := 0;
    load.unk4 := 0;
    load.unk5 := 0;
  end;
  f.Read(load.unk6, 4);
  f.Read(load.unk7, 4);
  f.Read(load.unk8, 4);
  if version >= 89 then
    f.Read(load.unk9, 4)
  else
    load.unk9 := 0;
  f.Read(load.afsq, 1);
  f.Read(load.arsq, 1);
  f.Read(load.ansq, 1);
  f.Read(load.opf, 1);
  f.Read(load.ps, 1);
  f.Read(load.cgu, 1);
  f.Read(load.rep, 1);
  f.Read(load.repAF, 1);
  f.Read(load.fon, 1);
  f.Read(load.ofpf, 1);
  f.Read(load.unkbool, 1);
  f.Read(load.playlim, 4);
  if version >= 89 then
  begin
    f.Read(load.triggerLoc.hasLoc, 1);
    f.Read(load.triggerLoc.mapId, 4);
    f.Read(load.triggerLoc.count, 4);
    setlength(load.triggerLoc.spans, load.triggerLoc.count);
    f.Read(load.triggerLoc.unk, 4);
    f.Read(load.failLoc.hasLoc, 1);
    f.Read(load.failLoc.mapId, 4);
    f.Read(load.failLoc.count, 4);
    setlength(load.failLoc.spans, load.failLoc.count);
    f.Read(load.failLoc.unk, 4);
    f.Read(load.validLoc.hasLoc, 1);
    f.Read(load.validLoc.mapId, 4);
    f.Read(load.validLoc.count, 4);
    setlength(load.validLoc.spans, load.validLoc.count);
    f.Read(load.validLoc.unk, 4);
  end
  else
  begin
    f.Read(load.triggerLoc.hasLoc, 1);
    f.Read(load.triggerLoc.mapId, 4);
    load.triggerLoc.count := 1;
    setlength(load.triggerLoc.spans, load.triggerLoc.count);
    load.triggerLoc.spans[0] := ReadSpan(f, version);
    load.triggerLoc.unk := 0;
    load.failLoc.hasLoc := false;
    load.failLoc.mapId := 0;
    load.failLoc.count := 0;
    load.failLoc.unk := 0;
    load.validLoc.hasLoc := false;
    load.validLoc.mapId := 0;
    load.validLoc.count := 0;
    load.validLoc.unk := 0;
  end;
  if version >= 100 then
    f.Read(load.unk10, 1)
  else
    load.unk10 := false;
  f.Read(load.hasInstTP, 1);
  load.instTP := ReadLoc(f, version);
  f.Read(load.aiTrigger, 4);
  f.Read(load.unk11, 1);
  f.Read(load.unk12, 1);
  f.Read(load.unk13, 1);
  if version >= 89 then
  begin
    f.Read(load.unk14, 1);
    f.Read(load.unk15, 1);
  end
  else
  begin
    load.unk14 := false;
    load.unk15 := false;
  end;
  f.Read(load.unk16, 1);
  f.Read(load.unklevel, 4);
  f.Read(load.markAvIc, 1);
  f.Read(load.markAvP, 1);
  f.Read(load.qNPC, 4);
  f.Read(load.rNPC, 4);
  f.Read(load.craftSkill, 1);
  f.Read(load.unk17, 1);
  f.Read(load.unk18, 1);
  f.Read(load.unk19, 1);
  if version >= 89 then
  begin
    f.Read(load.pq.scriptInfC, 4);
    f.Read(load.pq.unkb[0], 12);
    f.Read(load.pq.unki[0], 4);
    f.Read(load.pq.unkb[12], 15);
    f.Read(load.pq.scriptC, 4);
    f.Read(load.pq.unk4[0], 8);
    f.Read(load.pq.unkb[27], 2);
    f.Read(load.pq.chaseC, 4);
    f.Read(load.pq.unk7, 4);
    f.Read(load.pq.reqQuestCompl, 4);
    f.Read(load.pq.unkb[29], 1);
    if version >= 92 then
      f.Read(load.pq.unkb[30], 5)
    else
      for i := 30 to 34 do
        load.pq.unkb[i] := 0;
    f.Read(load.pq.unkb[35], 5);
  end
  else
  begin
    load.pq.scriptInfC := 0;
    for i := 0 to 39 do
      load.pq.unkb[i] := 0;
    load.pq.unki[0] := 0;
    load.pq.scriptC := 0;
    for i := 0 to 1 do
      load.pq.unk4[i] := 0;
    load.pq.chaseC := 0;
    load.pq.unk7 := 0;
    load.pq.reqQuestCompl := 0;
  end;
  setlength(load.pq.scriptInf, load.pq.scriptInfC);
  setlength(load.pq.scripts, load.pq.scriptC);
  setlength(load.pq.Chase, load.pq.chaseC);
  if version >= 100 then
  begin
    f.Read(load.unk20, 1);
    f.Read(load.unk21, 1);
  end
  else
  begin
    load.unk20 := 0;
    load.unk21 := 0;
  end;
  f.Read(load.lvlmin, 4);
  f.Read(load.lvlmax, 4);
  f.Read(load.unk22, 1);
  f.Read(load.reqItemC, 4);
  f.Read(load.reqItemOff, 4);
  setlength(load.reqItem, load.reqItemC);
  f.Read(load.unk23, 1);
  if version >= 100 then
    f.Read(load.unk24, 1)
  else
    load.unk24 := false;
  f.Read(load.givenItemC, 4);
  setlength(load.givenItem, load.givenItemC);
  f.Read(load.unk25, 4);
  f.Read(load.unk26, 4);
  f.Read(load.givenItemOff, 4);
  f.Read(load.paid, 4);
  f.Read(load.unk27, 1);
  f.Read(load.reqRep, 4);
  f.Read(load.unkOff, 4);
  f.Read(load.unk28, 1);
  f.Read(load.reqQuestDoneC, 4);
  for i := 0 to 4 do
    f.Read(load.reqQuestDone[i], 4);
  if version >= 90 then
    f.Read(load.unk29[0], 60)
  else
    for i := 0 to 59 do
      load.unk29[i] := 0;
  f.Read(load.unk30, 1);
  if version >= 90 then
    f.Read(load.unk31, 4)
  else
    load.unk31 := 0;
  f.Read(load.reqCult, 4);
  f.Read(load.unk32[0], 5);
  if version >= 93 then
    f.Read(load.unk33, 4)
  else
    load.unk33 := 0;
  f.Read(load.unk34, 1);
  f.Read(load.reqGend, 4);
  f.Read(load.unk35, 1);
  f.Read(load.reqOccupC, 4);
  if version >= 89 then
    for i := 0 to 9 do
      f.Read(load.reqOccup[i], 4)
  else
    for i := 0 to 7 do
      f.Read(load.reqOccup[i], 4);
  f.Read(load.unk36, 1);
  f.Read(load.reqMarried, 1);
  f.Read(load.unk37, 1);
  if version >= 102 then
  begin
    f.Read(load.unk37_1, 1);
    f.Read(load.unk37_2, 1);
  end
  else
  begin
    load.unk37_1 := false;
    load.unk37_2 := false;
  end;
  f.Read(load.reqGM, 1);
  f.Read(load.unk38, 1);
  if version >= 89 then
  begin
    f.Read(load.unk39[0], 19);
    load.dateUnk := ReadDate(f, version);
    f.Read(load.unk40, 4);
    f.Read(load.unk41, 1);
  end
  else
  begin
    for i := 0 to 18 do
      load.unk39[i] := 0;
    load.dateUnk.year := 0;
    load.dateUnk.month := 0;
    load.dateUnk.day := 0;
    load.dateUnk.hour := 0;
    load.dateUnk.min := 0;
    load.dateUnk.week := 0;
    load.unk40 := 0;
    load.unk41 := false;
  end;
  f.Read(load.unk42[0], 7);
  f.Read(load.reqUndoneQuestC, 4);
  for i := 0 to 4 do
    f.Read(load.reqUndoneQuest[i], 4);
  for i := 0 to 3 do
    f.Read(load.reqCraft[i], 4);
  f.Read(load.unk43[0], 32);
  if version >= 89 then
    f.Read(load.unk43[32], 3)
  else
    for i := 32 to 34 do
      load.unk43[i] := 0;
  f.Read(load.reqTeamMemberC, 4);
  setlength(load.reqTeamMember, load.reqTeamMemberC);
  f.Read(load.unk44, 4);
  f.Read(load.unk45, 1);
  if version >= 89 then
  begin
    f.Read(load.unk46[0], 9);
    f.Read(load.resPQAuditID, 4);
    f.Read(load.unk47, 4);
    f.Read(load.unk48, 4);
    f.Read(load.reqPQContr, 4);
    f.Read(load.unk49[0], 20);
  end
  else
  begin
    for i := 0 to 8 do
      load.unk46[i] := 0;
    load.resPQAuditID := 0;
    load.unk47 := 0;
    load.unk48 := 0;
    load.reqPQContr := 0;
    for i := 0 to 19 do
      load.unk49[i] := 0;
  end;
  if version >= 100 then
  begin
    f.Read(load.unk50, 1);
    f.Read(load.reqForce, 4);
    f.Read(load.unk51, 1);
    f.Read(load.reqPrestige, 4);
    f.Read(load.unk52, 1);
    f.Read(load.reqInfluence, 4);
    f.Read(load.unk53[0], 16);
  end
  else
  begin
    load.unk50 := false;
    load.reqForce := 0;
    load.unk51 := false;
    load.reqPrestige := 0;
    load.unk52 := false;
    load.reqInfluence := 0;
    for i := 0 to 15 do
      load.unk53[i] := 0;
  end;
  f.Read(load.reqSuccesType, 4);
  f.Read(load.reqNPCType, 4);
  f.Read(load.reqChaseC, 4);
  f.Read(load.reqChaseOff, 4);
  setlength(load.reqChases, load.reqChaseC);
  f.Read(load.reqGetItemC, 4);
  f.Read(load.reqGetItemOff, 4);
  setlength(load.reqGetItem, load.reqGetItemC);
  f.Read(load.reqCoins, 4);
  f.Read(load.unk54[0], 16);
  if version >= 89 then
    f.Read(load.unk55[0], 12)
  else
    for i := 0 to 11 do
      load.unk55[i] := 0;
  if version >= 89 then
  begin
    load.reachLoc.hasLoc := false;
    f.Read(load.reachLoc.count, 4);
    setlength(load.reachLoc.spans, load.reachLoc.count);
    f.Read(load.reachLoc.mapId, 4);
    load.reachLoc.unk := 0;
  end
  else
  begin
    load.reachLoc.hasLoc := false;
    load.reachLoc.count := 1;
    setlength(load.reachLoc.spans, load.reachLoc.count);
    load.reachLoc.spans[0] := ReadSpan(f, version);
    f.Read(load.reachLoc.mapId, 4);
    load.reachLoc.unk := 0;
  end;
  f.Read(load.reqWaitTime, 4);
  if version >= 100 then
    f.Read(load.unk56[0], 15)
  else
    for i := 0 to 14 do
      load.unk56[i] := 0;
  if version >= 89 then
  begin
    f.Read(load.pq.unkb[40], 4);
    load.pq.Loc.hasLoc := false;
    f.Read(load.pq.Loc.mapId, 4);
    f.Read(load.pq.Loc.count, 4);
    setlength(load.pq.Loc.spans, load.pq.Loc.count);
    load.pq.Loc.unk := 0;
    f.Read(load.pq.unki[1], 4);
    f.Read(load.pq.unkb[44], 5);
    f.Read(load.pq.idScript, 4);
    f.Read(load.pq.unki[2], 4);
    f.Read(load.pq.unki[3], 4);
    f.Read(load.pq.unki[4], 4);
    f.Read(load.pq.unk17[0], 20);
    f.Read(load.pq.specialScrC, 4);
    setlength(load.pq.specialScr, load.pq.specialScrC);
    f.Read(load.pq.unkb[49], 4);
    f.Read(load.pq.unkb[53], 4);
    f.Read(load.pq.mesC, 4);
    setlength(load.pq.messb, load.pq.mesC);
    setlength(load.pq.mess, load.pq.mesC);
    f.Read(load.pq.unkb[57], 4);
  end
  else
  begin
    for i := 40 to 43 do
      load.pq.unkb[i] := 0;
    load.pq.Loc.hasLoc := false;
    load.pq.Loc.mapId := 0;
    load.pq.Loc.count := 0;
    load.pq.Loc.unk := 0;
    for i := 1 to 4 do
      load.pq.unki[i] := 0;
    for i := 44 to 48 do
      load.pq.unkb[i] := 0;
    load.pq.idScript := 0;
    for i := 0 to 4 do
      load.pq.unk17[i] := 0;
    load.pq.specialScrC := 0;
    for i := 49 to 56 do
      load.pq.unkb[i] := 0;
    load.pq.mesC := 0;
    for i := 57 to 60 do
      load.pq.unkb[i] := 0;
  end;
  f.Read(load.unk57[0], 8);
  f.Read(load.unkOffs[0], 24);
  f.Read(load.parQ, 4);
  f.Read(load.prevQ, 4);
  f.Read(load.nextQ, 4);
  f.Read(load.subQFirst, 4);
  if version >= 89 then
  begin
    f.Read(load.unk58, 1);
    f.Read(load.recQChanse, 4);
  end
  else
  begin
    load.unk58 := false;
    load.recQChanse := 0;
  end;
  if version >= 100 then
    f.Read(load.unk59, 1)
  else
    load.unk59 := false;
  if (load.amode) then
  begin
    f.Read(load.authorTextB[0], 60);
    load.authorText := decrypt(load.id, load.authorTextB);
  end;
  for i := 0 to load.datespanc - 1 do
    load.DateSpan[i] := ReadDateSpan(f, version);
  if version >= 89 then
  begin
    for i := 0 to load.pq.scriptInfC - 1 do
    begin
      f.Read(load.pq.scriptInf[i].id, 4);
      f.Read(load.pq.scriptInf[i].unk, 4);
      f.Read(load.pq.scriptInf[i].unkb, 1);
    end;
    for i := 0 to load.pq.scriptC - 1 do
    begin
      f.Read(load.pq.scripts[i].nameb[0], 64);
      f.Read(load.pq.scripts[i].count, 4);
      f.Read(load.pq.scripts[i].id, 4);
      f.Read(load.pq.scripts[i].seperator, 4);
      f.Read(load.pq.scripts[i].referId, 4);
      f.Read(load.pq.scripts[i].codeb[0], 496);
    end;
    for i := 0 to load.pq.chaseC - 1 do
    begin
      f.Read(load.pq.Chase[i].idmon, 4);
      f.Read(load.pq.Chase[i].amount1, 4);
      f.Read(load.pq.Chase[i].contr, 4);
      f.Read(load.pq.Chase[i].amount2, 4);
    end;
  end;
  if version >= 89 then
  begin
    for i := 0 to load.triggerLoc.count - 1 do
      load.triggerLoc.spans[i] := ReadSpan(f, version);
    for i := 0 to load.failLoc.count - 1 do
      load.failLoc.spans[i] := ReadSpan(f, version);
    for i := 0 to load.validLoc.count - 1 do
      load.validLoc.spans[i] := ReadSpan(f, version);
  end;
  for i := 0 to load.reqItemC - 1 do
    load.reqItem[i] := ReadItem(f, version);
  for i := 0 to load.givenItemC - 1 do
    load.givenItem[i] := ReadItem(f, version);
  for i := 0 to load.reqTeamMemberC - 1 do
    load.reqTeamMember[i] := ReadTeamReq(f, version);
  for i := 0 to load.reqChaseC - 1 do
    load.reqChases[i] := ReadChase(f, version);
  for i := 0 to load.reqGetItemC - 1 do
    load.reqGetItem[i] := ReadItem(f, version);
  if version >= 89 then
  begin
    for i := 0 to load.reachLoc.count - 1 do
      load.reachLoc.spans[i] := ReadSpan(f, version);
    for i := 0 to load.pq.Loc.count - 1 do
      load.pq.Loc.spans[i] := ReadSpan(f, version);
  end;
  if version >= 89 then
  begin
    for i := 0 to load.pq.specialScrC - 1 do
    begin
      f.Read(load.pq.specialScr[i].nameb[0], 64);
      f.Read(load.pq.specialScr[i].count, 4);
      f.Read(load.pq.specialScr[i].id, 4);
      f.Read(load.pq.specialScr[i].seperator, 4);
      f.Read(load.pq.specialScr[i].referId, 4);
      f.Read(load.pq.specialScr[i].codeb[0], 496);
    end;
    for i := 0 to load.pq.mesC - 1 do
    begin
      f.Read(load.pq.messb[i][0], 128);
    end;
  end;
  load.rewardSucces := ReadReward(f, version);
  load.rewardFailed := ReadReward(f, version);
  f.Read(load.rewardTimedC, 4);
  for i := 0 to 4 do
    f.Read(load.rewardTimeFactor[i], 4);
  setlength(load.rewardTimed, load.rewardTimedC);
  for i := 0 to load.rewardTimedC - 1 do
    load.rewardTimed[i] := ReadReward(f, version);
  f.Read(load.unk61[0], 80);
  f.Read(load.conver.promtCharC, 4);
  setlength(load.conver.promtTextB, load.conver.promtCharC * 2);
  f.Read(load.conver.promtTextB[0], load.conver.promtCharC * 2);
  load.conver.promtText := decrypt(load.id, load.conver.promtTextB);
  setlength(load.conver.promtText, load.conver.promtCharC);
  f.Read(load.conver.seperator1, 4);
  f.Read(load.conver.seperator2, 4);
  f.Read(load.conver.genCharC, 4);
  setlength(load.conver.genTextB, load.conver.genCharC * 2);
  f.Read(load.conver.genTextB[0], load.conver.genCharC * 2);
  load.conver.genText := decrypt(load.id, load.conver.genTextB);
  setlength(load.conver.genText, load.conver.genCharC);
  for i := 0 to 4 do
  begin
    f.Read(load.conver.dialogs[i].unk, 4);
    f.Read(load.conver.dialogs[i].dialogTextB[0], 128);
    load.conver.dialogs[i].dialogText :=
      decrypt(load.id, load.conver.dialogs[i].dialogTextB);
    f.Read(load.conver.dialogs[i].questionC, 4);
    setlength(load.conver.dialogs[i].questions,
      load.conver.dialogs[i].questionC);
    for j := 0 to load.conver.dialogs[i].questionC - 1 do
    begin
      f.Read(load.conver.dialogs[i].questions[j].questID, 4);
      f.Read(load.conver.dialogs[i].questions[j].previosQ, 4);
      f.Read(load.conver.dialogs[i].questions[j].questionCharC, 4);
      setlength(load.conver.dialogs[i].questions[j].questionB,
        2 * load.conver.dialogs[i].questions[j].questionCharC);
      f.Read(load.conver.dialogs[i].questions[j].questionB[0],
        2 * load.conver.dialogs[i].questions[j].questionCharC);
      load.conver.dialogs[i].questions[j].questionText :=
        decrypt(load.id, load.conver.dialogs[i].questions[j].questionB);
      f.Read(load.conver.dialogs[i].questions[j].answerC, 4);
      setlength(load.conver.dialogs[i].questions[j].answers,
        load.conver.dialogs[i].questions[j].answerC);
      setlength(load.conver.dialogs[i].questions[j].questionText,
        load.conver.dialogs[i].questions[j].questionCharC);
      for h := 0 to load.conver.dialogs[i].questions[j].answerC - 1 do
      begin
        f.Read(load.conver.dialogs[i].questions[j].answers[h].questionLink, 4);
        f.Read(load.conver.dialogs[i].questions[j].answers[h]
          .answerTextB[0], 128);
        load.conver.dialogs[i].questions[j].answers[h].answerText :=
          decrypt(load.id, load.conver.dialogs[i].questions[j].answers[h]
          .answerTextB);
        f.Read(load.conver.dialogs[i].questions[j].answers[h].taskLink, 4);
      end;
    end;
  end;
  f.Read(load.subQuestC, 4);
  setlength(load.subQuests, load.subQuestC);
  for i := 0 to load.subQuestC - 1 do
    load.subQuests[i] := loadT(f, f.Position, version);
  loadT := load;
end;

end.
