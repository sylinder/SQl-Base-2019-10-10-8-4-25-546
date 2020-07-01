create table student(
	id varchar(5),
	name varchar(25),
	age number(3),
	sex varchar(5),
	primary key(id)
);

insert into student values ('001', '张三', 18, '男');
insert into student values ('002', '李四', 20, '女');



create table subject(
	id number(5),
	subject varchar(10),
	teacher varchar(25),
	description varchar(100),
	primary key(id)
);

insert into subject values (1001, '语文', '王老师', '本次考试比较简单');
insert into subject values (1002, '数学', '刘老师', '本次考试比较难');



create table score(
	id number(5),
	student_id varchar(5),
	subject_id number(5),
	score number(3, 1),
	primary key(id),
	foreign key(student_id) references student(id),
	foreign key(subject_id) references subject(id)
);

insert into score values (1, '001', 1001, 80);
insert into score values (2, '002', 1002, 60);
insert into score values (3, '001', 1001, 70);
insert into score values (4, '002', 1002, 60.5);
