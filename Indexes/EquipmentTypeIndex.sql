Drop Index If Exists IX_Equipment_Type On dbo.Equipment


Create NONCLUSTERED Index IX_Equipment_Type
On dbo.Equipment (EquipmentType);


--Select Type, COUNT(*) as Total From Equipment
--Group by Type

--https://docs.microsoft.com/en-us/sql/relational-databases/indexes/create-nonclustered-indexes?view=sql-server-ver15
--https://docs.microsoft.com/en-us/sql/relational-databases/indexes/indexes?view=sql-server-ver15