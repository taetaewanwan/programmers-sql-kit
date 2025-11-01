-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME,
    CASE
        WHEN SEX_UPON_INTAKE LIKE 'Spayed%' OR SEX_UPON_INTAKE LIKE 'Neutered%' then 'O'
        else 'X'
    end AS '중성화'
    FROM ANIMAL_INS
    order by ANIMAL_ID;