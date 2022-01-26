select *
from countries c inner join regions r on c.region_id = r.region_id;

select  FIRST_NAME, JOB_TITLE
from  EMPLOYEES e inner join JOBS j  on e.Job_ID = j.JOB_ID;

select  FIRST_NAME, JOB_TITLE
from  EMPLOYEES inner join JOBS on EMPLOYEES.JOB_ID = JOBS.JOB_ID;

select DEPARTMENT_NAME,CITY
from  DEPARTMENTS d join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID;

select CITY,COUNTRY_NAME
from COUNTRIES c inner join LOCATIONS l on c.COUNTRY_ID = l.COUNTRY_ID;

select  FIRST_NAME,LAST_NAME, DEPARTMENT_NAME,d.DEPARTMENT_ID
from DEPARTMENTS d inner join EMPLOYEES E on d.DEPARTMENT_ID = E.DEPARTMENT_ID
where d.DEPARTMENT_ID in (40,80);

select city,COUNTRY_NAME,REGION_NAME
from  LOCATIONS l
inner join COUNTRIES c  on c.COUNTRY_ID = l.COUNTRY_ID
inner join REGIONS r on c.REGION_ID  = r.REGION_ID;

--select  FIRST_NAME,JOB_TITLE,DEPARTMENT_NAME,



 select FIRST_NAME,LAST_NAME,d.DEPARTMENT_ID
 from  DEPARTMENTS d left outer join EMPLOYEES E on d.DEPARTMENT_ID = E.DEPARTMENT_ID;

select FIRST_NAME,LAST_NAME,d.DEPARTMENT_ID
from  EMPLOYEES e right outer join DEPARTMENTS D on e.EMPLOYEE_ID = D.MANAGER_ID;


select FIRST_NAME,d.DEPARTMENT_ID, Department_name
from EMPLOYEES e full outer join DEPARTMENTS D on D.DEPARTMENT_ID = e.DEPARTMENT_ID;

select  * from DEPARTMENTS;