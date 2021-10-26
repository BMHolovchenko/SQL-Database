select sum(salary) as price, projects.name as application
from developers
inner join developers_projects on developers.id = developers_projects.developer_id 
inner join projects on developers_projects.project_id = projects.id
group by application
order by price desc;