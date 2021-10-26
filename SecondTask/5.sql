select name, cost from projects 
where projects.cost = (select min(cost) from projects);