-- 코드를 작성해주세요
select SUM(G.SCORE) AS SCORE, G.EMP_NO, E.EMP_NAME, E.POSITION, E.EMAIL
    from HR_EMPLOYEES E 
        join HR_GRADE G
        on E.EMP_NO = G.EMP_NO
    WHERE YEAR = '2022'
    GROUP BY EMP_NO
    ORDER BY 1 DESC
    LIMIT 1;