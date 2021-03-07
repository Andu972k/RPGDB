--Calculate Available Inventory Space

--Use OnlineRPG
--Drop Function If Exists dbo.AvailableInventorySpace

--Create Function Inventory.AvailableInventorySpace(@MaxSpace int, @OccupiedSpace int)

Create Function dbo.AvailableInventorySpace(@MaxSpace int, @OccupiedSpace int)
Returns int
AS
Begin
	Declare @AvailableSpace int;
	Set @AvailableSpace = @MaxSpace - @OccupiedSpace;
	Return(@AvailableSpace)
END;

