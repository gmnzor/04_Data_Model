-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "layoffs_data" (
    "date" date   NOT NULL,
    "laid_off_by_month" int   NOT NULL,
    "funds_raised_by_month" float   NOT NULL,
    CONSTRAINT "pk_layoffs_data" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "mortgage_rate_data" (
    "date" date   NOT NULL,
    "mortgage_rate" float   NOT NULL
);

CREATE TABLE "stock_data" (
    "date" date   NOT NULL,
    "stock_open" float   NOT NULL,
    "stock_high" float   NOT NULL,
    "stock_low" float   NOT NULL,
    "stock_close" float   NOT NULL,
    "stock_adj_close" float   NOT NULL,
    "stock_volume" int   NOT NULL
);

CREATE TABLE "unemployment_rate_data" (
    "date" date   NOT NULL,
    "unemployment_rate" float   NOT NULL
);

CREATE TABLE "fed_interest_rate_data" (
    "date" date   NOT NULL,
    "fed_rate" float   NOT NULL
);

CREATE TABLE "consumer_price_index_data" (
    "date" date   NOT NULL,
    "education_and_communication_commodities_inflation" float   NOT NULL,
    "education_and_communication_services_inflation" float   NOT NULL,
    "information_technology_commodities_inflation" float   NOT NULL,
    "education_and_communication_commodities_avg_value" float   NOT NULL,
    "education_and_communication_services_avg_value" float   NOT NULL,
    "information_technology_commodities_avg_value" float   NOT NULL
);

