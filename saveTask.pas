unit saveTask;

interface

uses System.SysUtils, System.Classes, struct;

type
  DynByteArray = array of byte;

procedure saveT(f: TStream; tFSP: Task; version: integer);

implementation

function encrypt(key: integer; text: string; lengthB: integer;
  appendZero: boolean): DynByteArray;
var
  i: integer;
  res: DynByteArray;
  res1: array of byte;
begin
  if appendZero then
    SetLength(res, lengthB + 2)
  else
    SetLength(res, lengthB);
  SetLength(res1, length(text) * 2);
  move(text[1], res1[0], length(text) * 2);
  for i := 0 to (length(res) div 2) - 1 do
  begin
    res[i * 2] := key mod 256;
    res[i * 2 + 1] := key div 256;
    if (i < length(text)) then
    begin
      res[i * 2] := res[i * 2] xor res1[i * 2];
      res[i * 2 + 1] := res[i * 2 + 1] xor res1[i * 2 + 1];
    end;
  end;
  encrypt := res;
end;

procedure WriteDate(f: TStream; writing: TDate; version: integer);
begin
  f.Write(writing.year, 4);
  f.Write(writing.month, 4);
  f.Write(writing.day, 4);
  f.Write(writing.hour, 4);
  f.Write(writing.min, 4);
  f.Write(writing.week, 4);
end;

procedure WriteLoc(f: TStream; w: Loc; version: integer);
begin
  f.Write(w.mapId, 4);
  f.Write(w.x, 4);
  f.Write(w.y, 4);
  f.Write(w.z, 4);
end;

procedure WriteDateSpan(f: TStream; w: DateSpan; version: integer);
begin
  WriteDate(f, w.fromdate, version);
  WriteDate(f, w.todate, version);
end;

procedure WriteSpan(f: TStream; w: Span; version: integer);
begin
  f.Write(w.east, 4);
  f.Write(w.bottom, 4);
  f.Write(w.south, 4);
  f.Write(w.west, 4);
  f.Write(w.top, 4);
  f.Write(w.north, 4);
end;

procedure WriteItem(f: TStream; w: Item; version: integer);
begin
  f.Write(w.id, 4);
  f.Write(w.unk, 1);
  f.Write(w.amount, 4);
  f.Write(w.prob, 4);
  if version >= 89 then
    f.Write(w.time, 4);
end;

procedure WriteItemGroup(f: TStream; w: ItemGroup; version: integer);
var
  i: integer;
begin
  f.Write(w.unk, 1);
  f.Write(w.itemC, 4);
  for i := 0 to w.itemC - 1 do
    WriteItem(f, w.items[i], version);
end;

procedure WriteChase(f: TStream; w: Chase; version: integer);
begin
  f.Write(w.idmon, 4);
  f.Write(w.amountmon, 4);
  f.Write(w.iddrop, 4);
  f.Write(w.amountdrop, 4);
  f.Write(w.common, 1);
  f.Write(w.prob, 4);
  f.Write(w.killerlvl, 1);
  if version >= 92 then
  begin
    f.Write(w.dph, 4);
    f.Write(w.dps, 4);
  end;
end;

procedure WriteTeamMember(f: TStream; w: TeamMember; version: integer);
begin
  f.Write(w.lvlmin, 4);
  f.Write(w.lvlmax, 4);
  f.Write(w.race, 4);
  f.Write(w.occupation, 4);
  f.Write(w.gender, 4);
  f.Write(w.amountMin, 4);
  f.Write(w.amountMax, 4);
  f.Write(w.quest, 4);
  if version >= 100 then
    f.Write(w.force, 4);
end;

procedure WriteReward(f: TStream; w: Reward; version: integer);
var
  i: integer;
begin
  f.Write(w.coins, 4);
  f.Write(w.exp, 4);
  f.Write(w.newquest, 4);
  f.Write(w.sp, 4);
  f.Write(w.rep, 4);
  f.Write(w.cult, 4);
  f.Write(w.tpPoint, 4);
  f.Write(w.bankSlot, 4);
  if version >= 89 then
  begin
    f.Write(w.cupboardSlot, 4);
    f.Write(w.wardrobeSlot, 4);
    f.Write(w.accBankSlot, 4);
  end;
  f.Write(w.invSlot, 4);
  f.Write(w.petSlot, 4);
  f.Write(w.chi, 4);
  WriteLoc(f, w.tp, version);
  f.Write(w.ai, 4);
  f.Write(w.unk2[0], 3);
  if version > 55 then
    f.Write(w.unk2[3], 5);
  f.Write(w.itemGroupC, 4);
  f.Write(w.seperator, 4);
  if version >= 89 then
  begin
    f.Write(w.pq.chasesC, 4);
    f.Write(w.pq.unk0[0], 6);
    f.Write(w.pq.eventG, 4);
    f.Write(w.pq.unk1[0], 9);
    f.Write(w.pq.unkQ, 4);
    f.Write(w.pq.unk2, 4);
    f.Write(w.pq.unklvl, 4);
    f.Write(w.pq.contrMin, 4);
    f.Write(w.pq.contrMax, 4);
    f.Write(w.pq.contrReq, 4);
    f.Write(w.pq.clanhollP1, 4);
    f.Write(w.pq.clanhollP2, 4);
    f.Write(w.pq.itemC, 4);
    f.Write(w.pq.unk4, 4);
    f.Write(w.pq.specialC, 4);
    f.Write(w.pq.unk5[0], 29);
    f.Write(w.pq.scriptC, 4);
    f.Write(w.pq.unk6_1, 4);
    f.Write(w.pq.unk6_2, 4);
    f.Write(w.pq.messageC, 4);
    f.Write(w.pq.unk7, 4);
  end;
  if version >= 100 then
  begin
    f.Write(w.influence, 4);
    f.Write(w.prestige, 4);
    f.Write(w.unk5, 4);
    f.Write(w.unk6, 4);
  end;
  if version >= 102 then
    f.Write(w.questSlot, 4);
  for i := 0 to w.itemGroupC - 1 do
    WriteItemGroup(f, w.itemGroups[i], version);
  if version >= 89 then
  begin
    if w.pq.chasesC > 0 then
    begin
      f.Write(w.pq.chaseUnk1, 1);
      f.Write(w.pq.chaseUnk2, 4);
      f.Write(w.pq.chaseUnk3, 1);
      for i := 0 to w.pq.chasesC - 1 do
      begin
        f.Write(w.pq.chases[i].idmon, 4);
        f.Write(w.pq.chases[i].amount1, 4);
        f.Write(w.pq.chases[i].contr, 4);
        f.Write(w.pq.chases[i].amount2, 4);
      end;
    end;
    if w.pq.itemC > 0 then
    begin
      f.Write(w.pq.itemUnk, 1);
      for i := 0 to w.pq.itemC - 1 do
      begin
        f.Write(w.pq.items[i].rankFrom, 4);
        f.Write(w.pq.items[i].rankTo, 4);
        f.Write(w.pq.items[i].unk, 1);
        f.Write(w.pq.items[i].id, 4);
        f.Write(w.pq.items[i].amount, 4);
        f.Write(w.pq.items[i].prob, 4);
      end;
    end;
    for i := 0 to w.pq.specialC - 1 do
    begin
      f.Write(w.pq.special[i].idPQ, 4);
      f.Write(w.pq.special[i].unk2, 4);
      f.Write(w.pq.special[i].unk3, 1);
    end;
    for i := 0 to w.pq.scriptC - 1 do
      f.Write(w.pq.scriptsb[i][0], 576);
    for i := 0 to w.pq.messageC - 1 do
    begin
      f.Write(w.pq.messageb[i][0], 128);
    end;
  end;
end;

procedure saveT(f: TStream; tFSP: Task; version: integer);
var
  save: Task;
  i, j, h: integer;
  x: integer;
begin
  x := 0;
  save := tFSP;
  f.Write(save.id, 4);
  move(encrypt(save.id, save.names, 60, false)[0], save.nameb[0], 60);
  f.Write(save.nameb[0], 60);
  f.Write(save.amode, 1);
  f.Write(save.amodeoff, 4);
  f.Write(save.qtype, 4);
  f.Write(save.timelim, 4);
  if version >= 89 then
  begin
    f.Write(save.offail, 1);
    f.Write(save.datefailb, 1);
    WriteDate(f, save.datefail, version);
    f.Write(save.itemfail, 1);
  end;
  f.Write(save.hasdatespan, 1);
  f.Write(save.datespanc, 4);
  f.Write(save.timetype, 4);
  f.Write(save.unk1, 4);
  f.Write(save.unk2, 4);
  if version >= 89 then
  begin
    f.Write(save.unk3, 4);
    f.Write(save.unk4, 4);
    f.Write(save.unk5, 4);
  end;
  f.Write(save.unk6, 4);
  f.Write(save.unk7, 4);
  f.Write(save.unk8, 4);
  if version >= 89 then
    f.Write(save.unk9, 4);
  f.Write(save.afsq, 1);
  f.Write(save.arsq, 1);
  f.Write(save.ansq, 1);
  f.Write(save.opf, 1);
  f.Write(save.ps, 1);
  f.Write(save.cgu, 1);
  f.Write(save.rep, 1);
  f.Write(save.repAF, 1);
  f.Write(save.fon, 1);
  f.Write(save.ofpf, 1);
  f.Write(save.unkbool, 1);
  f.Write(save.playlim, 4);
  if version >= 89 then
  begin
    f.Write(save.triggerLoc.hasLoc, 1);
    f.Write(save.triggerLoc.mapId, 4);
    f.Write(save.triggerLoc.count, 4);
    f.Write(save.triggerLoc.unk, 4);
    f.Write(save.failLoc.hasLoc, 1);
    f.Write(save.failLoc.mapId, 4);
    f.Write(save.failLoc.count, 4);
    f.Write(save.failLoc.unk, 4);
    f.Write(save.validLoc, 1);
    f.Write(save.validLoc.mapId, 4);
    f.Write(save.validLoc.count, 4);
    f.Write(save.validLoc.unk, 4);
  end
  else
  begin
    f.Write(save.triggerLoc.hasLoc, 1);
    f.Write(save.triggerLoc.mapId, 4);
    SetLength(save.triggerLoc.spans, 1);
    WriteSpan(f, save.triggerLoc.spans[0], version);
  end;
  if version >= 100 then
    f.Write(save.unk10, 1);
  f.Write(save.hasInstTP, 1);
  WriteLoc(f, save.instTP, version);
  f.Write(save.aiTrigger, 4);
  f.Write(save.unk11, 1);
  f.Write(save.unk12, 1);
  f.Write(save.unk13, 1);
  if version >= 89 then
  begin
    f.Write(save.unk14, 1);
    f.Write(save.unk15, 1);
  end;
  f.Write(save.unk16, 1);
  f.Write(save.unklevel, 4);
  f.Write(save.markAvIc, 1);
  f.Write(save.markAvP, 1);
  f.Write(save.qNPC, 4);
  f.Write(save.rNPC, 4);
  f.Write(save.craftSkill, 1);
  f.Write(save.unk17, 1);
  f.Write(save.unk18, 1);
  f.Write(save.unk19, 1);
  if version >= 89 then
  begin
    f.Write(save.pq.scriptInfC, 4);
    f.Write(save.pq.unkb[0], 12);
    f.Write(save.pq.unki[0], 4);
    f.Write(save.pq.unkb[12], 15);
    f.Write(save.pq.scriptC, 4);
    f.Write(save.pq.unk4[0], 8);
    f.Write(save.pq.unkb[27], 2);
    f.Write(save.pq.chaseC, 4);
    f.Write(save.pq.unk7, 4);
    f.Write(save.pq.reqQuestCompl, 4);
    f.Write(save.pq.unkb[29], 1);
    if version >= 92 then
      f.Write(save.pq.unkb[30], 5);
  end;
  if version >= 100 then
  begin
    f.Write(save.unk20, 1);
    f.Write(save.unk21, 1);
  end;
  f.Write(save.lvlmin, 4);
  f.Write(save.lvlmax, 4);
  f.Write(save.unk22, 1);
  f.Write(save.reqItemC, 4);
  f.Write(save.reqItemOff, 4);
  f.Write(save.unk23, 1);
  if version >= 100 then
    f.Write(save.unk24, 1);
  f.Write(save.givenItemC, 4);
  f.Write(save.unk25, 4);
  f.Write(save.unk26, 4);
  f.Write(save.givenItemOff, 4);
  f.Write(save.paid, 4);
  f.Write(save.unk27, 1);
  f.Write(save.reqRep, 4);
  f.Write(save.unkOff, 4);
  f.Write(save.unk28, 1);
  f.Write(save.reqQuestDoneC, 4);
  for i := 0 to 4 do
    f.Write(save.reqQuestDone[i], 4);
  if version >= 90 then
    f.Write(save.unk29[0], 60);
  f.Write(save.unk30, 1);
  if version >= 90 then
    f.Write(save.unk31, 4);
  f.Write(save.reqCult, 4);
  f.Write(save.unk32[0], 5);
  if version > 93 then
    f.Write(save.unk33, 4);
  f.Write(save.unk34, 1);
  f.Write(save.reqGend, 4);
  f.Write(save.unk35, 1);
  f.Write(save.reqOccupC, 4);
  if version >= 89 then
    for i := 0 to 9 do
      f.Write(save.reqOccup[i], 4)
  else
    for i := 0 to 7 do
      f.Write(save.reqOccup[i], 4);
  f.Write(save.unk36, 1);
  f.Write(save.reqMarried, 1);
  f.Write(save.unk37, 1);
  if version >= 102 then
  begin
    f.Write(save.unk37_1, 1);
    f.Write(save.unk37_2, 1);
  end;
  f.Write(save.reqGM, 1);
  f.Write(save.unk38, 1);
  if version >= 89 then
  begin
    f.Write(save.unk39[0], 19);
    WriteDate(f, save.dateUnk, version);
    f.Write(save.unk40, 4);
    f.Write(save.unk41, 1);
  end;
  f.Write(save.unk42[0], 7);
  f.Write(save.reqUndoneQuestC, 4);
  for i := 0 to 4 do
    f.Write(save.reqUndoneQuest[i], 4);
  for i := 0 to 3 do
    f.Write(save.reqCraft[i], 4);
  f.Write(save.unk43[0], 32);
  if version >= 89 then
    f.Write(save.unk43[32], 3);
  f.Write(save.reqTeamMemberC, 4);
  f.Write(save.unk44, 4);
  f.Write(save.unk45, 1);
  if version >= 89 then
  begin
    f.Write(save.unk46[0], 9);
    f.Write(save.resPQAuditID, 4);
    f.Write(save.unk47, 4);
    f.Write(save.unk48, 4);
    f.Write(save.reqPQContr, 4);
    f.Write(save.unk49[0], 20);
  end;
  if version >= 100 then
  begin
    f.Write(save.unk50, 1);
    f.Write(save.reqForce, 4);
    f.Write(save.unk51, 1);
    f.Write(save.reqPrestige, 4);
    f.Write(save.unk52, 1);
    f.Write(save.reqInfluence, 4);
    f.Write(save.unk53[0], 16);
  end;
  f.Write(save.reqSuccesType, 4);
  f.Write(save.reqNPCType, 4);
  f.Write(save.reqChaseC, 4);
  f.Write(save.reqChaseOff, 4);
  f.Write(save.reqGetItemC, 4);
  f.Write(save.reqGetItemOff, 4);
  f.Write(save.reqCoins, 4);
  f.Write(save.unk54[0], 16);
  if version >= 89 then
    f.Write(save.unk55[0], 12);
  if version >= 89 then
  begin
    f.Write(save.reachLoc.count, 4);
    f.Write(save.reachLoc.mapId, 4);
  end
  else
  begin
    SetLength(save.reachLoc.spans, 1);
    WriteSpan(f, save.reachLoc.spans[0], version);
    f.Write(save.reachLoc.mapId, 4);
  end;
  f.Write(save.reqWaitTime, 4);
  if version >= 100 then
    f.Write(save.unk56[0], 15);
  if version >= 89 then
  begin
    f.Write(save.pq.unkb[40], 4);
    f.Write(save.pq.Loc.mapId, 4);
    f.Write(save.pq.Loc.count, 4);
    f.Write(save.pq.unki[1], 4);
    f.Write(save.pq.unkb[44], 5);
    f.Write(save.pq.idScript, 4);
    f.Write(save.pq.unki[2], 4);
    f.Write(save.pq.unki[3], 4);
    f.Write(save.pq.unki[4], 4);
    f.Write(save.pq.unk17[0], 20);
    f.Write(save.pq.specialScrC, 4);
    f.Write(save.pq.unkb[49], 4);
    f.Write(save.pq.unkb[53], 4);
    f.Write(save.pq.mesC, 4);
    f.Write(save.pq.unkb[57], 4);
  end;
  f.Write(save.unk57[0], 8);
  f.Write(save.unkOffs[0], 24);
  f.Write(save.parQ, 4);
  f.Write(save.prevQ, 4);
  f.Write(save.nextQ, 4);
  f.Write(save.subQFirst, 4);
  if version >= 89 then
  begin
    f.Write(save.unk58, 1);
    f.Write(save.recQChanse, 4);
  end;
  if version >= 100 then
    f.Write(save.unk59, 1);
  if (save.amode) then
  begin
    move(encrypt(save.id, save.authorText, 60, false)[0],
      save.authorTextB[0], 60);
    f.Write(save.authorTextB[0], 60);
  end;
  for i := 0 to save.datespanc - 1 do
    WriteDateSpan(f, save.DateSpan[i], version);
  if version >= 89 then
  begin
    for i := 0 to save.pq.scriptInfC - 1 do
    begin
      f.Write(save.pq.scriptInf[i].id, 4);
      f.Write(save.pq.scriptInf[i].unk, 4);
      f.Write(save.pq.scriptInf[i].unkb, 1);
    end;
    for i := 0 to save.pq.scriptC - 1 do
    begin
      f.Write(save.pq.scripts[i].nameb[0], 64);
      f.Write(save.pq.scripts[i].count, 4);
      f.Write(save.pq.scripts[i].id, 4);
      f.Write(save.pq.scripts[i].seperator, 4);
      f.Write(save.pq.scripts[i].referId, 4);
      f.Write(save.pq.scripts[i].codeb[0], 496);
    end;
    for i := 0 to save.pq.chaseC - 1 do
    begin
      f.Write(save.pq.Chase[i].idmon, 4);
      f.Write(save.pq.Chase[i].amount1, 4);
      f.Write(save.pq.Chase[i].contr, 4);
      f.Write(save.pq.Chase[i].amount2, 4);
    end;
  end;
  if version >= 89 then
  begin
    for i := 0 to save.triggerLoc.count - 1 do
      WriteSpan(f, save.triggerLoc.spans[i], version);
    for i := 0 to save.failLoc.count - 1 do
      WriteSpan(f, save.failLoc.spans[i], version);
    for i := 0 to save.validLoc.count - 1 do
      WriteSpan(f, save.validLoc.spans[i], version);
  end;
  for i := 0 to save.reqItemC - 1 do
    WriteItem(f, save.reqItem[i], version);
  for i := 0 to save.givenItemC - 1 do
    WriteItem(f, save.givenItem[i], version);
  for i := 0 to save.reqTeamMemberC - 1 do
    WriteTeamMember(f, save.reqTeamMember[i], version);
  for i := 0 to save.reqChaseC - 1 do
    WriteChase(f, save.reqChases[i], version);
  for i := 0 to save.reqGetItemC - 1 do
    WriteItem(f, save.reqGetItem[i], version);
  if version >= 89 then
  begin
    for i := 0 to save.reachLoc.count - 1 do
      WriteSpan(f, save.reachLoc.spans[i], version);
    for i := 0 to save.pq.Loc.count - 1 do
      WriteSpan(f, save.pq.Loc.spans[i], version);
  end;
  if version >= 89 then
  begin
    for i := 0 to save.pq.specialScrC - 1 do
    begin
      f.Write(save.pq.specialScr[i].nameb[0], 64);
      f.Write(save.pq.specialScr[i].count, 4);
      f.Write(save.pq.specialScr[i].id, 4);
      f.Write(save.pq.specialScr[i].seperator, 4);
      f.Write(save.pq.specialScr[i].referId, 4);
      f.Write(save.pq.specialScr[i].codeb[0], 496);
    end;
    for i := 0 to save.pq.mesC - 1 do
    begin
      f.Write(save.pq.messb[i][0], 128);
    end;
  end;
  WriteReward(f, save.rewardSucces, version);
  WriteReward(f, save.rewardFailed, version);
  f.Write(save.rewardTimedC, 4);
  for i := 0 to 4 do
    f.Write(save.rewardTimeFactor[i], 4);
  for i := 0 to save.rewardTimedC - 1 do
    WriteReward(f, save.rewardTimed[i], version);
  f.Write(save.unk61[0], 80);
  save.conver.promtCharC := length(save.conver.promtText);
  f.Write(save.conver.promtCharC, 4);
  SetLength(save.conver.promtTextB, save.conver.promtCharC * 2);
  move(encrypt(save.id, save.conver.promtText, save.conver.promtCharC * 2, true)
    [0], save.conver.promtTextB[0], save.conver.promtCharC * 2);
  f.Write(save.conver.promtTextB[0], save.conver.promtCharC * 2);
  f.Write(save.conver.seperator1, 4);
  f.Write(save.conver.seperator2, 4);
  save.conver.genCharC := length(save.conver.genText);
  f.Write(save.conver.genCharC, 4);
  SetLength(save.conver.genTextB, save.conver.genCharC * 2);
  move(encrypt(save.id, save.conver.genText, save.conver.genCharC * 2, true)[0],
    save.conver.genTextB[0], save.conver.genCharC * 2);
  f.Write(save.conver.genTextB[0], save.conver.genCharC * 2);
  for i := 0 to 4 do
  begin
    f.Write(save.conver.dialogs[i].unk, 4);
    move(encrypt(save.id, save.conver.dialogs[i].dialogText, 128, false)[0],
      save.conver.dialogs[i].dialogTextB[0], 128);
    f.Write(save.conver.dialogs[i].dialogTextB[0], 128);
    f.Write(save.conver.dialogs[i].questionC, 4);
    for j := 0 to save.conver.dialogs[i].questionC - 1 do
    begin
      f.Write(save.conver.dialogs[i].questions[j].questID, 4);
      f.Write(save.conver.dialogs[i].questions[j].previosQ, 4);
      save.conver.dialogs[i].questions[j].questionCharC :=
        length(save.conver.dialogs[i].questions[j].questionText);
      f.Write(save.conver.dialogs[i].questions[j].questionCharC, 4);
      SetLength(save.conver.dialogs[i].questions[j].questionB,
        save.conver.dialogs[i].questions[j].questionCharC * 2);
      move(encrypt(save.id, save.conver.dialogs[i].questions[j].questionText,
        save.conver.dialogs[i].questions[j].questionCharC * 2, true)[0],
        save.conver.dialogs[i].questions[j].questionB[0],
        save.conver.dialogs[i].questions[j].questionCharC * 2);
      f.Write(save.conver.dialogs[i].questions[j].questionB[0],
        save.conver.dialogs[i].questions[j].questionCharC * 2);
      f.Write(save.conver.dialogs[i].questions[j].answerC, 4);
      for h := 0 to save.conver.dialogs[i].questions[j].answerC - 1 do
      begin
        f.Write(save.conver.dialogs[i].questions[j].answers[h].questionLink, 4);
        move(encrypt(save.id, save.conver.dialogs[i].questions[j].answers[h]
          .answerText, 128, false)[0], save.conver.dialogs[i].questions[j]
          .answers[h].answerTextB[0], 128);
        f.Write(save.conver.dialogs[i].questions[j].answers[h]
          .answerTextB[0], 128);
        f.Write(save.conver.dialogs[i].questions[j].answers[h].taskLink, 4);
      end;
    end;
  end;
  f.Write(save.subQuestC, 4);
  for i := 0 to save.subQuestC - 1 do
    saveT(f, save.subQuests[i], version);
end;

end.
