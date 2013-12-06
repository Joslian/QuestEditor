unit struct;

interface

type
  Span = record
    east, bottom, south, west, top, north: single; // координаты точек
  end;

type
  Chase = record
    idmon, amountmon, iddrop, amountdrop: integer;
    // id моба, кол-во, id лутящегося итема, число итемов
    common: boolean; // ?
    prob: single; // вероятность
    killerlvl: boolean; // ?
    dph, dps: integer; // ?, ?
  end;

type
  LocSpan = record
    hasLoc: boolean; // ?
    mapId, count: integer; // id локи, число областей
    spans: array of Span; // области
    unk: integer; // некий оффсет
  end;

type
  Loc = record
    mapId: integer; // id локи
    x, y, z: single; // ну ясень пень
  end;

type
  TDate = record
    year, month, day, hour, min, week: integer;
    // год, месяц, день, час, минута, день недели
  end;

type
  PQscriptInf = record
    id, unk: integer; // id, ?
    unkb: boolean; // ?
  end;

type
  PQscript = record
    nameb: array [0 .. 63] of byte;
    name: string; // название
    count, seperator: integer; // кол-во, ?
    id, referId: single; // id и id запускающего
    codeb: array [0 .. 495] of byte; // ?
  end;

type
  PQChase = record
    idmon, amount1, contr, amount2: integer;
    // id моба, кол-во, очки достижения, кол-во(?)
  end;

type
  PQItem = record
    rankFrom, rankTo: integer; // место от и до
    unk: boolean; // ?
    id: integer; // id итема
    amount: integer; // кол-во
    prob: single; // вероятность
  end;

type
  PQSpecial = record
    idPQ, unk2: integer; // id PQ скрипта, ?
    unk3: boolean; // ?
  end;

type
  PQReward = record
    chasesC, eventG, newPQ: integer;
    // кол-во треб групп мобов(?), эвент голды(в серебре), следущий PQ квест
    unk0: array [0 .. 5] of byte; // ?
    unk1: array [0 .. 8] of byte; // ?
    unkQ: integer; // ?
    unk2: integer; // ?
    unklvl, contrMin, contrMax, contrReq, clanhollP1, clanhollP2, itemC, unk4,
      specialC: integer;
    { *
      некий лвл, мин достижений, макс достижений, треб достижений, очки кх1, очки кх2,
      кол-во итемов, ?, спец(?)
      * }
    unk5: array [0 .. 28] of byte; // ?
    scriptC: integer; // кол-во скриптов
    unk6_1, unk6_2, messageC, unk7: integer; // ?, ?, кол-во сообщений(?), ?
    chaseUnk1, chaseUnk3: boolean; // ?, ?
    chaseUnk2: integer; // ?
    chases: array of PQChase; // требования мобов (?)
    itemUnk: boolean; // ?
    items: array of PQItem; // итемы(?)
    special: array of PQSpecial; // спкц(?)
    scriptsb: array of array [0 .. 575] of byte; // ?
    messageb: array of array [0 .. 127] of byte;
    messages: array of string; // ?

  end;

type
  PQAudit = record
    scriptInfC: integer; // кол-во инф скриптов
    scriptInf: array of PQscriptInf; // инф скрипты
    unk4: array [0 .. 1] of integer; // ?
    unk7: integer; // ?
    unkb: array [0 .. 60] of byte; // ?
    unk17: array [0 .. 4] of integer; // ?
    unki: array [0 .. 4] of integer; // ?
    scriptC: integer; // кол-во скриптов
    scripts: array of PQscript; // скрипты
    chaseC: integer; // кол-во групп треб мобов
    Chase: array of PQChase; // треб мобы
    reqQuestCompl: integer; // треб зав квестов(?)
    Loc: LocSpan; // место выполнения
    idScript: integer; // id скрипта
    specialScrC: integer; // кол-во спец скриптов
    specialScr: array of PQscript; // спец скрипты
    mesC: integer; // кол-во сообщений
    messb: array of array [0 .. 127] of byte;
    mess: array of string; // сообщения
  end;

type
  DateSpan = record
    fromdate, todate: TDate; // время от, время до
  end;

type
  Item = record
    id: integer; // id итема
    unk: boolean; // независимый рандом (?)
    amount: integer; // кол-во
    prob: single; // вероятность
    time: integer; // огр по времени
  end;

type
  ItemGroup = record
    unk: boolean; // ?
    itemC: integer; // кол-во итемов
    items: array of Item; // итемы
  end;

type
  TeamMember = record
    lvlmin, lvlmax, race, occupation, gender, amountMin, amountMax, quest,
      force: integer;
    { *
      мин лвл, макс лвл, раса, класс, пол, мин кол-во, макс кол-во, наличие квеста,
      фракция
      * }
  end;

type
  Reward = record
    coins, exp, newquest, sp, rep, cult, tpPoint, bankSlot, cupboardSlot,
      wardrobeSlot, accBankSlot, invSlot, petSlot, chi: integer;
    { *
      монеты, опыт, активация квеста, дух, репутация, открытие тп точки, ? слоты,
      слоты гардероб, слоты банка аккаунта, инвентарь, слоты для петов, ярость
      * }
    tp: Loc; // тп в эту точку
    ai: integer; // активация триггера
    unk2: array [0 .. 7] of byte; // ?
    itemGroupC: integer; // кол-во групп с итемами-наградами
    seperator: integer; // ?
    pq: PQReward; // паблик данные о награде
    influence, prestige, unk5, unk6, questSlot: integer;
    // влияние, престиж, ?, ?, слоты в квест-инвентарь
    itemGroups: array of ItemGroup; // группы с итемами
  end;

type
  Answer = record
    questionLink: integer; // вызов при выборе квестового события/реплики
    answerTextB: array [0 .. 127] of byte;
    answerText: string; // текст варианта ответа
    taskLink: integer; // id квеста, с которым происходит событие
  end;

type
  Question = record
    questID, previosQ, questionCharC: integer; // id реплики, предыдущая реплика
    questionB: array of byte;
    questionText: string; // текст реплики
    answerC: integer; // кол-во вариантов ответов
    answers: array of Answer; // варианты ответа
  end;

type
  Dialog = record
    unk: integer; // ?
    dialogTextB: array [0 .. 127] of byte;
    dialogText: string; // если 'RootNode' , значит есть диалог
    questionC: integer; // кол-во реплик нпс
    questions: array of Question; // реплики
  end;

type
  Conversation = record
    promtCharC: integer;
    promtTextB: array of byte;
    promtText: string; // описание квеста
    seperator1, seperator2: integer; // ?
    genCharC: integer;
    genTextB: array of byte;
    genText: string; // сообщение в чат при выполнении
    dialogs: array [0 .. 4] of Dialog; // диалоги
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
    offail: boolean; // провал при выходе из игры
    datefailb: boolean; // провал после следущей даты
    datefail: TDate; // дата провала
    itemfail: boolean; // при потере предмета (?)
    hasdatespan: boolean; // имеет временные рамки
    datespanc: integer; // их кол-во
    timetype: integer; // ?
    unk1, unk2: integer;   // всегда 0
    unk3, unk4, unk5: integer;    // всегда 0
    unk6, unk7: integer;        // некий оффсет
    unk8, unk9: integer;
    {*
    тип цикличности(0 - постояный, 1 - ежедневный, 2 - еженедельный, 3 - ?),
    кол-во повторов в цикл
    *}
    afsq, arsq, ansq: boolean;
    // типы активации подквестов (первый, случайный, следущий)
    opf, ps, cgu, rep, repAF, fon, ofpf, unkbool: boolean;
    { * при отказе/выполнении, проваливается/выполняется родительский квест;
      возможен отказ;
      повторяется (после провала);
      ?;
      при провале род. проваливается;
      провал при смерти;
      * }
    playlim: integer; // максимальное кол-во людей, взявших квест
    triggerLoc, failLoc, validLoc: LocSpan;
    // координаты локации (автоматически берется, провала, доступно)
    unk10: boolean; // требует наличия фракции
    hasInstTP: boolean; // тп внутри локи
    instTP: Loc; // тп при взятии квеста
    aiTrigger: integer;    // включаемый триггер, при взятии квеста
    unk11, unk12, unk13, unk14, unk15, unk16: boolean;
    {* наличие триггера,
    берется автоматически,
    автоматически берется в точке,
    всегда false,
    необходимо умереть,
    показывается в списке квестов
    *}
    unklevel: integer; // рекомендуемый лвл для выполнения
    markAvIc, markAvP: boolean;
    // показывать сообщение о взятом квесте, ?
    qNPC, rNPC: integer; // нпсы (дающий/принимающий квест)
    craftSkill, unk17, unk18, unk19: boolean;
    // крафт квесты (старые),
    pq: PQAudit; // паблик квест инфа
    unk20, unk21: byte; // ?
    lvlmin, lvlmax: integer; // мин и макс лвл
    unk22: boolean; // ?
    reqItemC: integer; // треб. кол-во итемов
    reqItemOff: integer; // некий оффсет, значение не влияет на игровой процесс
    unk23, unk24: boolean; // ?
    givenItemC: integer; // кол-во даваемых итемов в начале квеста
    unk25, unk26, givenItemOff, paid: integer;
    // ?, ?, некий оффсет(зневнип), плата за взятие квеста
    unk27: boolean; // ?
    reqRep, unkOff: integer; // требуемая репутация, некий оффсет(зневнип)
    unk28: boolean; // ?
    reqQuestDoneC: integer; // кол-во треб выполненых квестов
    reqQuestDone: array [0 .. 4] of integer; // id треб квестов
    unk29: array [0 .. 59] of byte; // ?
    unk30: boolean; // ?
    unk31: integer; // ?
    reqCult: integer; // треб культивация
    unk32: array [0 .. 4] of byte; // ?
    unk33: integer; // ?
    unk34: boolean; // ?
    reqGend: integer; // треб пол
    unk35: boolean; // ?(требование классов)
    reqOccupC: integer; // число треб. классов
    reqOccup: array [0 .. 9] of integer; // их требования
    unk36, reqMarried, unk37, unk37_1, unk37_2, reqGM, unk38: boolean;
    // ?, женатики, ?, ?, ?, гм, ?
    unk39: array [0 .. 18] of byte; // ?
    dateUnk: TDate; // некая дата
    unk40: integer; // ?
    unk41: boolean; // ?
    unk42: array [0 .. 6] of byte; // ?
    reqUndoneQuestC: integer; // кол-во треб невыполненых кв
    reqUndoneQuest: array [0 .. 4] of integer; // их id
    reqCraft: array [0 .. 3] of integer;
    // кузнец, портной, ремесленник, аптекарь
    unk43: array [0 .. 34] of byte; // ?
    reqTeamMemberC, unk44: integer; // кол-во правил групп, ?
    unk45: boolean; // ?
    unk46: array [0 .. 8] of byte; // ?
    resPQAuditID, unk47, unk48, reqPQContr: integer; // ?
    unk49: array [0 .. 19] of byte; // ?
    unk50, unk51, unk52: boolean; // ?
    reqForce, reqPrestige, reqInfluence: integer;
    // треб фракция, престиж, влияние
    unk53: array [0 .. 15] of byte; // ?
    reqSuccesType, reqNPCType: integer; // тип сдачи кв, тип нпс(?)
    reqChaseC, reqChaseOff, reqGetItemC, reqGetItemOff, reqCoins: integer;
    // кол-во групп мобов, некий оффсет, кол-во треб итемов, некий оффсет, треб монет
    unk54: array [0 .. 15] of byte; // ?
    unk55: array [0 .. 11] of byte; // ?
    reachLoc: LocSpan; // достигнуть точки
    reqWaitTime: integer; // подождать время
    unk56: array [0 .. 14] of byte; // ?
    unk57: array [0 .. 7] of byte; // ?
    unkOffs: array [0 .. 23] of byte; // некие оффсеты
    parQ, prevQ, nextQ, subQFirst: integer;
    { *
      родительский квест,
      предыдущий подквест,
      следущий подквест,
      первый подквест
      * }
    unk58: boolean; // ?
    recQChanse: single; // вероятность взятия квеста
    unk59: boolean; // ?
    authorTextB: array [0 .. 59] of byte;
    authorText: string; // автор
    DateSpan: array of DateSpan; // временные промежутки
    reqItem: array of Item; // треб итемы
    givenItem: array of Item; // выдаваемые итемы
    reqTeamMember: array of TeamMember; // требования к группе
    reqChases: array of Chase; // треб мобы
    reqGetItem: array of Item; // треб получить итемы
    rewardSucces: Reward; // награда за выполнение
    rewardFailed: Reward; // награда за провал
    rewardTimedC: integer; // кол-во видов наград за разное время
    rewardTimeFactor: array [0 .. 4] of single; // немного не понятно
    rewardTimed: array of Reward; // виды наград за разное время
    unk61: array [0 .. 79] of byte; // всегда нули
    conver: Conversation; // тексты
    subQuestC: integer; // кол-во подквестов
    subQuests: array of Task; // подквесты
  end;

type
TaskArr = array of Task;

implementation

end.
