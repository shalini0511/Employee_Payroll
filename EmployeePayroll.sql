--UC-3 Insert values in Table
Insert into empoyee_payroll(name,salary,startDate) values
('shalini',20000,'2021-03-12'),
('Magesh',25000,'2021-04-18'),
('Gayathri',10000,'2020-05-13'),
('Aruna',30000,'2020-08-19');
--UC-4 Retrieve All data--
select * from empoyee_payroll;
------- UC 5: Select Query using Cast() an GetDate() -------
select salary from empoyee_payroll where name='Magesh';
select salary from empoyee_payroll where startDate BETWEEN Cast('2020-12-20' as Date) and GetDate();
------- UC 6: Add Gender Column and Update Table Values -------
Alter table empoyee_payroll
add Gender char(1);

Update empoyee_payroll 
set Gender='M'
where name='Magesh';
Update empoyee_payroll 
set Gender='F'
where name='Gayathri' or name='Shalini'or name='Aruna';