--Drop Trigger If Exists dbo.EquipEquipment


Create Trigger dbo.EquipEquipment
	On dbo.Characters
	After Update
As Begin
	Set NOCOUNT On;
	If UPDATE (Head)
		Begin
			If (Select Quantity From inserted i Inner join Inventory Inv On i.Character_Id = Inv.Character_Id Inner join Inventory_Equipment InvE On Inv.Inventory_Id = InvE.Inventory_Id And i.Head = InvE.Equipment_Id) = 1
				Delete From Inventory_Equipment
				From inserted
				Where Equipment_Id = inserted.Head And (Select Inv.Inventory_Id From inserted i Inner join Inventory Inv On i.Character_Id = Inv.Character_Id) = Inventory_Id
			if (Select Quantity From inserted i Inner join Inventory Inv On i.Character_Id = Inv.Character_Id Inner join Inventory_Equipment InvE On Inv.Inventory_Id = InvE.Inventory_Id And i.Head = InvE.Equipment_Id) > 1
				Update Inventory_Equipment
				set Quantity = Quantity-1
				From inserted
				Where Equipment_Id = inserted.Head And (Select Inv.Inventory_Id From inserted i Inner join Inventory Inv On i.Character_Id = Inv.Character_Id) = Inventory_Id
			
		End;
End;

--https://stackoverflow.com/questions/14203052/2-errors-the-multi-part-identifier-inserted-name-could-not-be-bound
--https://stackoverflow.com/questions/12137102/sql-update-trigger-only-when-column-is-modified
--https://docs.microsoft.com/en-us/sql/relational-databases/triggers/use-the-inserted-and-deleted-tables?view=sql-server-ver15
--https://stackoverflow.com/questions/3252935/implementing-if-condition-within-a-t-sql-update-statement
