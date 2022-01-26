select * from employees;

 select first_name,LAST_NAME,SALARY
 from employees;

select count (*)from EMPLOYEES
where  SALARY > 5000;

select count (*)from EMPLOYEES
where  SALARY between  6000 and 7000;

select distinct REGION_ID from  COUNTRIES;

select * from EMPLOYEES
where  FIRST_NAME ='Douglas' and LAST_NAME='Grant';

select * from DEPARTMENTS
where DEPARTMENT_NAME ='IT'or DEPARTMENT_NAME='Sales' or DEPARTMENT_NAME='Public Relations' or DEPARTMENT_NAME='Executive';

select * from DEPARTMENTS
where  DEPARTMENT_NAME in ('IT','Sales','Public Relations','Executive');

select max(SALARY) from EMPLOYEES;
select min(SALARY) from EMPLOYEES;
select round (avg(SALARY)) from EMPLOYEES;

select count (MANAGER_ID) from DEPARTMENTS;--not correct
select count (*) from DEPARTMENTS;--correct

select * from JOB_HISTORY
order by  START_DATE;

select * from JOB_HISTORY
order by  START_DATE ASC ;

select * from JOB_HISTORY
order by  START_DATE DESC;

select * from EMPLOYEES
where  LAST_NAME like '%a%a%';

select * from EMPLOYEES
where  LAST_NAME like 'A%';

select * from EMPLOYEES
where EMPLOYEES.JOB_ID like '%IT%';

select * from EMPLOYEES
where  first_name like 'A___';

select distinct JOB_ID from EMPLOYEES
where JOB_ID like '%CLERK%';

select * from EMPLOYEES
where  DEPARTMENT_ID in( 50,80,100);

select * from EMPLOYEES
where DEPARTMENT_ID not in (40,50,100);

select JOB_ID from EMPLOYEES
group by JOB_ID;

select  distinct  JOB_ID ,min(salary)from EMPLOYEES
group by JOB_ID ;

select  distinct  JOB_ID ,count(*)from EMPLOYEES
where  SALARY >= 5000
group by JOB_ID ;

select  distinct  JOB_ID ,sum(salary)from EMPLOYEES
group by JOB_ID ;

select    JOB_ID ,avg(salary)from EMPLOYEES
group by JOB_ID
having JOB_ID in('IT_PROG','SA_REP','FI_ACCOUNT','AD_VP');

select   JOB_ID ,avg(salary)from EMPLOYEES
having JOB_ID in('IT_PROG','SA_REP','FI_ACCOUNT','AD_VP')
group by JOB_ID;














