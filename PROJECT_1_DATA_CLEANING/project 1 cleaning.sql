-- DATA CLEANING --
-- 1. Remove Duplicates
-- 2. Standardize Data
-- 3. Null values or blank values 
-- 4. Remove any columns 

SELECT *
from layoffs;

CREATE TABLE layoffs_staging
Like layoffs;

INSERT layoffs_staging
SELECT *
FROM layoffs;

SELECT *,
ROW_NUMBER() OVER(PARTITION BY 
company, industry, total_laid_off, percentage_laid_off, `date` ) AS row_num
from layoffs_staging;

WITH duplicates_cte AS 

(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY 
company, location, industry, total_laid_off, percentage_laid_off, `date` , stage , funds_raised_millions) AS row_num
from layoffs_staging
)

SELECT *
FROM duplicates_cte
WHERE row_num > 1;


Select *
FROM layoffs_staging
WHERE company = 'Hibob';

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


Select *
FROM layoffs_staging2
;

INSERT INTO layoffs_staging2
SELECT *,
ROW_NUMBER() OVER(PARTITION BY 
company, location, industry, total_laid_off, percentage_laid_off, `date` , stage , funds_raised_millions) AS row_num
from layoffs_staging;

DELETE 
FROM layoffs_staging2
WHERE row_num > 1;

SELECT *
FROM layoffs_staging2
WHERE row_num > 1;

SELECT*
FROM layoffs_staging2
;





-- Standarizing Data

SELECT company, trim(company)
FROM layoffs_staging2;

UPDATE layoffs_staging2
SET company = trim(company);

SELECT DISTINCT industry
FROM layoffs_staging2
ORDER BY 1;

SELECT * 
From layoffs_staging2
;


SELECT * 
From layoffs_staging2
Where industry like 'Crypto%';

UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry like 'Crypto%';


SELECT DISTInct Country
From layoffs_staging2
ORDER BY 1
;

UPDATE layoffs_staging2
SET country = 'United States'
WHERE country like 'United States%';


Select `date`, 
str_to_date(`date`, '%m/%d/%Y')
FROM layoffs_staging2;

UPDATE layoffs_staging2
SET `date` = str_to_date(`date`, '%m/%d/%Y');

ALTER TABLE layoffs_staging2
MODIFY column `date` DATE;

SELECT *
From layoffs_staging2
WHERE industry IS NULL
OR industry = ''
ORDER BY 1
;

SELECT *
From layoffs_staging2
WHERE company = 'Juul'
;

UPDATE layoffs_staging2
SET industry = 'Travel'
WHERE company = 'Airbnb';

UPDATE layoffs_staging2
SET industry = 'Transportation'
WHERE company = 'Carvana';

UPDATE layoffs_staging2
SET industry = 'Consumer'
WHERE company = 'Juul';


SELECT *
From layoffs_staging2
WHERE total_laid_off IS NULL AND percentage_laid_off IS NULL
;

DELETE 
From layoffs_staging2
WHERE total_laid_off IS NULL AND percentage_laid_off IS NULL
;


ALTER TABLE layoffs_staging2
DROP COLUMN row_num;


SELECT *
FROM layoffs_staging2;
