Use master
Drop Database if EXISTS OnlineRPG

Create Database OnlineRPG;

Use OnlineRPG

Create Table Profiles (
UID int Identity Primary Key,
Name Nvarchar(14) Not Null,
Password Nvarchar(16) Not Null,
Email Nvarchar(60) Not Null
);

Create Table Skills (
Skill_Name Nvarchar(30) Primary Key,
Description Nvarchar(150) Null,
Effect Nvarchar(150) Not Null
);

Create Table Passives (
Passive_Name Nvarchar(30) Primary Key,
Description Nvarchar(150) Null,
Effect Nvarchar(150) Not Null
);

Create Table Items (
Item_Name Nvarchar(30) Primary Key,
Type Nvarchar(15) Not Null,
Description Nvarchar(150) Null,
Effect Nvarchar(150) Not Null
);

Create Table EquipmentType (
EquipmentType_Id TinyInt Identity Primary Key,
Name Nvarchar(10) Not Null
);

Create Table Equipment (
Equipment_Id SmallInt Identity Primary Key,
Name Nvarchar(30) Not Null,
EquipmentType TinyInt Not Null,
Description Nvarchar(150) Null,
HP Int Default 0,
Atk Int Default 0,
Def Int Default 0,
Foreign Key (EquipmentType) References EquipmentType(EquipmentType_Id)
);

Create Table Characters (
Character_Id Int Identity Primary Key,
Character_Name Nvarchar(18) Not Null,
HP Int Not Null,
Atk Int Not Null,
Def Int Not Null,
UID Int Not Null,
Head SmallInt Null,
Chest SmallInt Null,
Hands SmallInt Null,
Legs SmallInt Null,
Feet SmallInt Null,
Left_Hand SmallInt Null,
Right_Hand SmallInt Null,
Foreign Key (UID) References Profiles(UID),
Foreign Key (Head) References Equipment(Equipment_ID),
Foreign Key (Chest) References Equipment(Equipment_ID),
Foreign Key (Hands) References Equipment(Equipment_ID),
Foreign Key (Legs) References Equipment(Equipment_ID),
Foreign Key (Feet) References Equipment(Equipment_ID),
Foreign Key (Left_Hand) References Equipment(Equipment_ID),
Foreign Key (Right_Hand) References Equipment(Equipment_ID)
);

Create Table Inventory (
Inventory_Id Int Identity Primary Key,
Character_Id Int Not Null,
Maximum_Space Int Not Null,
Occupied_Space Int Not Null,
Foreign Key (Character_Id) References Characters(Character_Id)
);

Create Table Inventory_Items (
Inventory_Id Int Not Null,
Item_Name Nvarchar(30) Not Null,
Quantity Int Not Null,
Primary Key (Inventory_Id, Item_Name),
Foreign Key (Inventory_Id) References Inventory(Inventory_Id),
Foreign Key (Item_Name) References Items(Item_Name)
);

Create Table Inventory_Equipment (
Inventory_Id Int Not Null,
Equipment_Id SmallInt Not Null,
Quantity Int Not Null,
Primary Key (Inventory_Id, Equipment_Id),
Foreign Key (Inventory_Id) References Inventory(Inventory_Id),
Foreign Key (Equipment_Id) References Equipment(Equipment_Id)
);

Create Table Characters_Passives (
Character_Id Int Not Null,
Passive_Name Nvarchar(30) Not Null,
Primary Key (Character_Id, Passive_Name),
Foreign Key (Character_Id) References Characters(Character_Id),
Foreign Key (Passive_Name) References Passives(Passive_Name)
);

Create Table Characters_Skills (
Character_Id Int Not Null,
Skill_Name Nvarchar(30) Not Null,
Primary Key (Character_Id, Skill_name),
Foreign Key (Character_Id) References Characters(Character_Id),
Foreign Key (Skill_Name) References SKills(Skill_Name)
);