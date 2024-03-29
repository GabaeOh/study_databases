-- 브랜드이름, 회사명  // 통계에 대한 쿼리 
SELECT T_FAC.COMPANY, T_CAR_INFOR.CAR_NAME, COUNT(T_OPTS.OPTION_ID) AS CNT
FROM (factorys AS T_FAC
	JOIN car_infors AS T_CAR_INFOR
	ON T_FAC.COMPANY_ID = T_CAR_INFOR.COMPANY_ID)
	JOIN options AS T_OPTS
	ON T_CAR_INFOR.CAR_INFOR_ID = T_OPTS.CAR_INFOR_ID
GROUP BY T_FAC.COMPANY_ID, T_CAR_INFOR.CAR_INFOR_ID
;

-- 옵션 추가 
INSERT INTO `OPTIONS`
(OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
VALUE 
('O006', 'CI001', 'OI005');

INSERT INTO `OPTIONS`
(OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
value
('O008', 'CI001', 'OI003')
;

INSERT INTO `OPTIONS`
(OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
value
('O007', 'CI002', 'OI004')
;

DELETE FROM `options`
WHERE CAR_INFOR_ID = 'CI001' AND OPTION_INFOR_ID = 'OI003';

-- 회사명과 차 이름 
SELECT T_FAC.COMPANY, T_CAR_INFOR.CAR_NAME
	, T_CAR_INFOR.CAR_INFOR_ID
FROM (factorys AS T_FAC
	JOIN car_infors AS T_CAR_INFOR
	ON T_FAC.COMPANY_ID = T_CAR_INFOR.COMPANY_ID)
;

SELECT OPTION_INFOR_ID, OPTION_NAME
FROM option_infors
;

