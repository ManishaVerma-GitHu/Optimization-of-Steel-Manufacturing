create database memory;
use memory;
show databases;
show tables;
Alter table project2_dataset 
rename column `INJ1_QTY
(Coke Injection Qty)` to Inj1;

select * from project2_dataset;
#####
select avg(`Inj1`) as Inj1 from Project2_dataset;

select `Inj1`
as mode_column from (select `Inj1`, count(*) as max_count from project2_dataset
group by `Inj1`
order by max_count desc
limit 1) as subquery;

select `Inj1` as median_column from (select `Inj1` ,Row_Number() over(order by `Inj1`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select stddev(`Inj1`) as col_std from Project2_dataset;
select max(`Inj1`) - min(`Inj1`) as col_range from project2_dataset;
select variance(`Inj1`) as col_variance from project2_dataset;

select (sum(power(`Inj1` - (select avg(`Inj1`)
from project2_dataset), 3))/
(count(*) * power (( select stddev(`Inj1`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`Inj1` -(select avg(`Inj1`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`Inj1`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES ###############
SELECT `Inj1`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `Inj1`
HAVING COUNT(*) > 1;

#######
Alter table project2_dataset 
rename column `INJ2_QTY
(Coke Injection Qty)` to Inj2;

select avg(`Inj2`) as Inj2 from Project2_dataset;

select `Inj2`as mode_column from (select `Inj2`,
count(*) as max_count from project2_dataset
group by `Inj2` 
order by max_count desc
limit 1) as subquery;

select `Inj2` as median_column from (select `Inj2` ,
Row_Number() over(order by `Inj2`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select stddev(`Inj2`) as col_std from Project2_dataset;
select max(`Inj2`) - min(`Inj2`) as col_range from project2_dataset;
select variance(`Inj2`) as col_variance from project2_dataset;

select (sum(power(`Inj2` - (select avg(`Inj2`)
from project2_dataset), 3))/
(count(*) * power (( select stddev(`Inj2`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`Inj2` -(select avg(`Inj2`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`Inj2`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############# HANDLING DUPLICATES ##########
SELECT `Inj2`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `Inj2`
HAVING COUNT(*) > 1;

CREATE TABLE temp_project AS
SELECT DISTINCT *
FROM project2_dataset;

#######

select avg(BSM) as bsm from Project2_dataset;

select BSM as median_column from (select BSM ,Row_Number() over(order by BSM) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select BSM as mode_column from (select BSM ,count(*) as max_count from project2_dataset
group by BSM 
order by max_count desc
limit 1) as subquery;

select stddev(BSM) as col_stddev from project2_dataset;
select max(BSM) - min(BSM)  as col_range from project2_dataset;
select variance(BSM) as col_variance from project2_dataset;

select (sum(power(BSM - (select avg(BSM) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(BSM) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(BSM -(select avg(BSM) from project2_dataset),4 ))/
(count(*) * power(( select stddev(BSM) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############### DUPLICATES ####################
SELECT `BSM`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `BSM`
HAVING COUNT(*) > 1;

#### 
select avg(`BP`) as bp from Project2_dataset;

select BP as median_column from (select BP ,Row_Number() over(order by BP) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select BP as mode_column from (select BP ,count(*) as max_count from project2_dataset
group by BP
order by max_count desc
limit 1) as subquery;

select stddev(BP) as col_stddev from project2_dataset;
select max(BP) - min(BP)  as col_range from project2_dataset;
select variance(BP) as col_variance from project2_dataset;

select (sum(power(BP - (select avg(BP) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(BP) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(BP -(select avg(BP) from project2_dataset),4 ))/
(count(*) * power(( select stddev(BP) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################## DUPLICATES ##################
SELECT `BP`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `BP`
HAVING COUNT(*) > 1;

#### 
select avg(OTHERS) as others from project2_dataset;
select OTHERS as median_column from (select OTHERS ,Row_Number() over(order by OTHERS) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select OTHERS as mode_column from (select OTHERS ,count(*) as max_count from project2_dataset
group by OTHERS
order by max_count desc
limit 1) as subquery;

select stddev(OTHERS) as col_stddev from project2_dataset;
select max(OTHERS) - min(OTHERS)  as col_range from project2_dataset;
select variance(OTHERS) as col_variance from project2_dataset;

select (sum(power(OTHERS - (select avg(OTHERS) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(OTHERS) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(OTHERS -(select avg(OTHERS) from project2_dataset),4 ))/
(count(*) * power(( select stddev(OTHERS) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############### DUPLICATES ################
SELECT `OTHERS`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `OTHERS`
HAVING COUNT(*) > 1;

#####
select avg(`SCRAP_QTY (MT)`) as scrap_mt from project2_dataset;

select (`SCRAP_QTY (MT)`) as median_column from (select (`SCRAP_QTY (MT)`) ,Row_Number() over(order by (`SCRAP_QTY (MT)`)) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select (`SCRAP_QTY (MT)`) as mode_column from (select (`SCRAP_QTY (MT)`) ,count(*) as max_count from project2_dataset
group by (`SCRAP_QTY (MT)`)
order by max_count desc
limit 1) as subquery;

select stddev(`SCRAP_QTY (MT)`) as col_stddev from project2_dataset;
select max(`SCRAP_QTY (MT)`) - min('SCRAP_QTY (MT)')  as col_range from project2_dataset;
select variance(`SCRAP_QTY (MT)`) as col_variance from project2_dataset;

select (sum(power(`SCRAP_QTY (MT)` - (select avg(`SCRAP_QTY (MT)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`SCRAP_QTY (MT)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`SCRAP_QTY (MT)` -(select avg(`SCRAP_QTY (MT)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`SCRAP_QTY (MT)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES ###############
SELECT `SCRAP_QTY (MT)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `SCRAP_QTY (MT)`
HAVING COUNT(*) > 1;

#####
select avg(`PIGIRON`) as pigiron from Project2_dataset;

select `PIGIRON` as median_column from (select `PIGIRON` ,Row_Number() over(order by `PIGIRON`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `PIGIRON` as mode_column from (select `PIGIRON` ,count(*) as max_count from project2_dataset
group by `PIGIRON`
order by max_count desc
limit 1) as subquery;

select stddev(PIGIRON) as col_stddev from project2_dataset;
select max(PIGIRON) - min(PIGIRON)  as col_range from project2_dataset;
select variance(PIGIRON) as col_variance from project2_dataset;

select (sum(power(PIGIRON - (select avg(PIGIRON) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(PIGIRON) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(PIGIRON -(select avg(PIGIRON) from project2_dataset),4 ))/
(count(*) * power(( select stddev(PIGIRON) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES ################
SELECT `PIGIRON`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `PIGIRON`
HAVING COUNT(*) > 1;

#######
select avg (`DRI1_QTY (MT) (Lumps)`) as drt1  from Project2_dataset;

select `DRI1_QTY (MT) (Lumps)` as median_column from (select `DRI1_QTY (MT) (Lumps)` ,
Row_Number() over(order by `DRI1_QTY (MT) (Lumps)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `DRI1_QTY (MT) (Lumps)` as mode_column from (select `DRI1_QTY (MT) (Lumps)` ,
count(*) as max_count from project2_dataset
group by `DRI1_QTY (MT) (Lumps)`
order by max_count desc
limit 1) as subquery;

select stddev(`DRI1_QTY (MT) (Lumps)`) as col_stddev from project2_dataset;
select max(`DRI1_QTY (MT) (Lumps)`) - min(`DRI1_QTY (MT) (Lumps)`)  as col_range from project2_dataset;
select variance(`DRI1_QTY (MT) (Lumps)`) as col_variance from project2_dataset;

select (sum(power(`DRI1_QTY (MT) (Lumps)` - (select avg(`DRI1_QTY (MT) (Lumps)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`DRI1_QTY (MT) (Lumps)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`DRI1_QTY (MT) (Lumps)` -(select avg(`DRI1_QTY (MT) (Lumps)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`DRI1_QTY (MT) (Lumps)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############# DUPLICATES #############
SELECT `DRI1_QTY (MT) (Lumps)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `DRI1_QTY (MT) (Lumps)`
HAVING COUNT(*) > 1;

#######
Alter table project2_dataset 
rename column `DRI2_QTY
(MT) (Fines)` to dri2;

select avg (`dri2`) as drt2  from Project2_dataset;

select `dri2` as median_column from (select `dri2` ,
Row_Number() over(order by `dri2`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `dri2` as mode_column from (select `dri2` ,
count(*) as max_count from project2_dataset
group by `dri2`
order by max_count desc
limit 1) as subquery;

select stddev(`dri2`) as col_stddev from project2_dataset;
select max(`dri2`) - min(`dri2`)  as col_range from project2_dataset;
select variance(`dri2`) as col_variance from project2_dataset;

select (sum(power(`dri2` - (select avg(`dri2`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`dri2`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`dri2` -(select avg(`dri2`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`dri2`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES ################
SELECT `dri2`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `dri2`
HAVING COUNT(*) > 1;

##########
select avg(`TOT_DRI_QTY`) as TOT_DRI_QTY  from Project2_dataset;

select TOT_DRI_QTY as median_column from (select TOT_DRI_QTY ,Row_Number() over(order by TOT_DRI_QTY) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select TOT_DRI_QTY as mode_column from (select TOT_DRI_QTY ,count(*) as max_count from project2_dataset
group by TOT_DRI_QTY
order by max_count desc
limit 1) as subquery;

select stddev(TOT_DRI_QTY) as col_stddev from project2_dataset;
select max(TOT_DRI_QTY) - min(TOT_DRI_QTY)  as col_range from project2_dataset;
select variance(TOT_DRI_QTY) as col_variance from project2_dataset;

select (sum(power(TOT_DRI_QTY - (select avg(TOT_DRI_QTY) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(TOT_DRI_QTY) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(TOT_DRI_QTY -(select avg(TOT_DRI_QTY) from project2_dataset),4 ))/
(count(*) * power(( select stddev(TOT_DRI_QTY) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES ############
SELECT TOT_DRI_QTY, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY TOT_DRI_QTY
HAVING COUNT(*) > 1;

######
select avg(`HOT_METAL (HOT Metal from MBF)`) as hot_metal from Project2_dataset;

select `HOT_METAL (HOT Metal from MBF)` as median_column from 
(select `HOT_METAL (HOT Metal from MBF)` ,Row_Number() over(order by `HOT_METAL (HOT Metal from MBF)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `HOT_METAL (HOT Metal from MBF)` as mode_column from (select `HOT_METAL (HOT Metal from MBF)` ,
count(*) as max_count from project2_dataset
group by `HOT_METAL (HOT Metal from MBF)`
order by max_count desc
limit 1) as subquery;

select stddev(`HOT_METAL (HOT Metal from MBF)`) as col_stddev from project2_dataset;
select max(`HOT_METAL (HOT Metal from MBF)`) - min(`HOT_METAL (HOT Metal from MBF)`) as col_range from project2_dataset;
select variance(`HOT_METAL (HOT Metal from MBF)`) as col_variance from project2_dataset;

select (sum(power(`HOT_METAL (HOT Metal from MBF)` - (select avg(`HOT_METAL (HOT Metal from MBF)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`HOT_METAL (HOT Metal from MBF)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`HOT_METAL (HOT Metal from MBF)` -(select avg(`HOT_METAL (HOT Metal from MBF)`) 
from project2_dataset),4 ))/
(count(*) * power(( select stddev(`HOT_METAL (HOT Metal from MBF)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

########### DUPLICATES ###############333
SELECT `HOT_METAL (HOT Metal from MBF)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `HOT_METAL (HOT Metal from MBF)`
HAVING COUNT(*) > 1;

#######
select avg(`Total Charge`) as total_charge from project2_dataset;
select `Total Charge` as median_column from (select `Total Charge` ,
Row_Number() over(order by `Total Charge`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `Total Charge` as mode_column from (select `Total Charge` ,count(*) as max_count from project2_dataset
group by `Total Charge`
order by max_count desc
limit 1) as subquery;

select stddev(`Total Charge`) as col_stddev from project2_dataset;
select max(`Total Charge`) - min(`Total Charge`)  as col_range from project2_dataset;
select variance(`Total Charge`) as col_variance from project2_dataset;

select (sum(power(`Total Charge` - (select avg(`Total Charge`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`Total Charge`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`Total Charge` -(select avg(`Total Charge`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`Total Charge`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

########### DUPLICATES ##############
SELECT `Total Charge`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `Total Charge`
HAVING COUNT(*) > 1;

########
select avg(`Hot_Heel (Left Over Liquid metal in EAF)`) as hot_heel from project2_dataset;

select `Hot_Heel (Left Over Liquid metal in EAF)` as median_column 
from (select `Hot_Heel (Left Over Liquid metal in EAF)` ,
Row_Number() over(order by `Hot_Heel (Left Over Liquid metal in EAF)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `Hot_Heel (Left Over Liquid metal in EAF)` as mode_column from 
(select `Hot_Heel (Left Over Liquid metal in EAF)` ,count(*) as max_count from project2_dataset
group by `Hot_Heel (Left Over Liquid metal in EAF)`
order by max_count desc
limit 1) as subquery;

select stddev(`Hot_Heel (Left Over Liquid metal in EAF)`) as col_stddev from project2_dataset;
select max(`Hot_Heel (Left Over Liquid metal in EAF)`) - min(`Hot_Heel (Left Over Liquid metal in EAF)`)  as col_range from project2_dataset;
select variance(`Hot_Heel (Left Over Liquid metal in EAF)`) as col_variance from project2_dataset;

select (sum(power(`Hot_Heel (Left Over Liquid metal in EAF)` - (select avg(`Hot_Heel (Left Over Liquid metal in EAF)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`Hot_Heel (Left Over Liquid metal in EAF)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`Hot_Heel (Left Over Liquid metal in EAF)` -(select avg(`Hot_Heel (Left Over Liquid metal in EAF)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`Hot_Heel (Left Over Liquid metal in EAF)`)
from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################### DUPLICATES ##################
SELECT `Hot_Heel (Left Over Liquid metal in EAF)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `Hot_Heel (Left Over Liquid metal in EAF)`
HAVING COUNT(*) > 1;

#########
select avg(`DOLO`) as dolo from project2_dataset;

select `DOLO` as median_column from (select `DOLO` ,Row_Number() over(order by `DOLO`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `DOLO` as mode_column from (select `DOLO` ,count(*) as max_count from project2_dataset
group by `DOLO`
order by max_count desc
limit 1) as subquery;

select stddev(`DOLO`) as col_stddev from project2_dataset;
select max(`DOLO`) - min(`DOLO`)  as col_range from project2_dataset;
select variance(`DOLO`) as col_variance from project2_dataset;

select (sum(power(`DOLO` - (select avg(`DOLO`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`DOLO`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`DOLO` -(select avg(`DOLO`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`DOLO`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

##################### DUPLICATES ######
SELECT DOLO, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY DOLO
HAVING COUNT(*) > 1;

#######
select avg(`DOLO1_EMPTY`) as dolo_empty from project2_dataset;

select `DOLO1_EMPTY` as median_column from (select `DOLO1_EMPTY` ,
Row_Number() over(order by `DOLO1_EMPTY`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `DOLO1_EMPTY` as mode_column from (select `DOLO1_EMPTY` ,count(*) as max_count from project2_dataset
group by `DOLO1_EMPTY`
order by max_count desc
limit 1) as subquery;

select stddev(`DOLO1_EMPTY`) as col_stddev from project2_dataset;
select max(`DOLO1_EMPTY`) - min(`DOLO1_EMPTY`)  as col_range from project2_dataset;
select variance(`DOLO1_EMPTY`) as col_variance from project2_dataset;

select (sum(power(`DOLO1_EMPTY` - (select avg(`DOLO1_EMPTY`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`DOLO1_EMPTY`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`DOLO1_EMPTY` -(select avg(`DOLO1_EMPTY`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`DOLO1_EMPTY`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################# DUPLICATES ################
SELECT `DOLO1_EMPTY`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `DOLO1_EMPTY`
HAVING COUNT(*) > 1;

#######
select avg(`TOT_LIME_QTY`) as tot_lime from project2_dataset;

select `TOT_LIME_QTY` as median_column from (select `TOT_LIME_QTY` ,Row_Number() over(order by `TOT_LIME_QTY`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `TOT_LIME_QTY` as mode_column from (select `TOT_LIME_QTY` ,count(*) as max_count from project2_dataset
group by `TOT_LIME_QTY`
order by max_count desc
limit 1) as subquery;

select stddev(`TOT_LIME_QTY`) as col_stddev from project2_dataset;
select max(`TOT_LIME_QTY`) - min(`TOT_LIME_QTY`)  as col_range from project2_dataset;
select variance(`TOT_LIME_QTY`) as col_variance from project2_dataset;

select (sum(power(`TOT_LIME_QTY` - (select avg(`TOT_LIME_QTY`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`TOT_LIME_QTY`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`TOT_LIME_QTY` -(select avg(`TOT_LIME_QTY`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`TOT_LIME_QTY`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################## DUPLICATES ##################
SELECT `TOT_LIME_QTY`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `TOT_LIME_QTY`
HAVING COUNT(*) > 1;

######
select avg(`TAP_TEMP (Tappnig Temperature)`) as tap_temp from project2_dataset;

select `TAP_TEMP (Tappnig Temperature)` as median_column from (select `TAP_TEMP (Tappnig Temperature)` ,
Row_Number() over(order by `TAP_TEMP (Tappnig Temperature)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `TAP_TEMP (Tappnig Temperature)` as mode_column from (select `TAP_TEMP (Tappnig Temperature)` ,
count(*) as max_count from project2_dataset
group by `TAP_TEMP (Tappnig Temperature)`
order by max_count desc
limit 1) as subquery;

select stddev(`TAP_TEMP (Tappnig Temperature)`) as col_stddev from project2_dataset;
select max(`TAP_TEMP (Tappnig Temperature)`) - min(`TAP_TEMP (Tappnig Temperature)`)  as col_range from project2_dataset;
select variance(`TAP_TEMP (Tappnig Temperature)`) as col_variance from project2_dataset;

select (sum(power(`TAP_TEMP (Tappnig Temperature)` - (select avg(`TAP_TEMP (Tappnig Temperature)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`TAP_TEMP (Tappnig Temperature)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`TAP_TEMP (Tappnig Temperature)` -(select avg(`TAP_TEMP (Tappnig Temperature)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`TAP_TEMP (Tappnig Temperature)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################### DUPLICATES ####################
SELECT `TAP_TEMP (Tappnig Temperature)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `TAP_TEMP (Tappnig Temperature)`
HAVING COUNT(*) > 1;

######
select avg(O2ACT) as O2act from project2_dataset;

select O2ACT as median_column from (select O2ACT ,Row_Number() over(order by O2ACT) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select O2ACT as mode_column from (select O2ACT ,count(*) as max_count from project2_dataset
group by O2ACT
order by max_count desc
limit 1) as subquery;

select stddev(O2ACT) as col_stddev from project2_dataset;
select max(O2ACT) - min(O2ACT)  as col_range from project2_dataset;
select variance(O2ACT) as col_variance from project2_dataset;

select (sum(power(O2ACT - (select avg(O2ACT) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(O2ACT) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(O2ACT -(select avg(O2ACT) from project2_dataset),4 ))/
(count(*) * power(( select stddev(O2ACT) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES #################
SELECT O2ACT, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY O2ACT
HAVING COUNT(*) > 1;

#######
select avg(`ENERGY (Energy Consumption)`) as energy_consumption from project2_dataset;

select `ENERGY (Energy Consumption)` as median_column from (select `ENERGY (Energy Consumption)` ,
Row_Number() over(order by `ENERGY (Energy Consumption)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `ENERGY (Energy Consumption)` as mode_column from (select `ENERGY (Energy Consumption)` ,
count(*) as max_count from project2_dataset
group by `ENERGY (Energy Consumption)`
order by max_count desc
limit 1) as subquery;

select stddev(`ENERGY (Energy Consumption)`) as col_stddev from project2_dataset;
select max(`ENERGY (Energy Consumption)`) - min(`ENERGY (Energy Consumption)`)  as col_range from project2_dataset;
select variance(`ENERGY (Energy Consumption)`) as col_variance from project2_dataset;

select (sum(power(`ENERGY (Energy Consumption)` - (select avg(`ENERGY (Energy Consumption)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`ENERGY (Energy Consumption)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`ENERGY (Energy Consumption)` -(select avg(`ENERGY (Energy Consumption)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`ENERGY (Energy Consumption)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES #################
SELECT `ENERGY (Energy Consumption)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `ENERGY (Energy Consumption)`
HAVING COUNT(*) > 1;

########
select avg(`KWH_PER_TON (Energy Consumption Per Ton)`) as kwh_energy from project2_dataset;

select `KWH_PER_TON (Energy Consumption Per Ton)` as median_column from 
(select `KWH_PER_TON (Energy Consumption Per Ton)` ,
Row_Number() over(order by `KWH_PER_TON (Energy Consumption Per Ton)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `KWH_PER_TON (Energy Consumption Per Ton)` as mode_column from 
(select `KWH_PER_TON (Energy Consumption Per Ton)` ,count(*) as max_count from project2_dataset
group by `KWH_PER_TON (Energy Consumption Per Ton)`
order by max_count desc
limit 1) as subquery;

select stddev(`KWH_PER_TON (Energy Consumption Per Ton)`) as col_stddev from project2_dataset;
select max(`KWH_PER_TON (Energy Consumption Per Ton)`) - min(`KWH_PER_TON (Energy Consumption Per Ton)`)  as col_range from project2_dataset;
select variance(`KWH_PER_TON (Energy Consumption Per Ton)`) as col_variance from project2_dataset;

select (sum(power(`KWH_PER_TON (Energy Consumption Per Ton)` - (select avg(`KWH_PER_TON (Energy Consumption Per Ton)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`KWH_PER_TON (Energy Consumption Per Ton)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`KWH_PER_TON (Energy Consumption Per Ton)` -(select avg(`KWH_PER_TON (Energy Consumption Per Ton)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`KWH_PER_TON (Energy Consumption Per Ton)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES ###################
SELECT `KWH_PER_TON (Energy Consumption Per Ton)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `KWH_PER_TON (Energy Consumption Per Ton)`
HAVING COUNT(*) > 1;

######
select avg( KWH_PER_MIN) as kwh_min from project2_dataset;

select KWH_PER_MIN as median_column from (select KWH_PER_MIN ,Row_Number() over(order by KWH_PER_MIN) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select KWH_PER_MIN as mode_column from (select KWH_PER_MIN ,count(*) as max_count from project2_dataset
group by KWH_PER_MIN
order by max_count desc
limit 1) as subquery;

select stddev(KWH_PER_MIN) as col_stddev from project2_dataset;
select max(KWH_PER_MIN) - min(KWH_PER_MIN)  as col_range from project2_dataset;
select variance(KWH_PER_MIN) as col_variance from project2_dataset;

select (sum(power(KWH_PER_MIN - (select avg(KWH_PER_MIN) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(KWH_PER_MIN) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(KWH_PER_MIN -(select avg(KWH_PER_MIN) from project2_dataset),4 ))/
(count(*) * power(( select stddev(KWH_PER_MIN) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################ DUPLICATES #################
SELECT  KWH_PER_MIN, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY KWH_PER_MIN
HAVING COUNT(*) > 1;

#######
select avg(`MELT_TIME (Melting Time)`) as melt_time from project2_dataset;

select `MELT_TIME (Melting Time)` as median_column from (select `MELT_TIME (Melting Time)` ,
Row_Number() over(order by `MELT_TIME (Melting Time)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `MELT_TIME (Melting Time)` as mode_column from (select `MELT_TIME (Melting Time)` ,
count(*) as max_count from project2_dataset
group by `MELT_TIME (Melting Time)`
order by max_count desc
limit 1) as subquery;

select stddev(`MELT_TIME (Melting Time)`) as col_stddev from project2_dataset;
select max(`MELT_TIME (Melting Time)`) - min(`MELT_TIME (Melting Time)`)  as col_range from project2_dataset;
select variance(`MELT_TIME (Melting Time)`) as col_variance from project2_dataset;

select (sum(power(`MELT_TIME (Melting Time)` - (select avg(`MELT_TIME (Melting Time)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`MELT_TIME (Melting Time)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`MELT_TIME (Melting Time)` -(select avg(`MELT_TIME (Melting Time)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`MELT_TIME (Melting Time)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############## DUPLICATES ####################
SELECT `MELT_TIME (Melting Time)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `MELT_TIME (Melting Time)`
HAVING COUNT(*) > 1;

#######
select avg(`TA_TIME (Turn Around Time)`) as ta_time from project2_dataset;

select `TA_TIME (Turn Around Time)` as median_column from (select `TA_TIME (Turn Around Time)` ,
Row_Number() over(order by `TA_TIME (Turn Around Time)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `TA_TIME (Turn Around Time)` as mode_column from (select `TA_TIME (Turn Around Time)` ,
count(*) as max_count from project2_dataset
group by `TA_TIME (Turn Around Time)`
order by max_count desc
limit 1) as subquery;

select stddev(`TA_TIME (Turn Around Time)`) as col_stddev from project2_dataset;
select max(`TA_TIME (Turn Around Time)`) - min(`TA_TIME (Turn Around Time)`)  as col_range from project2_dataset;
select variance(`TA_TIME (Turn Around Time)`) as col_variance from project2_dataset;

select (sum(power(`TA_TIME (Turn Around Time)` - (select avg(`TA_TIME (Turn Around Time)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`TA_TIME (Turn Around Time)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`TA_TIME (Turn Around Time)` -(select avg(`TA_TIME (Turn Around Time)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`TA_TIME (Turn Around Time)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

###################### DUPLICATES ###############
SELECT `TA_TIME (Turn Around Time)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `TA_TIME (Turn Around Time)`
HAVING COUNT(*) > 1;

#####
select avg(`TT_TIME (Total Cycle Time Including Breakdown)`) as tt_time from project2_dataset;

select `TT_TIME (Total Cycle Time Including Breakdown)` as median_column from 
(select `TT_TIME (Total Cycle Time Including Breakdown)` ,Row_Number() over(order by `TT_TIME (Total Cycle Time Including Breakdown)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `TT_TIME (Total Cycle Time Including Breakdown)` as mode_column from 
(select `TT_TIME (Total Cycle Time Including Breakdown)` ,count(*) as max_count from project2_dataset
group by `TT_TIME (Total Cycle Time Including Breakdown)`
order by max_count desc
limit 1) as subquery;

select stddev(`TT_TIME (Total Cycle Time Including Breakdown)`) as col_stddev from project2_dataset;
select max(`TT_TIME (Total Cycle Time Including Breakdown)`) - min(`TT_TIME (Total Cycle Time Including Breakdown)`)  as col_range from project2_dataset;
select variance(`TT_TIME (Total Cycle Time Including Breakdown)`) as col_variance from project2_dataset;

select (sum(power(`TT_TIME (Total Cycle Time Including Breakdown)` - (select avg(`TT_TIME (Total Cycle Time Including Breakdown)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`TT_TIME (Total Cycle Time Including Breakdown)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power('TT_TIME (Total Cycle Time Including Breakdown)' -
(select avg('TT_TIME (Total Cycle Time Including Breakdown)') from project2_dataset),4 ))/
(count(*) * power(( select stddev(`TT_TIME (Total Cycle Time Including Breakdown)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;
 ################# DUPLICATES ##################
 
SELECT `TT_TIME (Total Cycle Time Including Breakdown)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `TT_TIME (Total Cycle Time Including Breakdown)`
HAVING COUNT(*) > 1;

#########
select avg(`E1_CUR (Electrode 1 Current)`) as e1_cur from project2_dataset;

select `E1_CUR (Electrode 1 Current)` as median_column from (select `E1_CUR (Electrode 1 Current)` ,
Row_Number() over(order by `E1_CUR (Electrode 1 Current)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `E1_CUR (Electrode 1 Current)` as mode_column from 
(select `E1_CUR (Electrode 1 Current)` ,count(*) as max_count from project2_dataset
group by `E1_CUR (Electrode 1 Current)`
order by max_count desc
limit 1) as subquery;

select stddev(`E1_CUR (Electrode 1 Current)`) as col_stddev from project2_dataset;
select max(`E1_CUR (Electrode 1 Current)`) - min(`E1_CUR (Electrode 1 Current)`)  as col_range from project2_dataset;
select variance(`E1_CUR (Electrode 1 Current)`) as col_variance from project2_dataset;

select (sum(power(`E1_CUR (Electrode 1 Current)` - (select avg(`E1_CUR (Electrode 1 Current)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`E1_CUR (Electrode 1 Current)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`E1_CUR (Electrode 1 Current)` -(select avg(`E1_CUR (Electrode 1 Current)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`E1_CUR (Electrode 1 Current)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

########## DUPLICATES ##################
SELECT `E1_CUR (Electrode 1 Current)` , COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `E1_CUR (Electrode 1 Current)`
HAVING COUNT(*) > 1;

#######
select avg(`E2_CUR (Electrode 2 Current)`) as e2_cur from project2_dataset;

select `E2_CUR (Electrode 2 Current)` as median_column from (select `E2_CUR (Electrode 2 Current)` ,
Row_Number() over(order by `E2_CUR (Electrode 2 Current)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `E2_CUR (Electrode 2 Current)` as mode_column from (select `E2_CUR (Electrode 2 Current)` ,count(*) as max_count from project2_dataset
group by `E2_CUR (Electrode 2 Current)`
order by max_count desc
limit 1) as subquery;

select stddev(`E2_CUR (Electrode 2 Current)`) as col_stddev from project2_dataset;
select max(`E2_CUR (Electrode 2 Current)`) - min(`E2_CUR (Electrode 2 Current)`)  as col_range from project2_dataset;
select variance(`E2_CUR (Electrode 2 Current)`) as col_variance from project2_dataset;

select (sum(power(`E2_CUR (Electrode 2 Current)` - (select avg(`E2_CUR (Electrode 2 Current)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`E2_CUR (Electrode 2 Current)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`E2_CUR (Electrode 2 Current)` -(select avg(`E2_CUR (Electrode 2 Current)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`E2_CUR (Electrode 2 Current)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################### DUPLICATES ################
SELECT `E2_CUR (Electrode 2 Current)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `E2_CUR (Electrode 2 Current)`
HAVING COUNT(*) > 1;

########
select avg(`E3_CUR (Electrode 3 Current)`) as e3_cur from project2_dataset;

select `E3_CUR (Electrode 3 Current)` as median_column from (select `E3_CUR (Electrode 3 Current)` ,
Row_Number() over(order by `E3_CUR (Electrode 3 Current)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `E3_CUR (Electrode 3 Current)` as mode_column from (select `E3_CUR (Electrode 3 Current)` ,
count(*) as max_count from project2_dataset
group by `E3_CUR (Electrode 3 Current)`
order by max_count desc
limit 1) as subquery;

select stddev(`E3_CUR (Electrode 3 Current)`) as col_stddev from project2_dataset;
select max(`E3_CUR (Electrode 3 Current)`) - min(`E3_CUR (Electrode 3 Current)`)  as col_range from project2_dataset;
select variance(`E3_CUR (Electrode 3 Current)`) as col_variance from project2_dataset;

select (sum(power(`E3_CUR (Electrode 3 Current)` - (select avg(`E3_CUR (Electrode 3 Current)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`E3_CUR (Electrode 3 Current)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`E3_CUR (Electrode 3 Current)` -(select avg(`E3_CUR (Electrode 3 Current)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`E3_CUR (Electrode 3 Current)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

########### DUPLICATES ################
SELECT `E3_CUR (Electrode 3 Current)` , COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `E3_CUR (Electrode 3 Current)`
HAVING COUNT(*) > 1;

########
select avg(`SPOUT (Bottom Refractory Temperature)`) as spout from project2_dataset;

select `SPOUT (Bottom Refractory Temperature)` as median_column from 
(select `SPOUT (Bottom Refractory Temperature)`,
Row_Number() over(order by `SPOUT (Bottom Refractory Temperature)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `SPOUT (Bottom Refractory Temperature)` as mode_column from (select `SPOUT (Bottom Refractory Temperature)` ,count(*) as max_count from project2_dataset
group by `SPOUT (Bottom Refractory Temperature)`
order by max_count desc
limit 1) as subquery;

select stddev(`SPOUT (Bottom Refractory Temperature)`) as col_stddev from project2_dataset;
select max(`SPOUT (Bottom Refractory Temperature)`) - min(`SPOUT (Bottom Refractory Temperature)`)  as col_range from project2_dataset;
select variance(`SPOUT (Bottom Refractory Temperature)`) as col_variance from project2_dataset;

select (sum(power(`SPOUT (Bottom Refractory Temperature)` - (select avg(`SPOUT (Bottom Refractory Temperature)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`SPOUT (Bottom Refractory Temperature)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`SPOUT (Bottom Refractory Temperature)` -(select avg(`SPOUT (Bottom Refractory Temperature)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`SPOUT (Bottom Refractory Temperature)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############### DUPLICATES ################
SELECT (`SPOUT (Bottom Refractory Temperature)`), COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY (`SPOUT (Bottom Refractory Temperature)`)
HAVING COUNT(*) > 1;

########
select avg(C) as C from project2_dataset;

select C as median_column from (select C ,Row_Number() over(order by C) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `C` as mode_column from (select `C` ,count(*) as max_count from project2_dataset
group by `C`
order by max_count desc
limit 1) as subquery;

select stddev(C) as col_stddev from project2_dataset;
select max(C) - min(C)  as col_range from project2_dataset;
select variance(C) as col_variance from project2_dataset;

select (sum(power(C - (select avg(C) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(C) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(C -(select avg(C) from project2_dataset),4 ))/
(count(*) * power(( select stddev(C) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############### DUPLICATES #############
SELECT C, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY C
HAVING COUNT(*) > 1;

#######
select avg(SI) as SI from project2_dataset;

select SI as median_column from (select SI ,Row_Number() over(order by SI) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select SI as mode_column from (select SI ,count(*) as max_count from project2_dataset
group by SI
order by max_count desc
limit 1) as subquery;

select stddev(SI) as col_stddev from project2_dataset;
select max(SI) - min(SI)  as col_range from project2_dataset;
select variance(SI) as col_variance from project2_dataset;

select (sum(power(SI - (select avg(SI) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(SI) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(SI -(select avg(SI) from project2_dataset),4 ))/
(count(*) * power(( select stddev(SI) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

######## DUPLICATES #################
SELECT SI , COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY SI
HAVING COUNT(*) > 1;

#######
select avg(MN) as MN from project2_dataset;

select MN as median_column from (select MN ,Row_Number() over(order by MN) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select MN as mode_column from (select MN ,count(*) as max_count from project2_dataset
group by MN
order by max_count desc
limit 1) as subquery;

select stddev(MN) as col_stddev from project2_dataset;
select max(MN) - min(MN)  as col_range from project2_dataset;
select variance(MN) as col_variance from project2_dataset;

select (sum(power(MN - (select avg(MN) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(MN) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(MN -(select avg(MN) from project2_dataset),4 ))/
(count(*) * power(( select stddev(MN) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############## DUPLICATES ############
SELECT MN, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY MN
HAVING COUNT(*) > 1;

#########
select avg(P) as P from project2_dataset;

select P as median_column from (select P ,Row_Number() over(order by P) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select P as mode_column from (select P ,count(*) as max_count from project2_dataset
group by P
order by max_count desc
limit 1) as subquery;

select stddev(P) as col_stddev from project2_dataset;
select max(P) - min(P)  as col_range from project2_dataset;
select variance(P) as col_variance from project2_dataset;

select (sum(power(P - (select avg(P) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(P) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(P -(select avg(P) from project2_dataset),4 ))/
(count(*) * power(( select stddev(P) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############ DUPLICATES ###############
SELECT P , COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY P
HAVING COUNT(*) > 1;

#########
select avg(S) as S from project2_dataset;

select S as median_column from (select S ,Row_Number() over(order by S) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select S as mode_column from (select S ,count(*) as max_count from project2_dataset
group by S
order by max_count desc
limit 1) as subquery;

select stddev(S) as col_stddev from project2_dataset;
select max(S) - min(S)  as col_range from project2_dataset;
select variance(S) as col_variance from project2_dataset;

select (sum(power(S - (select avg(S) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(S) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(S -(select avg(S) from project2_dataset),4 ))/
(count(*) * power(( select stddev(S) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############# DUPLICATES ############
SELECT S, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY S
HAVING COUNT(*) > 1;

########
select avg(CU) as CU from project2_dataset;

select CU as median_column from (select CU ,Row_Number() over(order by CU) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select CU as mode_column from (select CU ,count(*) as max_count from project2_dataset
group by CU
order by max_count desc
limit 1) as subquery;

select stddev(CU) as col_stddev from project2_dataset;
select max(CU) - min(CU)  as col_range from project2_dataset;
select variance(CU) as col_variance from project2_dataset;

select (sum(power(CU - (select avg(CU) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(CU) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(CU -(select avg(CU) from project2_dataset),4 ))/
(count(*) * power(( select stddev(CU) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################# DUPLICATES #############
SELECT CU, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY CU
HAVING COUNT(*) > 1;

############
select avg(CR) as CR from project2_dataset;

select CR as median_column from (select CR ,Row_Number() over(order by CR) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select CR as mode_column from (select CR ,count(*) as max_count from project2_dataset
group by CR
order by max_count desc
limit 1) as subquery;

select stddev(CR) as col_stddev from project2_dataset;
select max(CR) - min(CR)  as col_range from project2_dataset;
select variance(CR) as col_variance from project2_dataset;

select (sum(power(CR - (select avg(CR) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(CR) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(CR -(select avg(CR) from project2_dataset),4 ))/
(count(*) * power(( select stddev(CR) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

SELECT CR, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY CR 
HAVING COUNT(*) > 1;

#######
select avg(NI) as NI from project2_dataset;

select NI as median_column from (select NI ,Row_Number() over(order by NI) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select NI as mode_column from (select NI ,count(*) as max_count from project2_dataset
group by NI
order by max_count desc
limit 1) as subquery;

select stddev(NI) as col_stddev from project2_dataset;
select max(NI) - min(NI)  as col_range from project2_dataset;
select variance(NI) as col_variance from project2_dataset;

select (sum(power(NI - (select avg(NI) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(NI) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(NI -(select avg(NI) from project2_dataset),4 ))/
(count(*) * power(( select stddev(NI) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

########## DUPLICATES #################
SELECT  NI, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY NI
HAVING COUNT(*) > 1;

##########
select avg(N) as N from project2_dataset;

select N as median_column from (select N ,Row_Number() over(order by N) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select N as mode_column from (select N ,count(*) as max_count from project2_dataset
group by N
order by max_count desc
limit 1) as subquery;

select stddev(N) as col_stddev from project2_dataset;
select max(N) - min(N)  as col_range from project2_dataset;
select variance(N) as col_variance from project2_dataset;

select (sum(power(N - (select avg(N) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(N) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(N -(select avg(N) from project2_dataset),4 ))/
(count(*) * power(( select stddev(N) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;
############# DUPLICATES ##############
SELECT N, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY N
HAVING COUNT(*) > 1;

##############
select avg(OPEN_C) as open_c from project2_dataset;

select OPEN_C as median_column from (select OPEN_C ,Row_Number() over(order by OPEN_C) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select OPEN_C as mode_column from (select OPEN_C ,count(*) as max_count from project2_dataset
group by OPEN_C
order by max_count desc
limit 1) as subquery;

select stddev(OPEN_C) as col_stddev from project2_dataset;
select max(OPEN_C) - min(OPEN_C)  as col_range from project2_dataset;
select variance(OPEN_C) as col_variance from project2_dataset;

select (sum(power(OPEN_C - (select avg(OPEN_C) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(OPEN_C) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(OPEN_C -(select avg(OPEN_C) from project2_dataset),4 ))/
(count(*) * power(( select stddev(OPEN_C) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############# DUPLICATES #############
SELECT OPEN_C , COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY OPEN_C
HAVING COUNT(*) > 1;

##########
select avg(TAP_C) as tap_c from project2_dataset;

select TAP_C as median_column from (select TAP_C ,Row_Number() over(order by TAP_C) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select TAP_C as mode_column from (select TAP_C ,count(*) as max_count from project2_dataset
group by TAP_C
order by max_count desc
limit 1) as subquery;

select stddev(TAP_C) as col_stddev from project2_dataset;
select max(TAP_C) - min(TAP_C)  as col_range from project2_dataset;
select variance(TAP_C) as col_variance from project2_dataset;

select (sum(power(TAP_C - (select avg(TAP_C) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(TAP_C) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(TAP_C -(select avg(TAP_C) from project2_dataset),4 ))/
(count(*) * power(( select stddev(TAP_C) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

########### DUPLICATES #############
SELECT TAP_C, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY TAP_C
HAVING COUNT(*) > 1;

#############
select avg(IT_KG) as it_kg from project2_dataset;

select IT_KG as median_column from (select IT_KG ,Row_Number() over(order by IT_KG) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select IT_KG as mode_column from (select IT_KG ,count(*) as max_count from project2_dataset
group by IT_KG
order by max_count desc
limit 1) as subquery;

select stddev(IT_KG) as col_stddev from project2_dataset;
select max(IT_KG) - min(IT_KG)  as col_range from project2_dataset;
select variance(IT_KG) as col_variance from project2_dataset;

select (sum(power(IT_KG - (select avg(IT_KG) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(IT_KG) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(IT_KG -(select avg(IT_KG) from project2_dataset),4 ))/
(count(*) * power(( select stddev(IT_KG) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################# DUPLICATES #################
SELECT IT_KG , COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY IT_KG
HAVING COUNT(*) > 1;

##############
select avg(BUCKET_NO) as bucket_no from project2_dataset;

select BUCKET_NO as median_column from (select BUCKET_NO ,Row_Number() over(order by BUCKET_NO) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select BUCKET_NO as mode_column from (select BUCKET_NO ,count(*) as max_count from project2_dataset
group by BUCKET_NO
order by max_count desc
limit 1) as subquery;

select stddev(BUCKET_NO) as col_stddev from project2_dataset;
select max(BUCKET_NO) - min(BUCKET_NO)  as col_range from project2_dataset;
select variance(BUCKET_NO) as col_variance from project2_dataset;

select (sum(power(BUCKET_NO - (select avg(BUCKET_NO) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(S) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(BUCKET_NO -(select avg(BUCKET_NO) from project2_dataset),4 ))/
(count(*) * power(( select stddev(BUCKET_NO) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############ DUPLICATES #############
SELECT BUCKET_NO, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY BUCKET_NO
HAVING COUNT(*) > 1;

###########
select avg(STATIC_WT) as static_wt from project2_dataset;

select STATIC_WT as median_column from (select STATIC_WT ,Row_Number() over(order by STATIC_WT) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select STATIC_WT as mode_column from (select STATIC_WT ,count(*) as max_count from project2_dataset
group by STATIC_WT
order by max_count desc
limit 1) as subquery;

select stddev(STATIC_WT) as col_stddev from project2_dataset;
select max(STATIC_WT) - min(STATIC_WT)  as col_range from project2_dataset;
select variance(STATIC_WT) as col_variance from project2_dataset;

select (sum(power(STATIC_WT - (select avg(STATIC_WT) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(STATIC_WT) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(STATIC_WT -(select avg(STATIC_WT) from project2_dataset),4 ))/
(count(*) * power(( select stddev(STATIC_WT) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############# DUPLICATES ################
SELECT STATIC_WT, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY STATIC_WT
HAVING COUNT(*) > 1;

###########
select avg(LIME) as lime from project2_dataset;

select LIME as median_column from (select LIME ,Row_Number() over(order by LIME) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select LIME as mode_column from (select LIME ,count(*) as max_count from project2_dataset
group by LIME
order by max_count desc
limit 1) as subquery;

select stddev(LIME) as col_stddev from project2_dataset;
select max(LIME) - min(LIME)  as col_range from project2_dataset;
select variance(LIME) as col_variance from project2_dataset;

select (sum(power(LIME - (select avg(LIME) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(LIME) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(LIME -(select avg(LIME) from project2_dataset),4 ))/
(count(*) * power(( select stddev(LIME) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################## DUPLICATES ##############
SELECT LIME , COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY LIME
HAVING COUNT(*) > 1;

###########
select avg(O2SIDE1) as O2side1 from project2_dataset;

select O2SIDE1 as median_column from (select O2SIDE1 ,Row_Number() over(order by O2SIDE1) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select O2SIDE1 as mode_column from (select O2SIDE1 ,count(*) as max_count from project2_dataset
group by O2SIDE1
order by max_count desc
limit 1) as subquery;

select stddev(O2SIDE1) as col_stddev from project2_dataset;
select max(O2SIDE1) - min(O2SIDE1)  as col_range from project2_dataset;
select variance(O2SIDE1) as col_variance from project2_dataset;

select (sum(power(O2SIDE1 - (select avg(O2SIDE1) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(O2SIDE1) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(O2SIDE1 -(select avg(O2SIDE1) from project2_dataset),4 ))/
(count(*) * power(( select stddev(O2SIDE1) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################## DUPLICATES ##############
SELECT O2SIDE1 , COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY O2SIDE1
HAVING COUNT(*) > 1;

############
select avg(O2SIDE2) as O2side2 from project2_dataset;

select O2SIDE2 as median_column from (select O2SIDE2 ,Row_Number() over(order by O2SIDE2) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select O2SIDE2 as mode_column from (select O2SIDE2 ,count(*) as max_count from project2_dataset
group by O2SIDE2
order by max_count desc
limit 1) as subquery;

select stddev(O2SIDE2) as col_stddev from project2_dataset;
select max(O2SIDE2) - min(O2SIDE2)  as col_range from project2_dataset;
select variance(O2SIDE2) as col_variance from project2_dataset;

select (sum(power(O2SIDE2 - (select avg(O2SIDE2) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(O2SIDE2) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(O2SIDE2 -(select avg(O2SIDE2) from project2_dataset),4 ))/
(count(*) * power(( select stddev(O2SIDE2) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################## DUPLICATES ###################
SELECT O2SIDE2, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY O2SIDE2
HAVING COUNT(*) > 1;

#############
select avg(O2SIDE3) as O2side3 from project2_dataset;

select O2SIDE3 as median_column from (select O2SIDE3 ,Row_Number() over(order by O2SIDE3) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select O2SIDE3 as mode_column from (select O2SIDE3 ,count(*) as max_count from project2_dataset
group by O2SIDE3
order by max_count desc
limit 1) as subquery;

select stddev(O2SIDE3) as col_stddev from project2_dataset;
select max(O2SIDE3) - min(O2SIDE3)  as col_range from project2_dataset;
select variance(O2SIDE3) as col_variance from project2_dataset;

select (sum(power(O2SIDE3 - (select avg(O2SIDE3) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(O2SIDE3) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(O2SIDE3 -(select avg(O2SIDE3) from project2_dataset),4 ))/
(count(*) * power(( select stddev(O2SIDE3) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

############# DUPLICATES ###############
SELECT O2SIDE3, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY O2SIDE3
HAVING COUNT(*) > 1;

##########
select avg(TAP_DURATION) as tap_duration from project2_dataset;

select TAP_DURATION as median_column from (select TAP_DURATION ,Row_Number() over(order by TAP_DURATION) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select TAP_DURATION as mode_column from (select TAP_DURATION ,count(*) as max_count from project2_dataset
group by TAP_DURATION
order by max_count desc
limit 1) as subquery;

select stddev(TAP_DURATION) as col_stddev from project2_dataset;
select max(TAP_DURATION) - min(TAP_DURATION)  as col_range from project2_dataset;
select variance(TAP_DURATION) as col_variance from project2_dataset;

select (sum(power(TAP_DURATION - (select avg(TAP_DURATION) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(TAP_DURATION) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(TAP_DURATION -(select avg(TAP_DURATION) from project2_dataset),4 ))/
(count(*) * power(( select stddev(TAP_DURATION) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

################# DUPLICATES ###############
SELECT TAP_DURATION, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY TAP_DURATION
HAVING COUNT(*) > 1;

#########
select avg(Pour_Back_Metal) as pour_back_metal from project2_dataset;

select `Pour_Back_Metal` as median_column from (select `Pour_Back_Metal` ,Row_Number() over(order by `Pour_Back_Metal`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select Pour_Back_Metal as mode_column from (select Pour_Back_Metal ,count(*) as max_count from project2_dataset
group by Pour_Back_Metal
order by max_count desc
limit 1) as subquery;

select stddev(`Pour_Back_Metal`) as col_stddev from project2_dataset;
select max(Pour_Back_Metal) - min(Pour_Back_Metal)  as col_range from project2_dataset;
select variance(Pour_Back_Metal) as col_variance from project2_dataset;

select (sum(power(Pour_Back_Metal- (select avg(Pour_Back_Metal) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(Pour_Back_Metal) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(Pour_Back_Metal -(select avg(Pour_Back_Metal) from project2_dataset),4 ))/
(count(*) * power(( select stddev(Pour_Back_Metal) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;
 
 ######### DUPLICATES ##############
SELECT Pour_Back_Metal, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY Pour_Back_Metal
HAVING COUNT(*) > 1;

##############
select avg(LM_WT) as lm_wt from project2_dataset;

select LM_WT as median_column from (select LM_WT ,Row_Number() over(order by LM_WT) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select LM_WT as mode_column from (select LM_WT ,count(*) as max_count from project2_dataset
group by LM_WT
order by max_count desc
limit 1) as subquery;

select stddev(LM_WT) as col_stddev from project2_dataset;
select max(LM_WT) - min(LM_WT)  as col_range from project2_dataset;
select variance(LM_WT) as col_variance from project2_dataset;

select (sum(power(LM_WT- (select avg(LM_WT) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(LM_WT) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(LM_WT -(select avg(LM_WT) from project2_dataset),4 ))/
(count(*) * power(( select stddev(LM_WT) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;
 ############ DUPLICATES #############
SELECT LM_WT, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY LM_WT
HAVING COUNT(*) > 1;

##############
select avg (`Production (MT)`) as production_mt from Project2_dataset;

select `Production (MT)`as median_column from (select `Production (MT)` ,Row_Number() over(order by `Production (MT)`) as row_num, 
count(*) over() as total_count from Project2_dataset) as subquery
where row_num = (total_count + 1)/2 or row_num = (total_count +2)/2;

select `Production (MT)` as mode_column from (select `Production (MT)` ,count(*) as max_count from project2_dataset
group by `Production (MT)`
order by max_count desc
limit 1) as subquery;

select stddev(`Production (MT)`) as col_stddev from project2_dataset;
select max(`Production (MT)`) - min(`Production (MT)`)  as col_range from project2_dataset;
select variance(`Production (MT)`) as col_variance from project2_dataset;

select (sum(power(`Production (MT)` - (select avg(`Production (MT)`) 
from project2_dataset), 3))/
(count(*) * power (( select stddev(`Production (MT)`) from project2_dataset),3))
) as skewness 
from project2_dataset;

select ((SUM(power(`Production (MT)` -(select avg(`Production (MT)`) from project2_dataset),4 ))/
(count(*) * power(( select stddev(`Production (MT)`) from project2_dataset), 4 ))) - 3) as kurtosis
from project2_dataset;

######## DUPLICATES ###########
SELECT `Production (MT)`, COUNT(*) as duplicate_count
FROM project2_dataset
GROUP BY `Production (MT)`
HAVING COUNT(*) > 1;

#################### MODE ###########################
SELECT SECTION_IC AS mode_section_ic
FROM (
SELECT SECTION_IC, COUNT(*) AS frequency
FROM project2_dataset
GROUP BY SECTION_IC
ORDER BY frequency DESC
LIMIT 1
) AS subquery;

select SECTION_IC, count(*) as count from project2_dataset
group by SECTION_IC
order by count desc
limit 1;

##############
select distinct(HEATNO) from project2_dataset;
select count(HEATNO) from project2_dataset;
select count(distinct(HEATNO)) as grade_distinct_count from project2_dataset;

select HEATNO, count(*) as count from project2_dataset
group by HEATNO;

select distinct(GRADE) from project2_dataset;
select count(distinct(GRADE)) as grade_distinct_count from project2_dataset;

select GRADE , count(*) as count
from project2_dataset
group by GRADE;

select GRADE , count(GRADE) as frequency
from project2_dataset
group by GRADE
order by frequency desc
limit 1;

################### OUTLIERS #####################

Select * , IF(ABS((`Inj1` - AVG(`Inj1`) OVER())/
stddev(`Inj1`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(Inj1) AS mean_value,
        STDDEV(Inj1) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET Inj1 = (SELECT mean_value FROM stats)
WHERE Inj1 < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR Inj1 > (SELECT mean_value + 3 * stddev_value FROM stats);

Select * , IF(ABS((`Inj2` - AVG(`Inj2`) OVER())/
stddev(`Inj2`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(Inj2) AS mean_value,
        STDDEV(Inj2) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET Inj2 = (SELECT mean_value FROM stats)
WHERE Inj2 < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR Inj2 > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`BSM` - AVG(`BSM`) OVER())/
stddev(`BSM`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(BSM) AS mean_value,
        STDDEV(BSM) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET BSM = (SELECT mean_value FROM stats)
WHERE BSM < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR BSM > (SELECT mean_value + 3 * stddev_value FROM stats);

Select * , IF(ABS((`BP` - AVG(`BP`) OVER())/
stddev(`BP`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(BP) AS mean_value,
        STDDEV(BP) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET BP = (SELECT mean_value FROM stats)
WHERE BP < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR BP > (SELECT mean_value + 3 * stddev_value FROM stats);

Select * , IF(ABS((`OTHERS` - AVG(`OTHERS`) OVER())/
stddev(`OTHERS`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(OTHERS) AS mean_value,
        STDDEV(OTHERS) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET OTHERS = (SELECT mean_value FROM stats)
WHERE OTHERS < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR OTHERS > (SELECT mean_value + 3 * stddev_value FROM stats);

Select * , IF(ABS((`PIGIRON` - AVG(`PIGIRON`) OVER())/
stddev(`PIGIRON`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(PIGIRON) AS mean_value,
        STDDEV(PIGIRON) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET PIGIRON = (SELECT mean_value FROM stats)
WHERE PIGIRON < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR PIGIRON > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`DRI1_QTY (MT) (Lumps)` - AVG(`DRI1_QTY (MT) (Lumps)`) OVER())/
stddev(`DRI1_QTY (MT) (Lumps)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`DRI1_QTY (MT) (Lumps)`) AS mean_value,
        STDDEV(`DRI1_QTY (MT) (Lumps)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `DRI1_QTY (MT) (Lumps)` = (SELECT mean_value FROM stats)
WHERE `DRI1_QTY (MT) (Lumps)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `DRI1_QTY (MT) (Lumps)` > (SELECT mean_value + 3 * stddev_value FROM stats);

Select * , IF(ABS((`dri2` - AVG(`dri2`) OVER())/
stddev(`dri2`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(dri2) AS mean_value,
        STDDEV(dri2) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET dri2 = (SELECT mean_value FROM stats)
WHERE dri2 < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR dri2 > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`TOT_DRI_QTY` - AVG(`TOT_DRI_QTY`) OVER())/
stddev(`TOT_DRI_QTY`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;
WITH stats AS (
    SELECT 
        AVG(TOT_DRI_QTY) AS mean_value,
        STDDEV(TOT_DRI_QTY) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET TOT_DRI_QTY = (SELECT mean_value FROM stats)
WHERE TOT_DRI_QTY < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR TOT_DRI_QTY > (SELECT mean_value + 3 * stddev_value FROM stats);

Select * , IF(ABS((`HOT_METAL (HOT Metal from MBF)` - AVG(`HOT_METAL (HOT Metal from MBF)`) OVER())/
stddev(`HOT_METAL (HOT Metal from MBF)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`HOT_METAL (HOT Metal from MBF)`) AS mean_value,
        STDDEV(`HOT_METAL (HOT Metal from MBF)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `HOT_METAL (HOT Metal from MBF)` = (SELECT mean_value FROM stats)
WHERE `HOT_METAL (HOT Metal from MBF)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `HOT_METAL (HOT Metal from MBF)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`Total Charge` - AVG(`Total Charge`) OVER())/
stddev(`Total Charge`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`Total Charge`) AS mean_value,
        STDDEV(`Total Charge`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `Total Charge` = (SELECT mean_value FROM stats)
WHERE `Total Charge` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `Total Charge` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`Hot_Heel (Left Over Liquid metal in EAF)` - AVG(`Hot_Heel (Left Over Liquid metal in EAF)`) OVER())/
stddev(`Hot_Heel (Left Over Liquid metal in EAF)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`Hot_Heel (Left Over Liquid metal in EAF)`) AS mean_value,
        STDDEV(`Hot_Heel (Left Over Liquid metal in EAF)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `Hot_Heel (Left Over Liquid metal in EAF)` = (SELECT mean_value FROM stats)
WHERE `Hot_Heel (Left Over Liquid metal in EAF)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `Hot_Heel (Left Over Liquid metal in EAF)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`DOLO` - AVG(`DOLO`) OVER())/
stddev(`DOLO`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(DOLO) AS mean_value,
        STDDEV(DOLO) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET DOLO = (SELECT mean_value FROM stats)
WHERE DOLO < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR DOLO > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`DOLO1_EMPTY ` - AVG(`DOLO1_EMPTY `) OVER())/
stddev(`DOLO1_EMPTY `) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`DOLO1_EMPTY `) AS mean_value,
        STDDEV(`DOLO1_EMPTY `) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `DOLO1_EMPTY ` = (SELECT mean_value FROM stats)
WHERE `DOLO1_EMPTY ` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `DOLO1_EMPTY ` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`TOT_LIME_QTY` - AVG(`TOT_LIME_QTY`) OVER())/
stddev(`TOT_LIME_QTY`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`TOT_LIME_QTY`) AS mean_value,
        STDDEV(`TOT_LIME_QTY`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `TOT_LIME_QTY`= (SELECT mean_value FROM stats)
WHERE `TOT_LIME_QTY` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `TOT_LIME_QTY` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`O2ACT` - AVG(`O2ACT`) OVER())/
stddev(`O2ACT`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(O2ACT) AS mean_value,
        STDDEV(O2ACT) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET O2ACT = (SELECT mean_value FROM stats)
WHERE O2ACT < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR O2ACT > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`ENERGY (Energy Consumption)` - AVG(`ENERGY (Energy Consumption)`) OVER())/
stddev(`ENERGY (Energy Consumption)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`ENERGY (Energy Consumption)`) AS mean_value,
        STDDEV(`ENERGY (Energy Consumption)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `ENERGY (Energy Consumption)`= (SELECT mean_value FROM stats)
WHERE `ENERGY (Energy Consumption)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `ENERGY (Energy Consumption)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`KWH_PER_TON (Energy Consumption Per Ton)` - AVG(`KWH_PER_TON (Energy Consumption Per Ton)`) OVER())/
stddev(`KWH_PER_TON (Energy Consumption Per Ton)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`KWH_PER_TON (Energy Consumption Per Ton)`) AS mean_value,
        STDDEV(`KWH_PER_TON (Energy Consumption Per Ton)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `KWH_PER_TON (Energy Consumption Per Ton)` = (SELECT mean_value FROM stats)
WHERE `KWH_PER_TON (Energy Consumption Per Ton)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `KWH_PER_TON (Energy Consumption Per Ton)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`KWH_PER_MIN` - AVG(`KWH_PER_MIN`) OVER())/
stddev(`KWH_PER_MIN`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(KWH_PER_MIN) AS mean_value,
        STDDEV(KWH_PER_MIN) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `KWH_PER_MIN` = (SELECT mean_value FROM stats)
WHERE `KWH_PER_MIN` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `KWH_PER_MIN` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`MELT_TIME (Melting Time)` - AVG(`MELT_TIME (Melting Time)`) OVER())/
stddev(`MELT_TIME (Melting Time)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`MELT_TIME (Melting Time)`) AS mean_value,
        STDDEV(`MELT_TIME (Melting Time)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `MELT_TIME (Melting Time)` = (SELECT mean_value FROM stats)
WHERE `MELT_TIME (Melting Time)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `MELT_TIME (Melting Time)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`TA_TIME (Turn Around Time)` - AVG(`TA_TIME (Turn Around Time)`) OVER())/
stddev(`TA_TIME (Turn Around Time)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`TA_TIME (Turn Around Time)`) AS mean_value,
        STDDEV(`TA_TIME (Turn Around Time)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `TA_TIME (Turn Around Time)` = (SELECT mean_value FROM stats)
WHERE `TA_TIME (Turn Around Time)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `TA_TIME (Turn Around Time)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   

Select * , IF(ABS((`TT_TIME (Total Cycle Time Including Breakdown)` - AVG(`TT_TIME (Total Cycle Time Including Breakdown)`) OVER())/
stddev(`TT_TIME (Total Cycle Time Including Breakdown)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`TT_TIME (Total Cycle Time Including Breakdown)`) AS mean_value,
        STDDEV(`TT_TIME (Total Cycle Time Including Breakdown)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `TT_TIME (Total Cycle Time Including Breakdown)` = (SELECT mean_value FROM stats)
WHERE `TT_TIME (Total Cycle Time Including Breakdown)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `TT_TIME (Total Cycle Time Including Breakdown)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`E1_CUR (Electrode 1 Current)` - AVG(`E1_CUR (Electrode 1 Current)`) OVER())/
stddev(`E1_CUR (Electrode 1 Current)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`E1_CUR (Electrode 1 Current)`) AS mean_value,
        STDDEV(`E1_CUR (Electrode 1 Current)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `E1_CUR (Electrode 1 Current)` = (SELECT mean_value FROM stats)
WHERE `E1_CUR (Electrode 1 Current)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `E1_CUR (Electrode 1 Current)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`E2_CUR (Electrode 2 Current)` - AVG(`E2_CUR (Electrode 2 Current)`) OVER())/
stddev(`E2_CUR (Electrode 2 Current)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`E2_CUR (Electrode 2 Current) (Electrode 1 Current)`) AS mean_value,
        STDDEV(`E2_CUR (Electrode 1 Current)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `E2_CUR (Electrode 1 Current)` = (SELECT mean_value FROM stats)
WHERE `E2_CUR (Electrode 1 Current)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `E2_CUR (Electrode 1 Current)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`E3_CUR (Electrode 3 Current)` - AVG(`E3_CUR (Electrode 3 Current)`) OVER())/
stddev(`E3_CUR (Electrode 3 Current)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`E3_CUR (Electrode 1 Current)`) AS mean_value,
        STDDEV(`E3_CUR (Electrode 1 Current)`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `E3_CUR (Electrode 1 Current)` = (SELECT mean_value FROM stats)
WHERE `E3_CUR (Electrode 1 Current)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `E3_CUR (Electrode 1 Current)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`C` - AVG(`C`) OVER())/
stddev(`C`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(C) AS mean_value,
        STDDEV(C) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET C = (SELECT mean_value FROM stats)
WHERE C < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR C > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`SI` - AVG(`SI`) OVER())/
stddev(`SI`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(SI) AS mean_value,
        STDDEV(SI) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET SI = (SELECT mean_value FROM stats)
WHERE SI < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR SI > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`MN` - AVG(`MN`) OVER())/
stddev(`MN`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(MN) AS mean_value,
        STDDEV(MN) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET MN = (SELECT mean_value FROM stats)
WHERE MN < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR MN > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`P` - AVG(`P`) OVER())/
stddev(`P`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(P) AS mean_value,
        STDDEV(P) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET P = (SELECT mean_value FROM stats)
WHERE P < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR P > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`S` - AVG(`S`) OVER())/
stddev(`S`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(S) AS mean_value,
        STDDEV(S) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET S = (SELECT mean_value FROM stats)
WHERE S < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR S > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`CU` - AVG(`CU`) OVER())/
stddev(`CU`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(CU) AS mean_value,
        STDDEV(CU) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET CU = (SELECT mean_value FROM stats)
WHERE CU < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR CU > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`CR` - AVG(`CR`) OVER())/
stddev(`CR`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(CR) AS mean_value,
        STDDEV(CR) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET CR = (SELECT mean_value FROM stats)
WHERE CR < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR CR > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`NI` - AVG(`NI`) OVER())/
stddev(`NI`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(NI) AS mean_value,
        STDDEV(NI) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET NI = (SELECT mean_value FROM stats)
WHERE NI < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR NI > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`N` - AVG(`N`) OVER())/
stddev(`N`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(N) AS mean_value,
        STDDEV(N) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET N = (SELECT mean_value FROM stats)
WHERE N < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR N > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`OPEN_C` - AVG(`OPEN_C`) OVER())/
stddev(`OPEN_C`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`OPEN_C`) AS mean_value,
        STDDEV(`OPEN_C`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `OPEN_C` = (SELECT mean_value FROM stats)
WHERE `OPEN_C` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `OPEN_C` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`TAP_C` - AVG(`TAP_C`) OVER())/
stddev(`TAP_C`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(TAP_C) AS mean_value,
        STDDEV(TAP_C) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET TAP_C = (SELECT mean_value FROM stats)
WHERE TAP_C < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR TAP_C > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`IT_KG` - AVG(`IT_KG`) OVER())/
stddev(`IT_KG`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`IT_KG`) AS mean_value,
        STDDEV(`IT_KG`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `IT_KG` = (SELECT mean_value FROM stats)
WHERE `IT_KG` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `IT_KG` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`BUCKET_NO` - AVG(`BUCKET_NO`) OVER())/
stddev(`BUCKET_NO`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`BUCKET_NO`) AS mean_value,
        STDDEV(`BUCKET_NO`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `BUCKET_NO` = (SELECT mean_value FROM stats)
WHERE `BUCKET_NO` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `BUCKET_NO` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`STATIC_WT` - AVG(`STATIC_WT`) OVER())/
stddev(`STATIC_WT`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(`STATIC_WT`) AS mean_value,
        STDDEV(`STATIC_WT`) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `STATIC_WT`= (SELECT mean_value FROM stats)
WHERE `STATIC_WT` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `STATIC_WT` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`LIME` - AVG(`LIME`) OVER())/
stddev(`LIME`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(LIME) AS mean_value,
        STDDEV(LIME) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET LIME = (SELECT mean_value FROM stats)
WHERE LIME < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR LIME > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`O2SIDE1` - AVG(`O2SIDE1`) OVER())/
stddev(`O2SIDE1`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(O2SIDE1) AS mean_value,
        STDDEV(O2SIDE1) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET O2SIDE1 = (SELECT mean_value FROM stats)
WHERE O2SIDE1 < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR O2SIDE1 > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`O2SIDE2` - AVG(`O2SIDE2`) OVER())/
stddev(`O2SIDE2`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(O2SIDE2) AS mean_value,
        STDDEV(O2SIDE2) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET O2SIDE2 = (SELECT mean_value FROM stats)
WHERE O2SIDE2 < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR O2SIDE2 > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`O2SIDE3` - AVG(`O2SIDE3`) OVER())/
stddev(`O2SIDE3`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(O2SIDE3) AS mean_value,
        STDDEV(O2SIDE3) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET O2SID3 = (SELECT mean_value FROM stats)
WHERE O2SIDE3 < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR O2SIDE3 > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`TAP_DURATION` - AVG(`TAP_DURATION`) OVER())/
stddev(`TAP_DURATION`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(TAP_DURATION) AS mean_value,
        STDDEV(TAP_DURATION) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET TAP_DURATION = (SELECT mean_value FROM stats)
WHERE TAP_DURATION < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR TAP_DURATION > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`Pour_Back_Metal` - AVG(`Pour_Back_Metal`) OVER())/
stddev(`Pour_Back_Metal`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(Pour_Back_Metal) AS mean_value,
        STDDEV(Pour_Back_Metal) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET Pour_Back_Metal = (SELECT mean_value FROM stats)
WHERE Pour_Back_Metal < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR Pour_Back_Metal > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`LM_WT` - AVG(`LM_WT`) OVER())/
stddev(`LM_WT`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(LM_WT) AS mean_value,
        STDDEV(LM_WT) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET LM_WT = (SELECT mean_value FROM stats)
WHERE LM_WT < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR LM_WT > (SELECT mean_value + 3 * stddev_value FROM stats);
   
Select * , IF(ABS((`Production (MT)` - AVG(`Production (MT)`) OVER())/
stddev(`Production (MT)`) OVER()) > 3,
'Outlier','Not Outlier') AS Outlier_Flag
From project2_dataset;

WITH stats AS (
    SELECT 
        AVG(Production (MT)) AS mean_value,
        STDDEV(Production (MT)) AS stddev_value
    FROM 
        project2_dataset
)
UPDATE project2_dataset
SET `Production (MT)` = (SELECT mean_value FROM stats)
WHERE `Production (MT)` < (SELECT mean_value - 3 * stddev_value FROM stats)
   OR `Production (MT)` > (SELECT mean_value + 3 * stddev_value FROM stats);
   
#################################################
SELECT 
    AVG(`BSM`) AS Mean_BSM,
	#PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY `BSM`) AS Median_BSM,
    STDDEV(`BSM`) AS Stddev_BSM,
    MIN(`BSM`) AS Min_BSM,
    MAX(`BSM`) AS Max_BSM,
    COUNT(*) AS Total_Count
FROM 
    project2_dataset;


####################### MISSING VALUES #####################
SELECT
COUNT(*) AS total_rows,
SUM(CASE WHEN `PREV_TAP_TIME` IS NULL THEN 1 ELSE 0 END) AS column1_missing,
SUM(CASE WHEN `Production (MT)` IS NULL THEN 1 ELSE 0 END) AS column2_missing
FROM project2_dataset;    
 
################### NORMALIZATION ################## 
WITH MinMax AS (
    SELECT 
        MIN(`BSM`) AS Min_BSM,
        MAX(`BSM`) AS Max_BSM
    FROM 
        project2_dataset
)
SELECT 
    *,
    ( (`BSM` - MinMax.Min_BSM) / (MinMax.Max_BSM - MinMax.Min_BSM) ) AS Normalized_BSM
FROM 
    project2_dataset,
    MinMax;
    
###################### DUMMY VARIABLES#######################
select * from project2_dataset;
SELECT
Inj1, Inj2,BSM, BP,
CASE WHEN SECTION_IC = 'A' THEN 1 ELSE 0 END AS section_A,
CASE WHEN SECTION_IC = 'B' THEN 1 ELSE 0 END AS section_B,
CASE WHEN SECTION_IC = 'C' THEN 1 ELSE 0 END AS section_C
FROM project2_dataset;


  