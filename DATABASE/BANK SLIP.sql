--------------------------------------------------------
--  File created - Thursday-September-08-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BANK_SLIP_DETAILS
--------------------------------------------------------

  CREATE TABLE "BANK_SLIP_DETAILS" ("SLIP_NO" VARCHAR2(10), "SLIP_DATE" DATE, "ACCOUNT_NO" VARCHAR2(25), "CHEQUE_NO" VARCHAR2(25), "PAYER_ACCOUNT_ID" VARCHAR2(30), "AMOUNT" NUMBER(10,0))
REM INSERTING into BANK_SLIP_DETAILS
SET DEFINE OFF;
Insert into BANK_SLIP_DETAILS (SLIP_NO,SLIP_DATE,ACCOUNT_NO,CHEQUE_NO,PAYER_ACCOUNT_ID,AMOUNT) values ('1000',to_date('07-SEP-22','DD-MON-RR'),'AC79220000','1022','AC79220002',5000);
Insert into BANK_SLIP_DETAILS (SLIP_NO,SLIP_DATE,ACCOUNT_NO,CHEQUE_NO,PAYER_ACCOUNT_ID,AMOUNT) values ('1001',to_date('07-SEP-22','DD-MON-RR'),'AC79220001','1023','AC79220003',15000);
Insert into BANK_SLIP_DETAILS (SLIP_NO,SLIP_DATE,ACCOUNT_NO,CHEQUE_NO,PAYER_ACCOUNT_ID,AMOUNT) values ('1002',to_date('07-SEP-22','DD-MON-RR'),'AC79220002','1021','AC79220001',51000);
Insert into BANK_SLIP_DETAILS (SLIP_NO,SLIP_DATE,ACCOUNT_NO,CHEQUE_NO,PAYER_ACCOUNT_ID,AMOUNT) values ('1003',to_date('07-SEP-22','DD-MON-RR'),'AC79220003','1024','AC79220004',5900);
Insert into BANK_SLIP_DETAILS (SLIP_NO,SLIP_DATE,ACCOUNT_NO,CHEQUE_NO,PAYER_ACCOUNT_ID,AMOUNT) values ('1004',to_date('07-SEP-22','DD-MON-RR'),'AC79220004','1020','AC79220000',7000);
--------------------------------------------------------
--  DDL for Index SLIP_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SLIP_NO_PK" ON "BANK_SLIP_DETAILS" ("SLIP_NO")
--------------------------------------------------------
--  Constraints for Table BANK_SLIP_DETAILS
--------------------------------------------------------

  ALTER TABLE "BANK_SLIP_DETAILS" MODIFY ("SLIP_NO" NOT NULL ENABLE)
  ALTER TABLE "BANK_SLIP_DETAILS" MODIFY ("AMOUNT" NOT NULL ENABLE)
  ALTER TABLE "BANK_SLIP_DETAILS" ADD CONSTRAINT "SLIP_NO_PK" PRIMARY KEY ("SLIP_NO") USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table BANK_SLIP_DETAILS
--------------------------------------------------------

  ALTER TABLE "BANK_SLIP_DETAILS" ADD CONSTRAINT "SLIP_ACCOUNT_NO_FK" FOREIGN KEY ("ACCOUNT_NO") REFERENCES "ACCOUNT_DETAILS" ("ACCOUNT_NO") ENABLE
  ALTER TABLE "BANK_SLIP_DETAILS" ADD CONSTRAINT "SLIP_CHEQUE_NO_FK" FOREIGN KEY ("CHEQUE_NO") REFERENCES "CHEQUE_DETAILS" ("CHEQUE_NO") ENABLE
