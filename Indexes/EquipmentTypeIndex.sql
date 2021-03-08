Drop Index If Exists IX_Equipment_Type On dbo.Equipment


Create NONCLUSTERED Index IX_Equipment_Type
On dbo.Equipment (Type);


--Select Type, COUNT(*) as Total From Equipment
--Group by Type