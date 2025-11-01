-- 코드를 작성해주세요
SELECT ROUTE, CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1),'km') AS TOTAL_DISTANCE, CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2), 'km') AS AVERAGE_DISTANCE
    FROM SUBWAY_DISTANCE
    GROUP BY ROUTE
    ORDER BY ROUND(SUM(D_BETWEEN_DIST), 1) DESC;

/*
-- MYSQL
-- 집계(숫자) 후 포맷을 붙여주는 방식: 정렬 정확도 보장
WITH agg AS (
  SELECT
    ROUTE,
    ROUND(SUM(D_BETWEEN_DIST), 1) AS total_num,   -- 총 누계 거리: 소수1자리
    ROUND(AVG(D_BETWEEN_DIST), 2) AS avg_num      -- 평균 거리: 소수2자리
  FROM SUBWAY_DISTANCE
  GROUP BY ROUTE
)
SELECT
  ROUTE,
  CONCAT(total_num, 'km')   AS TOTAL_DISTANCE,
  CONCAT(avg_num,   'km')   AS AVERAGE_DISTANCE
FROM agg
ORDER BY total_num DESC;
CTE(또는 서브쿼리)로 숫자 집계 후 포맷
숫자 상태에서 정렬(ORDER BY total_num DESC)을 수행하고, 최종 출력에서만 'km'를 붙입니다.
*/
    