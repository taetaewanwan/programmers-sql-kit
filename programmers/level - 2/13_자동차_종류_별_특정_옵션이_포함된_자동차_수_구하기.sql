-- 코드를 입력하세요
SELECT CAR_TYPE, COUNT(*) AS CARS
    FROM CAR_RENTAL_COMPANY_CAR
    WHERE OPTIONS LIKE '%열선시트%' 
          OR OPTIONS LIKE '%통풍시트%' 
          OR OPTIONS LIKE '%가죽시트%'
    GROUP BY CAR_TYPE
    ORDER BY CAR_TYPE
    
    #OPTIONS 열에 여러 키워드가 ,로 구분하여 저장되어 잇음
    #따라서 부분 문자열 LIKE절을 이용하여 풀어야함