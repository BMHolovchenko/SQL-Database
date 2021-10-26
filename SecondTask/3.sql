select sum(salary) as javaprice, skills.name as skill
from developers
inner join developers_skills on developers.id = developers_skills.developer_id
inner join skills on developers_skills.skill_id = skills.id where skills.name = 'Java'
group by skill;