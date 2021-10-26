select avg(salary) as salary, projects.name as project, avg(projects.cost) as cost
from developers
inner join developers_projects on developers.id = developers_projects.developer_id
inner join projects on developers_projects.project_id = projects.id
group by project 
order by cost limit 1;