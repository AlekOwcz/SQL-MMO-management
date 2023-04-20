--                        NAME               E-MAIL                     DATE OF BIRTH         DATE OF REGISTRATION     ACC. TYPE      MEMBER SINCE        CURR    FREE MISSIONS
INSERT INTO USERS VALUES('Gnolf46',         'gnolf46@gmail.com',        DATE '1996-05-23',    CURRENT_DATE,           'FREE',         NULL,               NULL,   15);
INSERT INTO USERS VALUES('pablo.gonzales',  'pablo.gonzales@onet.pl',   DATE '2007-10-09',    DATE '2021-02-22',      'FREE',         NULL,               NULL,   7);
INSERT INTO USERS VALUES('Akira',           'aki98@onet.pl',            DATE '1998-07-11',    DATE '2022-04-17',      'FREE',         NULL,               NULL,   11);
INSERT INTO USERS VALUES('LeL2077',         'lel77@gmail.com',          DATE '1986-10-04',    CURRENT_DATE,           'PREMIUM',      CURRENT_DATE,       2000,   NULL);
INSERT INTO USERS VALUES('Xarxes',          'xaxaxa@mail.es',           DATE '2001-03-03',    DATE '2019-06-17',      'PREMIUM',      DATE '2019-08-21',  6287,   NULL);
INSERT INTO USERS VALUES('NamelessHero',    'gandalf.fan@mail.cz',      DATE '2004-12-21',    DATE '2022-10-03',      'PREMIUM',      DATE '2022-11-03',  1034,   NULL);
INSERT INTO USERS VALUES('KING',            'olaf94@post.sk',           DATE '1994-01-30',    DATE '2021-11-11',      'PREMIUM',      DATE '2022-01-03',  0,      NULL);

INSERT INTO MEGASERVER VALUES('EU', 25000);
INSERT INTO MEGASERVER VALUES('NA', 20000);
INSERT INTO MEGASERVER VALUES('JP', 10000);
INSERT INTO MEGASERVER VALUES('CH', 30000);

--                                      SPECIAL.    BOOSTER ATTR.
INSERT INTO RACE VALUES('HUMAN',        'MELEE',    'INTELLIGENCE');
INSERT INTO RACE VALUES('ORC',          'MELEE',    'STRENGTH');
INSERT INTO RACE VALUES('DWARF',        'MELEE',    'HEALTH');
INSERT INTO RACE VALUES('HIGH ELF',     'MAGIC',    'INTELLIGENCE');
INSERT INTO RACE VALUES('LIZARDMEN',    'MAGIC',    'DEXTERITY');
INSERT INTO RACE VALUES('HALF-DRAGON',  'MAGIC',    'STRENGTH');
INSERT INTO RACE VALUES('DARK ELF',     'RANGED',   'STRENGTH');
INSERT INTO RACE VALUES('IMPERIAL',     'RANGED',   'HEALTH');
INSERT INTO RACE VALUES('WOOD ELF',     'RANGED',   'DEXTERITY');

--                                           SPEC.      WEAPON      HP      STR     DEX     INT
INSERT INTO CLASS VALUES('DRAGON KNIGHT',   'MAGIC',    'MELEE',    800,    80,     45,     70);
INSERT INTO CLASS VALUES('NECROMANCER',     'MAGIC',    'MAGIC',    500,    40,     60,     95);
INSERT INTO CLASS VALUES('SHAMAN',          'MAGIC',    'RANGED',   600,    45,     50,     80);
INSERT INTO CLASS VALUES('NIGHT BLADE',     'MELEE',    'MELEE',    450,    70,     85,     65);
INSERT INTO CLASS VALUES('BARBARIAN',       'MELEE',    'MELEE',    700,    77,     50,     20);
INSERT INTO CLASS VALUES('PALADIN',         'MELEE',    'MELEE',    1000,   100,    20,     55);
INSERT INTO CLASS VALUES('THIEF',           'RANGED',   'RANGED',   400,    47,     95,     50);
INSERT INTO CLASS VALUES('MONK',            'RANGED',   'MAGIC',    550,    20,     55,     85);
INSERT INTO CLASS VALUES('ARCHER',          'RANGED',   'RANGED',   400,    65,     75,     50);

--                        LOC                               SERV    ORIG_PIRCE  CURR_PRICE  ROOMS   FLOORS  SIZE    OWNER
INSERT INTO HOUSE VALUES('BRAVIL, SLUMS',                  'EU',   600,        NULL,       3,      1,      30,     'NamelessHero');
INSERT INTO HOUSE VALUES('BRAVIL, MARKET',                 'EU',   1250,       NULL,       6,      2,      54,     'pablo.gonzales');
INSERT INTO HOUSE VALUES('AURIDON, PALACE SQUARE',          'NA',   3467,       NULL,       8,      3,      77,      NULL);
INSERT INTO HOUSE VALUES('SKINGRAD, MARKET',                'NA',   1454,       NULL,       5,      2,      60,     'KING');
INSERT INTO HOUSE VALUES('SKINGRAD, MARKET',                'JP',   1454,       NULL,       5,      2,      60,      NULL);
INSERT INTO HOUSE VALUES('FALKREATH, MAIN GATE',            'NA',   600,        700,        3,      1,      30,     'LeL2077');
INSERT INTO HOUSE VALUES('GNISIS',                          'JP',   600,        NULL,       3,      1,      30,     'Akira');
INSERT INTO HOUSE VALUES('BALMORA, RESIDENTIAL DISTRICT',   'CH',   1999,       NULL,       7,      2,      124,     NULL);
INSERT INTO HOUSE VALUES('DESHAAN, SLUMS',                  'CH',   450,        400,        2,      1,      24,     'Xarxes');
INSERT INTO HOUSE VALUES('DESHAAN, GATE',                   'EU',   899,        NULL,       4,      1,      65,     'Xarxes');
INSERT INTO HOUSE VALUES('STONEHILLS, FARM',                'NA',   2570,       NULL,       9,      2,      90,      NULL);

INSERT INTO CHARS VALUES(DEFAULT, 'pablo.gonzales',     'EU',   'Pablo II',             'DRAGON KNIGHT',       'HUMAN',          CURRENT_DATE,       NULL, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'pablo.gonzales',     'EU',   'Pablo',                'BARBARIAN',           'ORC',            DATE '2021-02-22',  56.5, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'pablo.gonzales',     'NA',   'Pablo',                'NIGHT BLADE',         'DARK ELF',       DATE '2021-06-12',  12.25, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'Akira',              'NA',   'Ben the Exiled',       'NECROMANCER',         'HIGH ELF',       DATE '2022-04-18',  102, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'Akira',              'NA',   'Maiq',                 'SHAMAN',              'LIZARDMEN',      DATE '2022-04-23',  34.6, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'LeL2077',            'JP',   'LeL2077',              'PALADIN',             'IMPERIAL',       CURRENT_DATE,       NULL, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'Xarxes',             'CH',   'Tang Mo',              'DRAGON KNIGHT',       'HALF-DRAGON',    DATE '2019-01-31',  543, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'Xarxes',             'CH',   'Xarxes I',             'ARCHER',              'WOOD ELF',       DATE '2020-02-22',  322, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'Xarxes',             'JP',   'Byon',                 'MONK',                'DWARF',          DATE '2022-08-17',  46.4, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'NamelessHero',       'EU',   'Neidhardt',            'THIEF',               'DARK ELF',       DATE '2022-10-03',  18.2, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'NamelessHero',       'EU',   'King Arthur',          'PALADIN',             'IMPERIAL',       DATE '2022-10-04',  30, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'KING',               'NA',   'Jeff the Killer',      'NIGHT BLADE',         'LIZARDMEN',      DATE '2021-11-11',  675.76, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'KING',               'NA',   'King',                 'THIEF',               'WOOD ELF',       DATE '2022-12-11',  17, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'KING',               'JP',   'Kingu',                'BARBARIAN',           'HUMAN',          DATE '2021-12-31',  33.3, NULL, NULL);
INSERT INTO CHARS VALUES(DEFAULT, 'KING',               'CH',   'Zhong Xina',           'SHAMAN',              'ORC',            DATE '2023-01-01',  2, NULL, NULL);


INSERT INTO GUILDS VALUES('Northern Islands Alliance',  'EU',   1,      'Skingrad',     NULL);
INSERT INTO GUILDS VALUES('Knights of the Nine',        'CH',   15,     'Kvatch',       NULL);
INSERT INTO GUILDS VALUES('Golden Coast Guard',         'NA',   5,      'Stormhaven',   'Northern Islands Alliance');
INSERT INTO GUILDS VALUES('Fellowship of the Donut',    'NA',   3,      'Bravil',       'Golden Coast Guard');
INSERT INTO GUILDS VALUES('The Horde',                  'EU',   11,     'Kvatch',       'Northern Islands Alliance');
INSERT INTO GUILDS VALUES('House Telvanni',             'JP',   9,      'Grahtwood',    NULL);

INSERT INTO ITEMS VALUES('Wooden Bow',              'RANGED',       80,     30, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Crossbow',                'RANGED',       120,    52, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Throwing Knives',         'RANGED',       200,    60, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Steel Longsword',         'MELEE',        150,    75, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Iron Spear',              'MELEE',        120,    70, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Poisoned Daggers',        'MELEE',        190,    58, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Wand of Fire',            'MAGIC',        100,    10, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Staff of Winter',         'MAGIC',        130,    45, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Book of Knives',          'MAGIC',        210,    25, NULL, NULL, NULL);
INSERT INTO ITEMS VALUES('Wizard Hat',              'ARMOR',        NULL,   20,     0,      50,     0);
INSERT INTO ITEMS VALUES('Boots of Blinding Speed', 'ARMOR',        NULL,   15,     75,     0,      0);
INSERT INTO ITEMS VALUES('Steel Armor',             'ARMOR',        NULL,   120,    0,      0,      40);
INSERT INTO ITEMS VALUES('Robe of Vitality',        'ARMOR',        NULL,   0,      0,      0,      500);
INSERT INTO ITEMS VALUES('Enchanted Shield',        'ARMOR',        NULL,   75,     15,     15,     50);
INSERT INTO ITEMS VALUES('Amulet of Akatosh',       'ACCESSORY',    NULL,   NULL,   25,     25,     50);
INSERT INTO ITEMS VALUES('Ring of Protection',      'ACCESSORY',    NULL,   NULL,   25,     0,      100);
INSERT INTO ITEMS VALUES('Ring of Knowledge',       'ACCESSORY',    NULL,   NULL,   0,      40,     0);
INSERT INTO ITEMS VALUES('Enchanted Belt',          'ACCESSORY',    NULL,   NULL,   5,     10,      25);

INSERT INTO CHARACTER_ITEM VALUES(1,  'Steel Longsword', 2);
INSERT INTO CHARACTER_ITEM VALUES(1,  'Steel Armor', 1);
INSERT INTO CHARACTER_ITEM VALUES(5,  'Wizard Hat', 3);
INSERT INTO CHARACTER_ITEM VALUES(12, 'Throwing Knives', 25);
INSERT INTO CHARACTER_ITEM VALUES(8,  'Wooden Bow', 2);
INSERT INTO CHARACTER_ITEM VALUES(8,  'Crossbow', 1);
INSERT INTO CHARACTER_ITEM VALUES(6,  'Robe of Vitality', 1);
INSERT INTO CHARACTER_ITEM VALUES(6,  'Ring of Protection', 2);
INSERT INTO CHARACTER_ITEM VALUES(6,  'Iron Spear', 1);

INSERT INTO SPELLS VALUES('Firebolt',               'DESTRUCTION',  75,     NULL,      NULL);
INSERT INTO SPELLS VALUES('Ligtning strike',        'DESTRUCTION',  120,    NULL,      NULL);
INSERT INTO SPELLS VALUES('Life steal',             'DESTRUCTION',  20,     NULL,      NULL);
INSERT INTO SPELLS VALUES('Ancestors Blessing',     'RESTORATION',  NULL,   200,       0);
INSERT INTO SPELLS VALUES('Soothing touch',         'RESTORATION',  NULL,   125,       25);
INSERT INTO SPELLS VALUES('Angelic Intervention',   'RESTORATION',  NULL,   500,       100);
INSERT INTO SPELLS VALUES('Unmovable Shield',       'PROTECTION',   NULL,   NULL,      75);
INSERT INTO SPELLS VALUES('Great Wall',             'PROTECTION',   NULL,   NULL,      150);
INSERT INTO SPELLS VALUES('Titans durability',      'PROTECTION',   NULL,   NULL,      99);
INSERT INTO SPELLS VALUES('Festive spirit',         'VANITY',       NULL,   NULL,      NULL);
INSERT INTO SPELLS VALUES('Mud throw',              'VANITY',       NULL,   NULL,      NULL);

INSERT INTO CHARACTER_SPELL VALUES(5,       'Unmovable Shield',         5);
INSERT INTO CHARACTER_SPELL VALUES(5,       'Ligtning strike',          10);
INSERT INTO CHARACTER_SPELL VALUES(9,       'Angelic Intervention',     1);
INSERT INTO CHARACTER_SPELL VALUES(9,       'Soothing touch',           5);
INSERT INTO CHARACTER_SPELL VALUES(9,       'Festive spirit',           NULL);
INSERT INTO CHARACTER_SPELL VALUES(7,       'Firebolt',                 25);
INSERT INTO CHARACTER_SPELL VALUES(7,       'Titans durability',        3);
INSERT INTO CHARACTER_SPELL VALUES(10,      'Titans durability',        3);
INSERT INTO CHARACTER_SPELL VALUES(10,      'Festive spirit',           NULL);
INSERT INTO CHARACTER_SPELL VALUES(10,      'Mud throw',                NULL);
INSERT INTO CHARACTER_SPELL VALUES(14,      'Great Wall',              1);
INSERT INTO CHARACTER_SPELL VALUES(14,      'Life steal',              5);

