
-- members테이블 속 data 삭제하기 / pk를 활용하여 삭제 하기, 연결된 pk를 먼저 삭제해줘야 됨(순서 중요)

DELETE FROM members_hobby ;
DELETE FROM membewrs_login ;
DELETE FROM hobby_code ;
DELETE FROM members ;
DELETE FROM address_code ;
DELETE FROM gender_code ;