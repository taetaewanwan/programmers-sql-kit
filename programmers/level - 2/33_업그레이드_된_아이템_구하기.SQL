-- 코드를 작성해주세요
SELECT C.ITEM_ID, C.ITEM_NAME, c.RARITY
    FROM ITEM_TREE T
        JOIN ITEM_INFO P ON P.ITEM_ID = T.PARENT_ITEM_ID
        JOIN ITEM_INFO C ON C.ITEM_ID = T.ITEM_ID
    WHERE P.RARITY = 'RARE'
    ORDER BY C.ITEM_ID DESC;
    
    -- 자기 참조 조인: 정보 찾으러 오갈 필요가 있는 문제 풀 때 생각해야할 듯??
    -- PARENT_ITEM_ID와 ITEM_ID가 일치 && 업그레이드 할 대상 아이템 정보 찾기
    -- 혼자 힘으로는 못 풀었음