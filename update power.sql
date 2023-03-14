UPDATE heroes set "Level" = case "EQ level" when 11 then 70 when 12 then 80 when 13 then 90 end where COALESCE ("Level", '') = '';

UPDATE heroes 
set "EQ level" = case when level >= 70 then 11 end WHERE COALESCE("EQ level", '') = '';

UPDATE  heroes
set "Power" =  
15876 * CASE Stars 
 when 3 then 0.8761050314
 when 4 then 0.9055597916
 when 5 then 0.9360048245
 when 6 then 0.9674734231
 else 1
 end * case "AS"
 	when 0 then 1
 	when 1 then 1.05
 	when 2 then 1.1
 	when 3 then 1.2
 	when 4 then 1.35
 	when 5 then 1.55
 	when 6 then 1.75
 	when 7 then 2.0
 end * case "EQ level" 
 	when 10 then 1.0 / 1.085165303
 	when 11 then 1.0
 	when 12 then 1.085165303
 	when 13 then 1.085165303 * 1.085165303
 END * power(1.055205898, ("Level"-70)/10)
where "Power" is null;
