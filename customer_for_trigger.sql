SQL> create table customer(id int,name varchar(15),age int,address varchar(20),salary int);

Table created.

SQL> insert into customer values(100,'Thasni',22,'tpr',45000);

1 row created.

SQL> insert into customer values(101,'Reshma',24,'edk',50000);

1 row created.

SQL> insert into customer values(102,'Jabir',23,'kprklm',36000);

1 row created.

SQL> insert into customer values(103,'Sarang',22,'ntka',35000);

1 row created.

SQL> insert into customer values(104,'vaisakh',23,'kdnglr',42000);

1 row created.

SQL> select * from customer;

        ID NAME                   AGE ADDRESS                  SALARY
---------- --------------- ---------- -------------------- ----------
       100 Thasni                  22 tpr                       45000
       101 Reshma                  24 edk                       50000
       102 Jabir                   23 kprklm                    36000
       103 Sarang                  22 ntka                      35000
       104 vaisakh                 23 kdnglr                    42000