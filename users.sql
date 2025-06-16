create role 'analytic';

grant select on *.* to 'analytic';

create user 'analytic'@'localhost' identified by 'qwerty123';

grant 'analytic' to 'analytic'@'localhost';


create role 'rieltor';

grant all privileges on houses to 'rieltor';

create user 'rieltor'@'localhost' identified by '123qwerty'

grant 'rieltor' to 'rieltor'@'localhost';


create role 'manager';

grant all privileges on *.* to 'manager';

create user 'manager'@'localhost' identified by 'password';

grant 'manager' to 'manager'@'localhost';

SHOW GRANTS FOR CURRENT_USER();


-- drop role 'analytic';

FLUSH PRIVILEGES;

set role 'rieltor';

