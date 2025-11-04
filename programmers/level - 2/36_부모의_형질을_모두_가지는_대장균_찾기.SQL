-- 코드를 작성해주세요
SELECT C.ID, C.GENOTYPE, P.GENOTYPE AS PARENT_GENOTYPE
    FROM ECOLI_DATA C
        JOIN ECOLI_DATA P ON C.PARENT_ID = P.ID
    WHERE (c.GENOTYPE & p.GENOTYPE) = p.GENOTYPE
    ORDER BY C.ID;
    

-- : (c.GENOTYPE & p.GENOTYPE) = p.GENOTYPE → 자식의 형질 비트 AND 부모의 형질 비트가 부모 형질과 동일하면, 부모의 모든 형질을 자식이 보유.
-- &에서 >0이면 부모의 형질을 가지고 있다는 뜻
-- 거의 다 왔는데 헛다리 짚어서 헤메고 있었음.... WHERE 절이랑 ON 절 어떨 때 사용해야하는지 헷갈렸음