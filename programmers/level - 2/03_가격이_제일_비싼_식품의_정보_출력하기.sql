-- 코드를 입력하세요
SELECT *
    FROM FOOD_PRODUCT
    ORDER BY PRICE DESC
    LIMIT 1;
    
    #WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT)
    #MAX문과 서브 쿼리를 이용하는 방법도 있음