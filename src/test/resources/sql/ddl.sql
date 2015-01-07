DROP ALL OBJECTS;

CREATE TABLE COMPANY (
  ID   INT(9)      NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(50) NOT NULL,
  CONSTRAINT PK_COMPANY PRIMARY KEY (ID)
);
ALTER TABLE COMPANY ADD CONSTRAINT UQ_COMPANY_NAME UNIQUE (NAME);


CREATE TABLE EMPLOYEE (
  ID      INT(9)      NOT NULL AUTO_INCREMENT,
  NAME    VARCHAR(50) NOT NULL,
  AGE     INT(9)      NOT NULL,
  COMPANY INT(9)      NOT NULL,
  CONSTRAINT PK_EMPLOYEE PRIMARY KEY (ID)
);
ALTER TABLE EMPLOYEE ADD CONSTRAINT UQ_EMPLOYEE_NAME UNIQUE (NAME);
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMPLOYEE_COMPANY FOREIGN KEY (COMPANY) REFERENCES COMPANY (ID);