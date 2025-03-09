SELECT 
p.name || ' (age:' || 
p.age || ',gender:' || 
p.gender || ',address:' 
|| p.address || ')' 
AS person_information 
FROM "person" p ;