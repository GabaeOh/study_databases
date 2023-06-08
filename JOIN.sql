
-- SELECT ?
-- FROM ?1
-- 	INNER JOIN ?2 --테이블 2개를 사용해서 조인을 건다.
--     ON  condition -- 무슨 조건을 걸지 

-- JOIN 
SELECT COUNT(*), T_MEMS.AGE
FROM members AS T_MEMS -- 대부분 PK가 있는 테이블을 먼저 기술
	INNER JOIN members_login AS T_MEMS_LOGIN
    ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID 
GROUP BY T_MEMS.AGE;

-- 3개의 조인 // 주데이터인members를 먼저 조인하고, 부데이터인 members_login을 조인
SELECT T_MEMS.*, T_MEMS_LOGIN.EMAIL, T_GENDERS.GENDER
FROM (members AS T_MEMS
	INNER JOIN members_login AS T_MEMS_LOGIN
    ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID 
	)
	INNER JOIN gender_code AS T_GENDERS
    ON T_MEMS.GENDER_CODE_ID = T_GENDERS.GENDER_CODE_ID;
    
 -- 로그인이 되어있다는 전제 
 SELECT T_MEMS.*, T_MEMS_LOGIN.EMAIL, T_GENDERS.GENDER
FROM (members AS T_MEMS
	INNER JOIN members_login AS T_MEMS_LOGIN
    ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID 
    AND T_MEMS.MEMBERS_ID = 'M-02' -- ON의 조건문 추가 
	)
	INNER JOIN gender_code AS T_GENDERS
    ON T_MEMS.GENDER_CODE_ID = T_GENDERS.GENDER_CODE_ID
-- WHERE T_MEMS.MEMBERS_ID = 'M-02' -- FROM에 대한 조건문 추가 
;