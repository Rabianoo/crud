create table Std(id int identity primary key, sname varchar(50),salary int, Department varchar(50));

insert into Std values('Rabia',33000,'H-R');
insert into Std values('Tabia',43000,'H-R');
insert into Std values('Sabia',33000,'Accounts');
insert into Std values('Alia',44000,'Faculty');
insert into Std values('Ali',54000,'Faculty');

select *from Std;

create procedure sp_insert

@sname varchar(50),
@salary int,
@Department varchar(50)
as

begin
 insert into Std (sname ,salary,Department) values(@sname,@salary,@Department)

end
sp_insert 7,'Areena',22200,'H-R';

create procedure sp_insert1

@sname varchar(50),
@salary int,
@Department varchar(50)
as

begin
 insert into Std (sname ,salary,Department) values(@sname,@salary,@Department)

end
sp_insert1 'Treena',42200,'Faculty';

create procedure sp_udate

@sname varchar(50),
@salary int,
@Department varchar(50)
as

begin
 update Std set sname = @sname,salary = @salary , Department = @Department where id = 6

end
sp_udate 'Amara',55200,'H-R';

create procedure sp_delete1
@id int

as

begin
delete from Std where id=@id

end
sp_delete1 7;


create procedure sp_alter
@id int

as

begin
delete from Std where id=@id

end
sp_delete1 7;


select *from Std;