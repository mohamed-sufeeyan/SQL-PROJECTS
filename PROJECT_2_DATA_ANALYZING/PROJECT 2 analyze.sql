-- EXPLORATORY PROJECT 

Select *
from layoffs_staging2;

Select max(total_laid_off), max(percentage_laid_off)
from layoffs_staging2;

Select *
from layoffs_staging2
where percentage_laid_off = 1
ORDER by total_laid_off DESC;

Select *
from layoffs_staging2
where percentage_laid_off = 1
ORDER by funds_raised_millions DESC;


Select min(`date`), max(`date`)  
from layoffs_staging2
;


Select company, sum(total_laid_off)  
from layoffs_staging2
group by company
ORDER by 2 DESC;

Select industry, sum(total_laid_off)  
from layoffs_staging2
group by industry
ORDER by 2 DESC;

Select industry, sum(total_laid_off)  
from layoffs_staging2
group by industry
ORDER by 2 DESC;

Select country, sum(total_laid_off)  
from layoffs_staging2
group by country
ORDER by 2 DESC;

Select year(`date`), sum(total_laid_off)  
from layoffs_staging2
group by year(`date`)
ORDER by 2 DESC;


Select stage, sum(total_laid_off)  
from layoffs_staging2
group by stage
ORDER by 2 DESC;


Select  substring(`date`, 1,7)  AS `month`, sum(total_laid_off) 
from layoffs_staging2
WHERE substring(`date`, 1,7) IS NOT NULL
group by substring(`date`, 1,7)
ORDER by 1 ;


WITH rolling_total AS 

(Select  substring(`date`, 1,7)  AS `month`, sum(total_laid_off) AS laid_off
from layoffs_staging2
WHERE substring(`date`, 1,7) IS NOT NULL
group by substring(`date`, 1,7)
ORDER by 1 
)

Select `month`, laid_off , sum(laid_off) OVER (ORDER BY `month`) AS rolling_sum
from rolling_total;


Select company, year(`date`), sum(total_laid_off)  
from layoffs_staging2
group by company , year(`date`)
ORDER by 3 DESC;



WITH rank_company(companay , years , total_laid_off) AS 

(Select company, year(`date`), sum(total_laid_off)  
from layoffs_staging2
group by company , year(`date`)
ORDER by 3 DESC)

SELECT *, dense_rank() OVER(PARTITION BY years ORDER BY total_laid_off DESC) AS ranking_company_layoff
from rank_company
where years IS NOT NULL
ORDER BY years;






WITH rank_company(company , years , total_laid_off) AS 
(Select company, year(`date`), sum(total_laid_off)  
from layoffs_staging2
group by company , year(`date`)
ORDER by 3 DESC),

company_ranking AS 
(SELECT *, dense_rank() OVER(PARTITION BY years ORDER BY total_laid_off DESC) AS ranking_company_layoff
from rank_company
where years IS NOT NULL
ORDER BY years)

Select * 
from company_ranking
where ranking_company_layoff <= 5 ;

WITH country_rank (country, years, total_laid_off) AS
(Select country, year(`date`), sum(total_laid_off)  
from layoffs_staging2
group by country , year(`date`)
ORDER by 3 DESC)

Select *, dense_rank() over(Partition by years  order by total_laid_off DESC)
from country_rank
where years IS NOT NULL
order by years

;























































































