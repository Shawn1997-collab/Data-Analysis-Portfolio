select *
from porfolio.ev_data; 

--  Calculating each state's electric vehicle amount and national ranking
select year,  state, `EV Registrations` as Total_EVs,
rank() over(order by  `EV Registrations` ) as EV_Registration_Rank
from porfolio.ev_data
order by year;

-- Find first 10 states with highest gas price 
select state, round(`gasoline_price_per_gallon`,2) as gas_price, 
rank() over (order by `gasoline_price_per_gallon` desc) as National_Ranking
from porfolio.ev_data
where year = 2023; 

-- find  each state's national rank, gas price, and electic vehicle's share and total amount in 2023
select year, state, `EV Registrations` as Total_EVs, `EV Share (%)` as EV_Percentage, 
rank() over (order by `EV Registrations` desc) as National_Ranking,
`gasoline_price_per_gallon` as gas_price,
rank() over (order by `gasoline_price_per_gallon` desc) as Gas_National_Ranking
from porfolio.ev_data
order by year
;



-- Calculate each year's nationwide vehicles and electric vehicle amount 
select year, sum(`EV Registrations`) as nationwide_total_EVs, sum(`Total Vehicles`) as nation_wide_vehicles
from porfolio.ev_data
group by year
order by year;

-- find national electric vehicle ownership and total vehicles people owned nationwide 
select year, round(sum(`EV Registrations`) / sum(`Total Vehicles`) * 100,2) as ev_percentage 
from porfolio.ev_data
group by year
order by year;

-- Discover the relationship between national average gas price and electic vehicle ownership 
select year, sum(`EV Registrations`) as nationwide_total_EVs, round(avg(`gasoline_price_per_gallon`),2) as average_gas_price
from porfolio.ev_data
group by year
order by year;

-- Discover between  national truck's ownership  and electric vehile 
select year, round(sum(`EV Registrations`) / sum(`Total Vehicles`) * 100 ,2)as ev_percentage, round( sum(Trucks)/sum(`Total Vehicles`) ,2)as truck_percentage
from porfolio.ev_data
group by year
order by year;

-- discover how each state's tax credit, state regulation, and gas price impact the ev sales. 

select year, state, `EV Registrations` as Total_EVs, round(`gasoline_price_per_gallon`,2) as gas_price, regulate, reducetax
from porfolio.ev_data
order by year; 
--  Find how charing stations impact the sale of evs
 SELECT `year`, state, `EV Registrations` AS Total_EVs, Stations,
	`Total Charging Outlets`, `Level 1`, `Level 2`, `DC Fast`
FROM porfolio.ev_data
order by year, `EV Registrations`desc;

-- How education, per cap income impact ev ownership statewide 
SELECT
	year, state, `EV Registrations` AS Total_EVs,  Education_Bachelor,
    Bachelor_Attainment, Per_Cap_Income,
        rank() over(partition by year order by Per_Cap_Income desc) as average_income_level
    FROM porfolio.ev_data
    order by year;

-- california ev growth based on gas, tax, and regulation
select year, state,  `EV Registrations` AS Total_EVs, `gasoline_price_per_gallon` as gas_price, regulate, reducetax
FROM porfolio.ev_data
where state = 'California'

