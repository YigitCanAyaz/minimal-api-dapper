-- olan her row için 1 koyar 
-- eğer row varsa bu if bloğu çalışmayacak
if not exists (select 1 from dbo.[User])
begin
	insert into dbo.[User] (FirstName, LastName)
	values ('Tim', 'Corey'),
	('Sue', 'Storm'),
	('John', 'Smith'),
	('Mary', 'Jones');
end