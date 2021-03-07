--Drop Procedure If Exists dbo.GetUnusedEquipment
--Use OnlineRPG

Create Procedure dbo.GetUnusedEquipment
AS
	Set NOCOUNT ON;
	Begin
		Select e.Equipment_Id, e.Name, e.Type From Equipment e
		Left join Characters c
		On e.Equipment_Id = c.Head
		Where c.Head is NULL And Type = 'Head';
		Select e.Equipment_Id, e.Name, e.Type From Equipment e
		Left join Characters c
		On e.Equipment_Id = c.Chest
		Where c.Chest is NULL And Type = 'Chest';
		Select e.Equipment_Id, e.Name, e.Type From Equipment e
		Left join Characters c
		On e.Equipment_Id = c.Hands
		Where c.Hands is NULL And Type = 'Hands';
		Select e.Equipment_Id, e.Name, e.Type From Equipment e
		Left join Characters c
		On e.Equipment_Id = c.Legs
		Where c.Legs is NULL And Type = 'Legs';
		Select e.Equipment_Id, e.Name, e.Type From Equipment e
		Left join Characters c
		On e.Equipment_Id = c.Feet
		Where c.Feet is NULL And Type = 'Feet';
		Select e.Equipment_Id, e.Name, e.Type From Equipment e
		Left join Characters c
		On e.Equipment_Id = c.Left_Hand
		Where c.Left_Hand is NULL And Type = 'Left_Hand';
		Select e.Equipment_Id, e.Name, e.Type From Equipment e
		Left join Characters c
		On e.Equipment_Id = c.Right_Hand
		Where c.Right_Hand is NULL And Type = 'Right_Hand';
	END;
