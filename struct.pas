unit struct;

interface

type
  Span = record
    east, bottom, south, west, top, north: single; // ���������� �����
  end;

type
  Chase = record
    idmon, amountmon, iddrop, amountdrop: integer;
    // id ����, ���-��, id ���������� �����, ����� ������
    common: boolean; // ?
    prob: single; // �����������
    killerlvl: boolean; // ?
    dph, dps: integer; // ?, ?
  end;

type
  LocSpan = record
    hasLoc: boolean; // ?
    mapId, count: integer; // id ����, ����� ��������
    spans: array of Span; // �������
    unk: integer; // ����� ������
  end;

type
  Loc = record
    mapId: integer; // id ����
    x, y, z: single; // �� ����� ����
  end;

type
  TDate = record
    year, month, day, hour, min, week: integer;
    // ���, �����, ����, ���, ������, ���� ������
  end;

type
  PQscriptInf = record
    id, unk: integer; // id, ?
    unkb: boolean; // ?
  end;

type
  PQscript = record
    nameb: array [0 .. 63] of byte;
    name: string; // ��������
    count, seperator: integer; // ���-��, ?
    id, referId: single; // id � id ������������
    codeb: array [0 .. 495] of byte; // ?
  end;

type
  PQChase = record
    idmon, amount1, contr, amount2: integer;
    // id ����, ���-��, ���� ����������, ���-��(?)
  end;

type
  PQItem = record
    rankFrom, rankTo: integer; // ����� �� � ��
    unk: boolean; // ?
    id: integer; // id �����
    amount: integer; // ���-��
    prob: single; // �����������
  end;

type
  PQSpecial = record
    idPQ, unk2: integer; // id PQ �������, ?
    unk3: boolean; // ?
  end;

type
  PQReward = record
    chasesC, eventG, newPQ: integer;
    // ���-�� ���� ����� �����(?), ����� �����(� �������), �������� PQ �����
    unk0: array [0 .. 5] of byte; // ?
    unk1: array [0 .. 8] of byte; // ?
    unkQ: integer; // ?
    unk2: integer; // ?
    unklvl, contrMin, contrMax, contrReq, clanhollP1, clanhollP2, itemC, unk4,
      specialC: integer;
    { *
      ����� ���, ��� ����������, ���� ����������, ���� ����������, ���� ��1, ���� ��2,
      ���-�� ������, ?, ����(?)
      * }
    unk5: array [0 .. 28] of byte; // ?
    scriptC: integer; // ���-�� ��������
    unk6_1, unk6_2, messageC, unk7: integer; // ?, ?, ���-�� ���������(?), ?
    chaseUnk1, chaseUnk3: boolean; // ?, ?
    chaseUnk2: integer; // ?
    chases: array of PQChase; // ���������� ����� (?)
    itemUnk: boolean; // ?
    items: array of PQItem; // �����(?)
    special: array of PQSpecial; // ����(?)
    scriptsb: array of array [0 .. 575] of byte; // ?
    messageb: array of array [0 .. 127] of byte;
    messages: array of string; // ?

  end;

type
  PQAudit = record
    scriptInfC: integer; // ���-�� ��� ��������
    scriptInf: array of PQscriptInf; // ��� �������
    unk4: array [0 .. 1] of integer; // ?
    unk7: integer; // ?
    unkb: array [0 .. 60] of byte; // ?
    unk17: array [0 .. 4] of integer; // ?
    unki: array [0 .. 4] of integer; // ?
    scriptC: integer; // ���-�� ��������
    scripts: array of PQscript; // �������
    chaseC: integer; // ���-�� ����� ���� �����
    Chase: array of PQChase; // ���� ����
    reqQuestCompl: integer; // ���� ��� �������(?)
    Loc: LocSpan; // ����� ����������
    idScript: integer; // id �������
    specialScrC: integer; // ���-�� ���� ��������
    specialScr: array of PQscript; // ���� �������
    mesC: integer; // ���-�� ���������
    messb: array of array [0 .. 127] of byte;
    mess: array of string; // ���������
  end;

type
  DateSpan = record
    fromdate, todate: TDate; // ����� ��, ����� ��
  end;

type
  Item = record
    id: integer; // id �����
    unk: boolean; // ����������� ������ (?)
    amount: integer; // ���-��
    prob: single; // �����������
    time: integer; // ��� �� �������
  end;

type
  ItemGroup = record
    unk: boolean; // ?
    itemC: integer; // ���-�� ������
    items: array of Item; // �����
  end;

type
  TeamMember = record
    lvlmin, lvlmax, race, occupation, gender, amountMin, amountMax, quest,
      force: integer;
    { *
      ��� ���, ���� ���, ����, �����, ���, ��� ���-��, ���� ���-��, ������� ������,
      �������
      * }
  end;

type
  Reward = record
    coins, exp, newquest, sp, rep, cult, tpPoint, bankSlot, cupboardSlot,
      wardrobeSlot, accBankSlot, invSlot, petSlot, chi: integer;
    { *
      ������, ����, ��������� ������, ���, ���������, �������� �� �����, ? �����,
      ����� ��������, ����� ����� ��������, ���������, ����� ��� �����, ������
      * }
    tp: Loc; // �� � ��� �����
    ai: integer; // ��������� ��������
    unk2: array [0 .. 7] of byte; // ?
    itemGroupC: integer; // ���-�� ����� � �������-���������
    seperator: integer; // ?
    pq: PQReward; // ������ ������ � �������
    influence, prestige, unk5, unk6, questSlot: integer;
    // �������, �������, ?, ?, ����� � �����-���������
    itemGroups: array of ItemGroup; // ������ � �������
  end;

type
  Answer = record
    questionLink: integer; // ����� ��� ������ ���������� �������/�������
    answerTextB: array [0 .. 127] of byte;
    answerText: string; // ����� �������� ������
    taskLink: integer; // id ������, � ������� ���������� �������
  end;

type
  Question = record
    questID, previosQ, questionCharC: integer; // id �������, ���������� �������
    questionB: array of byte;
    questionText: string; // ����� �������
    answerC: integer; // ���-�� ��������� �������
    answers: array of Answer; // �������� ������
  end;

type
  Dialog = record
    unk: integer; // ?
    dialogTextB: array [0 .. 127] of byte;
    dialogText: string; // ���� 'RootNode' , ������ ���� ������
    questionC: integer; // ���-�� ������ ���
    questions: array of Question; // �������
  end;

type
  Conversation = record
    promtCharC: integer;
    promtTextB: array of byte;
    promtText: string; // �������� ������
    seperator1, seperator2: integer; // ?
    genCharC: integer;
    genTextB: array of byte;
    genText: string; // ��������� � ��� ��� ����������
    dialogs: array [0 .. 4] of Dialog; // �������
  end;

type
  Task = record
    id: integer;
    nameb: array [0 .. 59] of byte;
    names: string;
    amode: boolean;
    amodeoff: integer;
    qtype: integer;
    timelim: integer;
    offail: boolean; // ������ ��� ������ �� ����
    datefailb: boolean; // ������ ����� �������� ����
    datefail: TDate; // ���� �������
    itemfail: boolean; // ��� ������ �������� (?)
    hasdatespan: boolean; // ����� ��������� �����
    datespanc: integer; // �� ���-��
    timetype: integer; // ?
    unk1, unk2: integer;   // ������ 0
    unk3, unk4, unk5: integer;    // ������ 0
    unk6, unk7: integer;        // ����� ������
    unk8, unk9: integer;
    {*
    ��� �����������(0 - ���������, 1 - ����������, 2 - ������������, 3 - ?),
    ���-�� �������� � ����
    *}
    afsq, arsq, ansq: boolean;
    // ���� ��������� ���������� (������, ���������, ��������)
    opf, ps, cgu, rep, repAF, fon, ofpf, unkbool: boolean;
    { * ��� ������/����������, �������������/����������� ������������ �����;
      �������� �����;
      ����������� (����� �������);
      ?;
      ��� ������� ���. �������������;
      ������ ��� ������;
      * }
    playlim: integer; // ������������ ���-�� �����, ������� �����
    triggerLoc, failLoc, validLoc: LocSpan;
    // ���������� ������� (������������� �������, �������, ��������)
    unk10: boolean; // ������� ������� �������
    hasInstTP: boolean; // �� ������ ����
    instTP: Loc; // �� ��� ������ ������
    aiTrigger: integer;    // ���������� �������, ��� ������ ������
    unk11, unk12, unk13, unk14, unk15, unk16: boolean;
    {* ������� ��������,
    ������� �������������,
    ������������� ������� � �����,
    ������ false,
    ���������� �������,
    ������������ � ������ �������
    *}
    unklevel: integer; // ������������� ��� ��� ����������
    markAvIc, markAvP: boolean;
    // ���������� ��������� � ������ ������, ?
    qNPC, rNPC: integer; // ���� (������/����������� �����)
    craftSkill, unk17, unk18, unk19: boolean;
    // ����� ������ (������),
    pq: PQAudit; // ������ ����� ����
    unk20, unk21: byte; // ?
    lvlmin, lvlmax: integer; // ��� � ���� ���
    unk22: boolean; // ?
    reqItemC: integer; // ����. ���-�� ������
    reqItemOff: integer; // ����� ������, �������� �� ������ �� ������� �������
    unk23, unk24: boolean; // ?
    givenItemC: integer; // ���-�� �������� ������ � ������ ������
    unk25, unk26, givenItemOff, paid: integer;
    // ?, ?, ����� ������(�������), ����� �� ������ ������
    unk27: boolean; // ?
    reqRep, unkOff: integer; // ��������� ���������, ����� ������(�������)
    unk28: boolean; // ?
    reqQuestDoneC: integer; // ���-�� ���� ���������� �������
    reqQuestDone: array [0 .. 4] of integer; // id ���� �������
    unk29: array [0 .. 59] of byte; // ?
    unk30: boolean; // ?
    unk31: integer; // ?
    reqCult: integer; // ���� �����������
    unk32: array [0 .. 4] of byte; // ?
    unk33: integer; // ?
    unk34: boolean; // ?
    reqGend: integer; // ���� ���
    unk35: boolean; // ?(���������� �������)
    reqOccupC: integer; // ����� ����. �������
    reqOccup: array [0 .. 9] of integer; // �� ����������
    unk36, reqMarried, unk37, unk37_1, unk37_2, reqGM, unk38: boolean;
    // ?, ��������, ?, ?, ?, ��, ?
    unk39: array [0 .. 18] of byte; // ?
    dateUnk: TDate; // ����� ����
    unk40: integer; // ?
    unk41: boolean; // ?
    unk42: array [0 .. 6] of byte; // ?
    reqUndoneQuestC: integer; // ���-�� ���� ������������ ��
    reqUndoneQuest: array [0 .. 4] of integer; // �� id
    reqCraft: array [0 .. 3] of integer;
    // ������, �������, �����������, ��������
    unk43: array [0 .. 34] of byte; // ?
    reqTeamMemberC, unk44: integer; // ���-�� ������ �����, ?
    unk45: boolean; // ?
    unk46: array [0 .. 8] of byte; // ?
    resPQAuditID, unk47, unk48, reqPQContr: integer; // ?
    unk49: array [0 .. 19] of byte; // ?
    unk50, unk51, unk52: boolean; // ?
    reqForce, reqPrestige, reqInfluence: integer;
    // ���� �������, �������, �������
    unk53: array [0 .. 15] of byte; // ?
    reqSuccesType, reqNPCType: integer; // ��� ����� ��, ��� ���(?)
    reqChaseC, reqChaseOff, reqGetItemC, reqGetItemOff, reqCoins: integer;
    // ���-�� ����� �����, ����� ������, ���-�� ���� ������, ����� ������, ���� �����
    unk54: array [0 .. 15] of byte; // ?
    unk55: array [0 .. 11] of byte; // ?
    reachLoc: LocSpan; // ���������� �����
    reqWaitTime: integer; // ��������� �����
    unk56: array [0 .. 14] of byte; // ?
    unk57: array [0 .. 7] of byte; // ?
    unkOffs: array [0 .. 23] of byte; // ����� �������
    parQ, prevQ, nextQ, subQFirst: integer;
    { *
      ������������ �����,
      ���������� ��������,
      �������� ��������,
      ������ ��������
      * }
    unk58: boolean; // ?
    recQChanse: single; // ����������� ������ ������
    unk59: boolean; // ?
    authorTextB: array [0 .. 59] of byte;
    authorText: string; // �����
    DateSpan: array of DateSpan; // ��������� ����������
    reqItem: array of Item; // ���� �����
    givenItem: array of Item; // ���������� �����
    reqTeamMember: array of TeamMember; // ���������� � ������
    reqChases: array of Chase; // ���� ����
    reqGetItem: array of Item; // ���� �������� �����
    rewardSucces: Reward; // ������� �� ����������
    rewardFailed: Reward; // ������� �� ������
    rewardTimedC: integer; // ���-�� ����� ������ �� ������ �����
    rewardTimeFactor: array [0 .. 4] of single; // ������� �� �������
    rewardTimed: array of Reward; // ���� ������ �� ������ �����
    unk61: array [0 .. 79] of byte; // ������ ����
    conver: Conversation; // ������
    subQuestC: integer; // ���-�� ����������
    subQuests: array of Task; // ���������
  end;

type
TaskArr = array of Task;

implementation

end.
