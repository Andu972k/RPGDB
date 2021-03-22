--Populate OnlineRPG Database

--Profiles
Insert Into Profiles (Name, Password, Email) Values ('BOB', 'BobsPassword', 'BOBsEmail@gmail.BOB');
Insert Into Profiles (Name, Password, Email) Values ('KIM', 'KimsPassword', 'KimsChips@gmail.Kim');

--EquipmentType

Insert Into EquipmentType (Name) Values ('Head');
Insert Into EquipmentType (Name) Values ('Chest');
Insert Into EquipmentType (Name) Values ('Hands');
Insert Into EquipmentType (Name) Values ('Legs');
Insert Into EquipmentType (Name) Values ('Feet');
Insert Into EquipmentType (Name) Values ('Left_Hand');
Insert Into EquipmentType (Name) Values ('Right_Hand');


--Equipment
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Plain Helmet', 1, 'Just a plain Helmet nothing special', 0, 0, 2);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Legendary Helmet', 1, 'Just an Ordinary Legendary Helmet', 10, 20, 100);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Leather armor', 2, 'Made of sturdy leather', 2, 0, 5);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Dragon armor', 2, 'Forged With the Fire of an Elder dragon', 100, 100, 500);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Simple Gloves', 3, 'Made of simple Leather', 0, 2, 2);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Golden Gloves', 3, 'You cannot wear these gloves, go level up to 999', 0, 999, 2);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Simple Leggings', 4, 'Made of simple Leather', 6, 0, 4);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Reality Bending Pants', 4, 'Made from a mystical fabric that can bend reality', 200, 1, 350);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Socks and Sandals', 5, 'Most people would say WHY?', 0, 1, 1);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Socks and Sandals of legend', 5, 'Makes people say why not?', 99, 99, 99);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Dull Dagger', 6, 'Pretty dull indeed', 0, -2, 2);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Shield of shielding', 6, 'Protects you from everything except other shields', 69, 20, 1000);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Sharp Dagger', 7, 'Ouch', 0, 30, -30);
Insert Into Equipment (Name, EquipmentType, Description, HP, Atk, Def) Values ('Wand of Time', 7, 'Stops time for everyone else', 0, 99999999, -400);
--Insert Into Equipment (Name, Type, Description, HP, Atk, Def) Values ('Helmet of Epic Testing', 'Head')

--Items
Insert Into Items (Item_Name, Type, Description, Effect) Values ('Mushroom', 'Ingredient', 'A random mushroom, good on a pizza', 'Does something random');
Insert Into Items (Item_Name, Type, Description, Effect) Values ('Big Health Potion', 'Consumable', 'A big Health potion made by the potion Guild', 'Heals for 60%');
Insert Into Items (Item_Name, Type, Description, Effect) Values ('Skill book', 'Consumable', 'An average skill book', 'Teaches next skill');
Insert Into Items (Item_Name, Type, Description, Effect) Values ('Summoning Scroll', 'Consumable', 'Scroll used by brave adventurers for summoning enemies', 'Summons an enemy of your choice');

--Passives
Insert Into Passives (Passive_Name, Description, Effect) Values ('Patience', 'A good ability', 'Increases Def by 10%');
Insert Into Passives (Passive_Name, Description, Effect) Values ('Pyromaniac', 'Taught by the Wizards of the fire nation', 'Increases fire damage by 20% and applies a burning effect on enemies');

--Skills

Insert Into Skills (Skill_Name, Description, Effect) Values ('Smash', 'A basic skill taught to new adventurers', 'Does 23 Damage');
Insert Into Skills (Skill_Name, Description, Effect) Values ('Full Counter', 'Taught by the Demon Lord in hell', 'Reflects all magic damage at double the strength');


--Characters
Insert Into Characters (Character_Name, HP, Atk, Def, UID) Values ('DIO', 1000000, 99999999, 3434, 2);
Insert Into Characters (Character_Name, HP, Atk, Def, UID, Chest, Legs, Right_Hand) Values ('Lucky', 500, 999, 998, 1, 3, 8, 13);
Insert Into Characters (Character_Name, HP, Atk, Def, UID, Head, Chest, Hands, Legs, Feet, Left_Hand, Right_Hand) Values ('Arthur', 500000000, 1000000, 999999, 2, 2, 4, 6, 8, 10, 12, 14);




--Inventory
Insert Into Inventory (Character_Id, Maximum_Space, Occupied_Space) Values (1, 5600, 2);
Insert Into Inventory (Character_Id, Maximum_Space, Occupied_Space) Values (2, 10, 5);
Insert Into Inventory (Character_Id, Maximum_Space, Occupied_Space) Values (3, 500, 300);


--When equipment is equipped it leaves the iventory, but is added again when it is unequipped
--Inventory_Items
Insert Into Inventory_Items (Inventory_Id, Item_Name, Quantity) Values (1, 'Mushroom', 2);
Insert Into Inventory_Items (Inventory_Id, Item_Name, Quantity) Values (2, 'Skill book', 4);
Insert Into Inventory_Items (Inventory_Id, Item_Name, Quantity) Values (3, 'Big Health Potion', 200);

--Inventory_Equipment
Insert Into Inventory_Equipment (Inventory_Id, Equipment_Id, Quantity) Values (2, 5, 1);
Insert Into Inventory_Equipment (Inventory_Id, Equipment_Id, Quantity) Values (3, 9, 50);
Insert Into Inventory_Equipment (Inventory_Id, Equipment_Id, Quantity) Values (3, 11, 50);

--Characters_Passives
Insert Into Characters_Passives (Character_Id, Passive_Name) Values (1, 'Pyromaniac');
Insert Into Characters_Passives (Character_Id, Passive_Name) Values (3, 'Patience');

--Characters_Skills
Insert Into Characters_Skills (Character_Id, Skill_Name) Values (1, 'Smash');
Insert Into Characters_Skills (Character_Id, Skill_Name) Values (1, 'Full Counter');
Insert Into Characters_Skills (Character_Id, Skill_Name) Values (2, 'Smash');
Insert Into Characters_Skills (Character_Id, Skill_Name) Values (3, 'Smash');

--Updated Name, Description and Effect maximum amount of characters.