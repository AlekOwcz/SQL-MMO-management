CREATE TABLE USERS (
    ACCOUNT_NAME VARCHAR2(64) NOT NULL CONSTRAINT PK_ACC_NAME PRIMARY KEY,
    E_MAIL VARCHAR2(96) NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL,
    DATE_OF_REGISTRATION DATE DEFAULT ON NULL CURRENT_DATE NOT NULL,
    ACC_TYPE VARCHAR2(16) NOT NULL,
    MEM_SINCE DATE,
    PREM_CURRENCY NUMBER(9),
    FREE_MISSIONS NUMBER(3),
    CONSTRAINT CHK_ACC_TYPE CHECK(
        (ACC_TYPE = 'FREE' AND FREE_MISSIONS IS NOT NULL AND FREE_MISSIONS>0 AND MEM_SINCE IS NULL AND PREM_CURRENCY IS NULL)
    OR
        (ACC_TYPE = 'PREMIUM' AND FREE_MISSIONS IS NULL AND PREM_CURRENCY>=0 AND MEM_SINCE IS NOT NULL AND PREM_CURRENCY IS NOT NULL)
    ),
    CONSTRAINT CHK_SUB_AFTER_REGISTER CHECK(DATE_OF_REGISTRATION <= MEM_SINCE)
);

CREATE TABLE MEGASERVER (
    CONTINENT VARCHAR2(16) NOT NULL CONSTRAINT PK_CONTINENT PRIMARY KEY,
    PLAYER_LIM NUMBER(8) NOT NULL CONSTRAINT CHK_PLAYER_LIM CHECK(PLAYER_LIM>0)
);

CREATE TABLE RACE (
    NAME VARCHAR2(32) NOT NULL CONSTRAINT PK_RACE_NAME PRIMARY KEY,
    SPECIALIZATION VARCHAR2(64) NOT NULL CONSTRAINT CHK_RACE_SPECIALIZATION CHECK(SPECIALIZATION IN ('MELEE','RANGED','MAGIC')),
    BOOSTED_ATTRIBUTE VARCHAR2(16) NOT NULL CONSTRAINT CHK_BOOSTED_ATTRIBUTE CHECK(BOOSTED_ATTRIBUTE IN ('HEALTH','STRENGTH','INTELLIGENCE','DEXTERITY'))
);

CREATE TABLE CLASS (
    NAME VARCHAR2(32) NOT NULL CONSTRAINT PK_CLASS_NAME PRIMARY KEY,
    TYPE VARCHAR2(32) NOT NULL CONSTRAINT CHK_CLASS_TYPE CHECK(TYPE IN ('MELEE','RANGED','MAGIC')), 
    WEAPON_TYPE VARCHAR2(32) NOT NULL CONSTRAINT CHK_CLASS_WEAPON_TYPE CHECK(WEAPON_TYPE IN ('MELEE','RANGED','MAGIC')),
    HEALTH NUMBER(9) NOT NULL,
    STRENGTH NUMBER(3) NOT NULL,
    DEXTERITY NUMBER(3) NOT NULL,
    INTELLIGENCE NUMBER(3) NOT NULL,
    CONSTRAINT CHK_CLASS_POSITIVE_ATTRIBUTE CHECK(HEALTH > 0 AND STRENGTH >= 0 AND DEXTERITY >= 0 AND INTELLIGENCE >= 0)
);

CREATE TABLE HOUSE (
    LOCATION VARCHAR2(64) NOT NULL,
    SERVER VARCHAR2(16) NOT NULL CONSTRAINT FK_HOUSE_SERVER REFERENCES MEGASERVER(CONTINENT) ON DELETE CASCADE,
    ORIG_PRICE NUMBER(6) NOT NULL,
    CURR_PRICE NUMBER(6),
    NUM_OF_ROOMS NUMBER(3) NOT NULL,
    NUM_OF_FLOORS NUMBER(2) NOT NULL,
    HOUSE_SIZE NUMBER(3) NOT NULL,
    OWNER VARCHAR2(64) CONSTRAINT FK_HOUSE_OWNER REFERENCES USERS(ACCOUNT_NAME) ON DELETE SET NULL,
    CONSTRAINT PK_HOUSE PRIMARY KEY(LOCATION, SERVER),
    CONSTRAINT CHK_HOUSE_POSITIVE_ATTRIBUTES CHECK(ORIG_PRICE > 0 AND NUM_OF_ROOMS > 0 AND NUM_OF_FLOORS > 0)
);

CREATE TABLE SPELLS (
    NAME VARCHAR2(64) NOT NULL CONSTRAINT PK_SPELL_NAME PRIMARY KEY,
    SCHOOL_OF_MAGIC VARCHAR2(32) NOT NULL CONSTRAINT CHK_SPELL_SCHOOL CHECK(SCHOOL_OF_MAGIC IN ('DESTRUCTION','RESTORATION','PROTECTION', 'VANITY')),
    ATTACK NUMBER(3),
    HEALING NUMBER(3),
    DEFENSE NUMBER(3),
    CONSTRAINT CHK_SPELL_ATTRIBUTES_NULL CHECK(
        (SCHOOL_OF_MAGIC='VANITY' AND ATTACK IS NULL AND HEALING IS NULL AND DEFENSE IS NULL)
    OR
        (SCHOOL_OF_MAGIC IN ('DESTRUCTION','RESTORATION','PROTECTION') AND 
         ((ATTACK IS NOT NULL AND ATTACK > 0) OR (HEALING IS NOT NULL AND HEALING > 0) OR (DEFENSE IS NOT NULL AND DEFENSE > 0)))
    )
);

CREATE BITMAP INDEX IDX_BIT_SPELL_SCHOOL ON SPELLS(SCHOOL_OF_MAGIC);

CREATE TABLE ITEMS (
    NAME VARCHAR2(64) NOT NULL CONSTRAINT PK_ITEM_NAME PRIMARY KEY,
    CATEGORY VARCHAR2(32) NOT NULL CONSTRAINT CHK_ITEM_CATEGORY CHECK(CATEGORY IN ('RANGED', 'MELEE', 'MAGIC', 'ARMOR', 'ACCESSORY')),
    ATTACK NUMBER(3),
    DEFENSE NUMBER(3),
    DEXTERITY NUMBER(3),
    INTELLIGENCE NUMBER(3),
    HEALTH NUMBER(3),
    CONSTRAINT CHK_ITEM_CATEGORY_ATTRIBUTES CHECK(
        (CATEGORY IN ('RANGED','MELEE','MAGIC') AND DEXTERITY IS NULL AND INTELLIGENCE IS NULL AND HEALTH IS NULL AND ATTACK IS NOT NULL AND DEFENSE IS NOT NULL)
    OR
        (CATEGORY = 'ARMOR' AND ATTACK IS NULL AND DEFENSE IS NOT NULL AND DEXTERITY IS NOT NULL AND INTELLIGENCE IS NOT NULL AND HEALTH IS NOT NULL)
    OR
        (CATEGORY = 'ACCESSORY' AND ATTACK IS NULL AND DEFENSE IS NULL AND DEXTERITY IS NOT NULL AND INTELLIGENCE IS NOT NULL AND HEALTH IS NOT NULL)
    )
);

CREATE BITMAP INDEX IDX_BIT_ITEM_CAT ON ITEMS(CATEGORY);

CREATE TABLE CHARS (
    ID NUMBER GENERATED ALWAYS AS IDENTITY,
    ACCOUNT VARCHAR2(64) NOT NULL CONSTRAINT FK_CHAR_ACCOUNT REFERENCES USERS(ACCOUNT_NAME) ON DELETE CASCADE,
    SERVER VARCHAR2(16) NOT NULL CONSTRAINT FK_CHAR_SERVER REFERENCES MEGASERVER(CONTINENT),
    CHAR_NAME VARCHAR2(64) NOT NULL,
    CLASS VARCHAR2(32) NOT NULL CONSTRAINT FK_CHAR_CLASS REFERENCES CLASS(NAME),
    RACE VARCHAR2(32) NOT NULL CONSTRAINT FK_CHAR_RACE REFERENCES RACE(NAME),
    CREATION_DATE DATE NOT NULL,
    PLAY_TIME NUMBER(8,2),
    GUILD VARCHAR2(64),
    IS_GUILD_LEADER CHAR(1),
    CONSTRAINT PK_CHAR_ID PRIMARY KEY(ID),
    CONSTRAINT UN_CHARACTER UNIQUE (CHAR_NAME, ACCOUNT, SERVER),
    CONSTRAINT CHK_CHAR_PLAY_TIME CHECK((PLAY_TIME IS NOT NULL AND PLAY_TIME >= 0) OR PLAY_TIME IS NULL)
);

CREATE TABLE GUILDS (
    GUILD_NAME VARCHAR2(64) NOT NULL CONSTRAINT PK_GUILD_NAME PRIMARY KEY,
    SERVER VARCHAR2(16) NOT NULL CONSTRAINT FK_GUILD_SERVER REFERENCES MEGASERVER(CONTINENT) ON DELETE CASCADE,
    LEADER NUMBER NOT NULL CONSTRAINT FK_GUILD_LEADER REFERENCES CHARS(ID) ON DELETE CASCADE,
    BASE VARCHAR2(32) NOT NULL,
    IN_ALLIANCE_WITH VARCHAR2(64) CONSTRAINT FK_GUILD_IN_ALLIANCE REFERENCES GUILDS(GUILD_NAME) ON DELETE SET NULL,
    CONSTRAINT UN_GUILD_LEADER UNIQUE (LEADER),
    CONSTRAINT CHK_NOT_ALLIANCE_WITH_SELF CHECK(IN_ALLIANCE_WITH <> GUILD_NAME)
);


ALTER TABLE CHARS
    ADD CONSTRAINT FK_CHAR_GUILD FOREIGN KEY(GUILD) REFERENCES GUILDS(GUILD_NAME);
ALTER TABLE CHARS
    ADD CONSTRAINT CHK_GUILD_LEADER CHECK((GUILD IS NOT NULL AND IS_GUILD_LEADER IN ('T','F')) OR GUILD IS NULL);
    
CREATE TABLE CHARACTER_ITEM (
    CHARACTER_ID NUMBER NOT NULL CONSTRAINT FK_CHARACTER_ITEM_ID REFERENCES CHARS(ID) ON DELETE CASCADE,
    ITEM VARCHAR2(64) NOT NULL CONSTRAINT FK_CHARACTER_ITEM_NAME REFERENCES ITEMS(NAME) ON DELETE CASCADE,
    AMOUNT NUMBER(3) NOT NULL CONSTRAINT CHK_AMOUNT_POSITIVE CHECK(AMOUNT >= 0),
    CONSTRAINT PK_CHARACTER_ITEM PRIMARY KEY (CHARACTER_ID, ITEM)
);

CREATE TABLE CHARACTER_SPELL (
    CHARACTER_ID NUMBER NOT NULL CONSTRAINT FK_CHARACTER_SPELL_ID REFERENCES CHARS(ID) ON DELETE CASCADE,
    SPELL VARCHAR2(64) NOT NULL CONSTRAINT FK_CHARACTER_SPELL_NAME REFERENCES SPELLS(NAME) ON DELETE CASCADE,
    SPELL_LEVEL NUMBER(3) CONSTRAINT CHK_SPELL_LEVEL_POSITIVE CHECK((SPELL_LEVEL IS NOT NULL AND SPELL_LEVEL > 0) OR SPELL_LEVEL IS NULL),
    CONSTRAINT PK_CHARACTER_SPELL PRIMARY KEY (CHARACTER_ID, SPELL)
);



create or replace FUNCTION count_members(name VARCHAR2)
RETURN INTEGER IS
number_of_members INTEGER;
BEGIN
SELECT COUNT(*) INTO number_of_members FROM GUILDS WHERE GUILD_NAME LIKE name;
RETURN number_of_members;
END;



create or replace PROCEDURE give_house(loc VARCHAR2, serv VARCHAR2, user VARCHAR2) 
IS
BEGIN
UPDATE HOUSE SET OWNER = user WHERE LOCATION = loc AND SERVER = serv;
END;



CREATE OR REPLACE TRIGGER onUpdateLeaderCheck
BEFORE INSERT OR UPDATE OR DELETE ON GUILDS
FOR EACH ROW
DECLARE
isLeader CHAR(1);
isLeaderException EXCEPTION;
BEGIN

IF DELETING THEN
    UPDATE CHARS SET GUILD=NULL,IS_GUILD_LEADER = NULL WHERE GUILD LIKE :OLD.GUILD_NAME;
END IF;

IF UPDATING OR INSERTING THEN
SELECT IS_GUILD_LEADER INTO isLeader FROM CHARS WHERE ID = :NEW.LEADER;
    IF isLeader = 'T' AND (:OLD.LEADER <> :NEW.LEADER AND :OLD.LEADER IS NOT NULL) THEN
        RAISE isLeaderException;
    END IF;
END IF;
IF UPDATING THEN
    UPDATE CHARS SET IS_GUILD_LEADER = 'F' WHERE ID LIKE :OLD.LEADER;
END IF;
END;



CREATE OR REPLACE TRIGGER onUpdateLeaderAfter
AFTER INSERT OR UPDATE ON GUILDS
FOR EACH ROW
BEGIN
UPDATE CHARS SET GUILD = :NEW.GUILD_NAME, IS_GUILD_LEADER = 'T' WHERE ID = :NEW.LEADER;
END;

