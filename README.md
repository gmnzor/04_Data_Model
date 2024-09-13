# Project 04 - Predictions Utilizing Various ML Models

**Jorge Benavente**,  
**Elizabeth Dutton**,  
**Victoria Scott**,  
**Nestor Gomez**

## Objective
This project focuses on using historical data on layoffs, mortgage rates, unemployment rates, stock market performance, and wage information to develop machine learning (ML) models for predicting stock market values.

## Slide Presentation
A comprehensive slide deck summarizing the **random forest model** and the **gradient boosting model** predictions is available [here](https://docs.google.com/presentation/d/1At24Lp1zJ_oxY6aGrxhRjLDrNptB0pVD3oqKOQS3ris/edit#slide=id.g2ffbaa39248_1_0). The slide includes visual representations of predictions, models used, and analysis of the stock close prices for the years 2020–2025.

## Data Used
### Economic Indicators
- **Mortgage Rates**: Trends in 30-year fixed mortgage rates provide insight into the housing market.
- **Federal Interest Rates (fed_rate)**: These rates impact business borrowing costs and economic activity.
- **Unemployment Rates**: Tracks the percentage of the labor force that is unemployed.

### Stock Market Data
- **Stock Prices**: Historical data from the S&P 500, including open, high, low, and close prices.
- **Adjusted Close and Volume**: Metrics to assess stock market volatility over time.

### Layoff and Business Metrics
- **Layoffs by Month**: Data on layoffs for the years 2020-2024.
- **Funds Raised by Month**: Tracks business growth and investments.
- **CPI and Wage Data**: Consumer price index and wage data provide additional context on inflation.

## Preprocessing
### Data Cleaning and EDA
We conducted thorough data cleaning and exploratory data analysis (EDA), including normalization, feature selection, and handling missing data, before building the model. The workflow was divided into various stages:

- **[CPI Transformation](patterns_predictions/CPI_transform.ipynb)**: Cleaning and transforming consumer price index data.
- **[Wage Data Processing](patterns_predictions/wages_tech.ipynb)**: Processing and cleaning wage data.
- **[Stock Data Transformation](patterns_predictions/stock_cleaning.ipynb)**: Cleaning and normalizing stock data.
 
### Banking, Credit and Asset panel data
The Money Stock Measures cover liquid forms of money, such as currency, demand deposits, and small-time deposits. The Assets and Liabilities of Commercial Banks report aggregated balance sheets for commercial banks. The Consumer Credit report details revolving and nonrevolving credit extended to consumers, showing growth rates, levels, and flows. After cleaning the data, we merged datasets and added new variables, then split and trained the data on a smaller scale. This analysis included both Consumer Credit and the monetary base.

### SQL Database
We used a PostgreSQL database to manage the large dataset. Queries were designed to maintain order and consistency, with special attention to ensure rows with missing data were preserved where possible.

## Exploring Patterns in Data
In the process of developing the model, I explored patterns in the data using **Principal Component Analysis (PCA)** and correlation heatmaps to identify relationships between key variables.

### PCA and Correlation Analysis
- **PCA (Principal Component Analysis)**: I performed dimensionality reduction using PCA, which allowed me to group important features and identify clusters in the data. You can find these visualizations in the [explore_patterns.ipynb](patterns_predictions/explore_patterns.ipynb) notebook, along with corresponding images like the **[explained variance plot](patterns_predictions/exploratory_data_pca/explained_variance_plot.png)** and **[elbow plot](patterns_predictions/exploratory_data_pca/elbow_plot.png)**, which helped determine the optimal number of components for PCA.

- **Correlation Heatmap**: I also generated a **[correlation heatmap](patterns_predictions/exploratory_data_pca/correlation_heatmap.png)** to visualize the relationships between different features. This provided valuable insights into how different variables are correlated, aiding in feature selection and model optimization.


## Machine Learning Model
### Gradient Boosting Regressor
After cleaning the data, we selected the **Gradient Boosting Regressor** due to its robustness in handling non-linearities and its ability to handle various types of data. The model was trained on historical stock data, including close prices, with features like unemployment rate, federal interest rates, and mortgage rates contributing to the prediction.

**[Jupyter Notebook for Stock Prediction](patterns_predictions/Predict_Stock_Prices.ipynb)**

- **Prediction**:
  - **MSE**: 21,488.60
  - **R²**: 0.92
  
  The model produced accurate results for stock prices, predicting upward and downward trends with significant accuracy.

**Prediction Visualization**:  
![Stock Close Price Predictions](patterns_predictions/prediction_images/stock_close_actual_vs_predicted.png)

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

## Data Sources
- **[Layoffs Data](https://www.kaggle.com/datasets/theakhilb/layoffs-data-2022/data)**
- **[Federal Interest Rates](https://fred.stlouisfed.org/series/FEDFUNDS)**
- **[Mortgage Rates](https://fred.stlouisfed.org/series/MORTGAGE30US)**
- **[Unemployment Rate](https://fred.stlouisfed.org/series/UNRATE)**
- **[S&P 500 Historical Stock Data](https://finance.yahoo.com/quote/%5EGSPC/history/?guccounter=1)**
- **[Wage and CPI data](https://www.bls.gov/) - Bureau of Labor Statistics**
