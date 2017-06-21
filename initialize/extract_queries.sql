-- the following queries were used to extract data from the denormalized source table (imported from the CSV)

set @row_number = 0; 

insert into customers (
    select 
    num,
    concat(first,last),
    first,
    last
 from (
SELECT (@row_number:=@row_number + 1) AS num,
    substring_index(`Customer Name`, ' ', 1) as first,
    substring_index(`Customer Name`, ' ', -1) as last
 from 
( SELECT distinct `Customer Name` FROM `Orders` WHERE 1 ) a
    ) b
    )
    
    
set @row_number = 0; 

insert into products (
 select (@row_number:=@row_number + 1) AS num,
        catid, name, descrip, price, FLOOR(2 + (RAND() * 49)), imagepath from (
 select 
        case `Product Category`
              when 'Furniture' then 1
              when 'Technology' then 3
              else 2
        end as catid,
        `Product Name` as name,
        `Product Name` as descrip,
        min(`Unit Price`) as price,
        null as imagepath
 from `Orders`
 group by `Product Category`, `Product Name`
 ) a
) 
