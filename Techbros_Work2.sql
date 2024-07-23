-- 1:

select distinct 
    r.region_name
from 
    hr_locations l
join 
    hr_countries c on l.country_id = c.country_id
join  
    hr_regions r on c.region_id = r.region_id
where  
    l.city like '%South%';
   
   -- 2:
   
  select  
    e.employee_id,
    e.first_name || ' ' || e.last_name AS full_name,
    e.salary
from 
    hr_employees e
where  
    e.manager_id = 100
    and e.salary = (select MAX(salary) 
                    from hr_employees 
                    where manager_id = 100)
order by 
    full_name
limit 1;

-- 3:

select  
    e.employee_id,
    e.first_name || ' ' || e.last_name AS full_name,
    d.department_name,
    e.hire_date
from 
    hr_employees e
join 
    hr_departments d on e.department_id = d.department_id
where  
    e.hire_date between '1985-01-01' and '1990-12-31'
order by 
    e.hire_date;
   
   -- 4:
   
  select  
    e.employee_id,
    e.first_name || ' ' || e.last_name as full_name,
    e.salary,
    d.department_name,
    l.street_address,
    l.city,
    c.country_name
from 
    hr_employees e
join 
    hr_departments d on e.department_id = d.department_id
join 
    hr_locations l on d.location_id = l.location_id
join 
    hr_countries c on l.country_id = c.country_id
where  
    c.country_id in ('DE', 'IL', 'IN')
order by
    e.employee_id;

-- 5:
   
select  
    e.employee_id,
    e.first_name || ' ' || e.last_name as full_name,
    e.hire_date
from 
    hr_employees e
where  
    e.department_id = 50
order by
    e.hire_date desc
limit 1;

-- 6:

