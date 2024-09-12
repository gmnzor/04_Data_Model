SELECT 
	l.date, l.laid_off_by_month, l.funds_raised_by_month, 
	
	m.mortgage_rate,
	
	u.unemployment_rate,
	
	f.fed_rate,
	
	s.stock_open, 	s.stock_high, 		s.stock_low,
    s.stock_close, 	s.stock_adj_close, 	s.stock_volume,
	
	c.education_and_communication_commodities_inflation, c.education_and_communication_services_inflation,
    c.information_technology_commodities_inflation, c.education_and_communication_commodities_avg_value,
    c.education_and_communication_services_avg_value,c.information_technology_commodities_avg_value,
	
	w.benefits_inflation, 	w.total_compensation_inflation, w.wages_and_salaries_inflation,
    w.benefits_avg_value, 	w.total_compensation_avg_value, w.wages_and_salaries_avg_value,
	
	b.bank_credit, 			b.securities_in_bank_credit,	b.treasury_agency_securities,
	b.other_securities, 	b.real_estate_loans, 			b.total_assets,b.currency_sa,
	b.demand_deposits_sa, 	b.monetary_base_currency_nsa, 	b.monetary_base_total_nsa,
	b.pct_change_consumer_credit_sa, 						b.consumer_credit_owned_securitized_sa,
	b.consumer_credit_nonfinancial_owned_nsa, 				b.consumer_credit_credit_unions_owned_nsa

FROM layoffs_data as l
	
JOIN 	mortgage_rate_data 			AS m ON (l.date = m.date)
JOIN 	unemployment_rate_data 		AS u ON (l.date = u.date)
JOIN 	fed_interest_rate_data 		AS f ON (l.date = f.date)
JOIN 	stock_data 					AS s ON (l.date = s.date)
JOIN 	consumer_price_index_data	AS c ON (l.date = c.date)
LEFT JOIN wages_data 				AS w ON (l.date = w.date)					
LEFT JOIN bank_credit_data 			AS b ON (l.date = b.date)		
	
ORDER by l.date
;