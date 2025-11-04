-- 코드를 입력하세요
SELECT left(PRODUCT_CODE, 2) as CATEGORY, COUNT(*) AS PRODUCT
    FROM PRODUCT
    GROUP BY CATEGORY
    ORDER BY CATEGORY
    
    -- 문자 슬라이싱 LEFT, RIGHT: "처음부터 N개" 또는 "끝에서부터 N개"
    -- SUBSTRING(문자열, 시작_위치, 가져올_길이)
    -- SQL의 인덱스는 1부터 시작