CREATE TABLE LEGO_SET ( id BIGINT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(30));
CREATE TABLE MANUAL ( id BIGINT AUTO_INCREMENT PRIMARY KEY, LEGO_SET BIGINT, ALTERNATIVE BIGINT, CONTENT VARCHAR(2000));

ALTER TABLE MANUAL ADD FOREIGN KEY (LEGO_SET)
REFERENCES LEGO_SET(id);

CREATE TABLE ONE_TO_ONE_PARENT ( id BIGINT AUTO_INCREMENT PRIMARY KEY, content VARCHAR(30));
CREATE TABLE Child_No_Id (ONE_TO_ONE_PARENT INTEGER PRIMARY KEY, content VARCHAR(30));

CREATE TABLE LIST_PARENT ( id BIGINT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(100));
CREATE TABLE element_no_id ( content VARCHAR(100), LIST_PARENT_key BIGINT, LIST_PARENT BIGINT);
