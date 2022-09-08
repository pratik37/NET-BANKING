--------------------------------------------------------
--  File created - Thursday-September-08-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LOGIN_DETAILS
--------------------------------------------------------

  CREATE TABLE "LOGIN_DETAILS" ("LOGIN_ID" VARCHAR2(20), "USERNAME" VARCHAR2(20), "PASSWORD" VARCHAR2(20), "DESIGNATION" VARCHAR2(10))
REM INSERTING into LOGIN_DETAILS
SET DEFINE OFF;
Insert into LOGIN_DETAILS (LOGIN_ID,USERNAME,PASSWORD,DESIGNATION) values ('INB1000','PRATIK','Pratik@123','Admin');
Insert into LOGIN_DETAILS (LOGIN_ID,USERNAME,PASSWORD,DESIGNATION) values ('INB1001','VINNET','Vineet@123','Admin');
Insert into LOGIN_DETAILS (LOGIN_ID,USERNAME,PASSWORD,DESIGNATION) values ('INB1002','PRADIP','Pradip@123','Admin');
Insert into LOGIN_DETAILS (LOGIN_ID,USERNAME,PASSWORD,DESIGNATION) values ('INB1003','SURAJ','Suraj@123','Admin');
--------------------------------------------------------
--  DDL for Index LOGIN_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOGIN_ID_PK" ON "LOGIN_DETAILS" ("LOGIN_ID")
--------------------------------------------------------
--  Constraints for Table LOGIN_DETAILS
--------------------------------------------------------

  ALTER TABLE "LOGIN_DETAILS" MODIFY ("LOGIN_ID" NOT NULL ENABLE)
  ALTER TABLE "LOGIN_DETAILS" MODIFY ("USERNAME" NOT NULL ENABLE)
  ALTER TABLE "LOGIN_DETAILS" MODIFY ("PASSWORD" NOT NULL ENABLE)
  ALTER TABLE "LOGIN_DETAILS" MODIFY ("DESIGNATION" NOT NULL ENABLE)
  ALTER TABLE "LOGIN_DETAILS" ADD CONSTRAINT "LOGIN_ID_PK" PRIMARY KEY ("LOGIN_ID") USING INDEX  ENABLE
