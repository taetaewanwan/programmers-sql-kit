-- 코드를 작성해주세요
SELECT DISTINCT D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME
    FROM DEVELOPERS D
        JOIN SKILLCODES S
        ON S.CODE & D.SKILL_CODE
    WHERE S.NAME IN ('Python', 'C#')
    ORDER BY D.ID ASC
        
    -- CODE의 합이 SKOLL_CODE와 같으면 해당 개발자는 그 CODE들의 스킬을 가지고 있음
    -- & 비트연산자: 두 개 일치하는 비트만 반환
    -- DISTINCT를 안 써서 계속 틀림, 둘 다 가지고 있을 때 두 번 출력되는 거 방지