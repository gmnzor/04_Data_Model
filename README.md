# Project 04 - Predictions Utilizing Various ML Models
Jorge Benavente, 
Elizabeth Dutton,
Victoria Scott,
& Nestor Gomez

## Objective
This project uses historical data on layoffs, mortgage rates, unemployment rates, stock market performance, and wage information to develop predictive models to be able to predict stock market values.

## Data Used
- Economic Indicators
    - Mortgage Rates: Trends in the 30-year fixed mortgage rates provide insight into the housing market's health.
    - Federal Interest Rates (fed_rate): These rates impact business borrowing costs and overall economic activity.
    - Unemployment Rates: Tracks the percentage of the labor force that is unemployed and seeking work.

- Stock Market Data
    - Stock Prices: Historical stock data (open, high, low, close) from S&P 500 provides insights into market performance.
    - Adjusted Close and Volume: These metrics help assess stock market volatility and investor behavior over time.

- Layoff and Business Metrics
    - Layoffs by Month: Historical data on layoffs for the years 2020-2024.
    - Funds Raised by Month: Tracks the funds raised by companies, giving insight into business growth and investments during certain periods.
    - CPI and Wage Data: Consumer price index and wage data provide additional context on inflation and its relationship to layoffs.




## Preprocessing
"What processes did you have to do to prepare the data for the model? (EDA, data cleaning, normalization, feature selection, etc)"
### Python

### SQL
We utilized a PostgreSQL database to house our data and collate our data for use in our model. We called every column proactively instead of using a SELECT * to maintain an order to the columns in our data. Similarly, we used an ORDER BY statement focusing on the date to ensure our data was in chronological order.

This long SQL query led to data that was almost as wide as it was tall. 

We also utilizedtwo different kinds of joins - implicit joins and an explicitly left join which made sure we did not filter out rowas where a subset of our data was null. Otherwise, we would have dropped from monthly segnments down to quarterly, cuttin our data in fours.

## Machine Learning Model
"How did you choose your ML model? Did you try any other models?
How did you optimize your model?
What did you learn from your model, and can it be used for the goal you had originally set out to accomplish?"

### Time Series Model

### Random Forest

## Post-Mortem
### Limitations
1. Timeframe
    - Our data begins in March 2020, just more than four years. While this provides a unique insight into how the economy has performed during a global pandemic, it limits our data points and predictive power. 
2. Data Quality
    - Even within this limited timeframe, we still ran into some data issues. Our layoff data was missing May and July of 2021, one-sixth of one of only four years. Additionally, some of our data was incongruous. Wages is tracked quarterly, not monthly. Some other economic indicator datasets were missing months at the tale end.
3. Data Scope
    - Our data was limited to focus on the tech sector, specifically with wage data and consumer price index data. This focus allowed us to process data quickly, but it did contribute to problems with our data shape, i.e. a dataset that was nearly as wide as it was tall. 
4. Prior experience and deadline
    - As beginning Data Analysts, we don't know what we dont know. There may have been quicker or more efficient methods to much of the workflow of this project. We may also have been ignorant to better analytical tools. Additionally, the quick turnaround for the project limited our scope. In other words, we had to be sure to have completed the assignments before pencils were ordered down.

### Next Steps
1. Expanding Timeframe
    - Looking back farther and including more dates would help with our data shape concern. As with all MLM, more data leads to more predictive power.
2. Effects Lag Behind Causes
    - One feature we were unable to include in the scope of this analysis is taking time into account. Certain varibales, like layoffs could lag behind wage growth or unemployment numbers by one, two, three or months. Rerunning this analysis with this in mind could lead to more predictive power.
2. More Economic Indicators
    - Economies are complicated, living systems with a variety of contributing factors. more economic indicators that culd be added include GDP, Import/Export comparisons, and Consumer Confidence Index
3. Expanding Data Scope
    - Expanding our datasets outside of the tech sector could improve predictive power, as could inlcuding global economic trends alongside our US only data.
4. Continued Learning
    - As we continue in this new field, our expertise will grow as will our toolbelt. Reviewing this question again in a year would likely yield improved results.

## Data sources
Kaggle.com
- [Layoffs](https://www.kaggle.com/datasets/theakhilb/layoffs-data-2022/data)

Fred.Stlouisfed.org
- [Federal Interest Rates](https://fred.stlouisfed.org/series/FEDFUNDS)
- [Mortgage Rates](https://fred.stlouisfed.org/series/MORTGAGE30US)
- [Unemployment Rate](https://fred.stlouisfed.org/series/UNRATE)

Federalreserve.gov
- [Consumer Credit](https://www.federalreserve.gov/releases/G19/default.htm)
- [Money Stock Measures](https://www.federalreserve.gov/releases/H6/default.htm)
- [Assets and Liabilities of Commercial Banks](https://www.federalreserve.gov/releases/H8/default.htm)

Finance.yahoo.com
- [Historical Stock Data](https://finance.yahoo.com/quote/%5EGSPC/history/?guccounter=1guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8guce_referrer_sig=AQAAACgcAAflw6EY-jFGh7VmV6ZXePq034LmPxwwUsQMxhhtfb_Ymbt3nR3yhbIZYdg71J5aBAvS9SBoRLgNspulwdioiw4licbG28hNPeOTLLNJm5U47qPCMSortE0CU7pwXF7MwS_GzmO7-mGh47ksGgN7zMBkWxoVDO680acXtHnx&frequency=1mo)

