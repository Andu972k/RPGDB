--Drop Procedure If Exists dbo.GetUnusedEquipment
--Use OnlineRPG

Create Procedure dbo.GetUnusedEquipment
AS
	Set NOCOUNT ON;
	Begin
		Select et.Name As Type, e.Equipment_Id, e.Name, e.HP, e.Atk, e.Def, e.Description from Equipment e
		Left Join EquipmentType et On e.EquipmentType = et.EquipmentType_Id
		Full Join Characters c On e.Equipment_Id = c.Head OR c.Chest = e.Equipment_Id OR c.Hands = e.Equipment_Id OR c.Legs = e.Equipment_Id OR c.Feet = e.Equipment_Id OR c.Left_Hand = e.Equipment_Id OR c.Right_Hand = e.Equipment_Id
		Where c.Character_Id is Null
		Order by et.Name, e.Equipment_Id
	END;

	--Version 1
		--Select e.Equipment_Id, e.Name, e.EquipmentType From Equipment e
		--Left join Characters c
		--On e.Equipment_Id = c.Head
		--Where c.Head is NULL And EquipmentType = 'Head';
		--Select e.Equipment_Id, e.Name, e.EquipmentType From Equipment e
		--Left join Characters c
		--On e.Equipment_Id = c.Chest
		--Where c.Chest is NULL And EquipmentType = 'Chest';
		--Select e.Equipment_Id, e.Name, e.EquipmentType From Equipment e
		--Left join Characters c
		--On e.Equipment_Id = c.Hands
		--Where c.Hands is NULL And EquipmentType = 'Hands';
		--Select e.Equipment_Id, e.Name, e.EquipmentType From Equipment e
		--Left join Characters c
		--On e.Equipment_Id = c.Legs
		--Where c.Legs is NULL And EquipmentType = 'Legs';
		--Select e.Equipment_Id, e.Name, e.EquipmentType From Equipment e
		--Left join Characters c
		--On e.Equipment_Id = c.Feet
		--Where c.Feet is NULL And EquipmentType = 'Feet';
		--Select e.Equipment_Id, e.Name, e.EquipmentType From Equipment e
		--Left join Characters c
		--On e.Equipment_Id = c.Left_Hand
		--Where c.Left_Hand is NULL And EquipmentType = 'Left_Hand';
		--Select e.Equipment_Id, e.Name, e.EquipmentType From Equipment e
		--Left join Characters c
		--On e.Equipment_Id = c.Right_Hand
		--Where c.Right_Hand is NULL And EquipmentType = 'Right_Hand';

	--https://docs.microsoft.com/en-us/sql/t-sql/statements/create-procedure-transact-sql?view=sql-server-ver15