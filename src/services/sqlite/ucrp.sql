CREATE TABLE Accounts (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name varchar(24) NOT NULL DEFAULT 'none',
    Password varchar(65) NOT NULL DEFAULT 'none',
    Email varchar(256) NOT NULL DEFAULT '-',
    IP varchar(18) NOT NULL DEFAULT '127.0.0.1', 
	Salt varchar(11) NOT NULL DEFAULT 'none', 
	Admin INTEGER NOT NULL DEFAULT '0'
);

CREATE TABLE Characters (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nick varchar(24) NOT NULL DEFAULT 'none',
    Account int(11) NOT NULL DEFAULT '-1',
    PositionX float NOT NULL DEFAULT '0',
    PositionY float NOT NULL DEFAULT '0',
    PositionZ float NOT NULL DEFAULT '0',
    PositionR float NOT NULL DEFAULT '0',
    Interior int(11) NOT NULL DEFAULT '0',
    VirtualWorld int(11) NOT NULL DEFAULT '0',
    Health float NOT NULL DEFAULT '100.0',
    Kevlar float NOT NULL DEFAULT '0',
    Skin int(11) NOT NULL DEFAULT '289', 
	Crack int(11) NOT NULL DEFAULT '0', 
	HandRight int(11) NOT NULL DEFAULT '0', 
	HandRightAmount int(11) NOT NULL DEFAULT '0', 
	HandLeft int(11) NOT NULL DEFAULT '0', 
	HandLeftAmount int(11) NOT NULL DEFAULT '0', 
	Gender int(11) NOT NULL DEFAULT '0', 
	Years int(11) NOT NULL DEFAULT '0', 
	Money int(11) NOT NULL DEFAULT '0'
);

CREATE TABLE Back (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	IDCharacter int(11) NOT NULL,
	Item int(11) NOT NULL DEFAULT '0',
	Amount int(11) NOT NULL DEFAULT '0', 
	PositionX float NOT NULL DEFAULT '0', 
	PositionY float NOT NULL DEFAULT '0', 
	PositionZ float NOT NULL DEFAULT '0', 
	RotationX float NOT NULL DEFAULT '0', 
	RotationY float NOT NULL DEFAULT '0', 
	RotationZ float NOT NULL DEFAULT '0'
);

CREATE TABLE Inventories (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    IDCharacter int (11) NOT NULL,
    Slot1 int(11) NOT NULL DEFAULT '0',
    SlotAmount1 int(11) NOT NULL DEFAULT '0',
    Slot2 int(11) NOT NULL DEFAULT '0',
    SlotAmount2 int(11) NOT NULL DEFAULT '0',
    Slot3 int(11) NOT NULL DEFAULT '0',
    SlotAmount3 int(11) NOT NULL DEFAULT '0',
    Slot4 int(11) NOT NULL DEFAULT '0',
    SlotAmount4 int(11) NOT NULL DEFAULT '0',
    Slot5 int(11) NOT NULL DEFAULT '0',
    SlotAmount5 int(11) NOT NULL DEFAULT '0'
);