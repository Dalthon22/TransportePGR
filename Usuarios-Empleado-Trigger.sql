CREATE trigger trg_Insert_Update_Empleado
on [dbo].[SGT_Usuario]
after UPDATE, INSERT
as
--Update
if exists(SELECT * from inserted) and exists (SELECT * from deleted)
begin
    UPDATE SGT_Empleado
	SET first_name = inserted.first_name,
	last_name = inserted.last_name,
	is_unit_boss = inserted.is_unit_boss,
	user_name = inserted.email,
	user_pass = inserted.password,
	updated_at = inserted.updated_at,
	id_boss = inserted.id_boss,
	procuraduria_id = inserted.procuraduria_id,
	unit_id = inserted.unit_id
	FROM inserted
	where user_name = inserted.email;
end

--Insert
If exists (Select * from inserted) and not exists(Select * from deleted)
begin
    INSERT into SGT_Empleado(
	first_name,last_name,
	is_unit_boss,user_name,
	user_pass,created_at,
	updated_at,id_boss,
	procuraduria_id,unit_id)
	SELECT 
	[first_name],[last_name],
	[is_unit_boss],[email],
	[password],[created_at],
	[updated_at],[id_boss],
	[procuraduria_id],[unit_id]
	from inserted i;
end



