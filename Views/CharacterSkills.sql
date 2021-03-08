--Drop View If Exists dbo.CharacterSkills


--Select p.Email From Profile p

--Select cs.Character_Id, cs.Skill_Name From Characters_Skills cs

Create View dbo.CharacterSkills
AS
	(Select c.Character_Id, c.Character_Name, cs.Skill_Name From Characters c
	Inner join Characters_Skills cs
	On cs.Character_Id = c.Character_Id)