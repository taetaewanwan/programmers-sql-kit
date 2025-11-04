-- 코드를 작성해주세요
SELECT 
    YEAR(DIFFERENTIATION_DATE) AS YEAR,
    (MAX(SIZE_OF_COLONY) OVER (PARTITION BY YEAR(DIFFERENTIATION_DATE))) - SIZE_OF_COLONY AS YEAR_DEV,
    ID
    FROM ECOLI_DATA
    ORDER BY YEAR, YEAR_DEV;
    
    -- 연도별 가장 큰 대장균을 구해야함, 그 후 가장 큰 대장균과 각 ID별 대장균과 비교해야 함.
    -- CTE 및 윈도우 함수 추가 공부 필요