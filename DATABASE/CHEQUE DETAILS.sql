--------------------------------------------------------
--  File created - Thursday-September-08-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CHEQUE_DETAILS
--------------------------------------------------------

  CREATE TABLE "CHEQUE_DETAILS" ("CHEQUE_NO" VARCHAR2(30), "ACCOUNT_NO" VARCHAR2(30), "CHEQUE_DATE" DATE, "CHEQUE_AMOUNT" NUMBER(20,0), "RECIEVER_ACCOUNT_NO" VARCHAR2(30), "RECEIVER_FIRST_NAME" VARCHAR2(30), "RECEIVER_LAST_NAME" VARCHAR2(30))
REM INSERTING into CHEQUE_DETAILS
SET DEFINE OFF;
Insert into CHEQUE_DETAILS (CHEQUE_NO,ACCOUNT_NO,CHEQUE_DATE,CHEQUE_AMOUNT,RECIEVER_ACCOUNT_NO,RECEIVER_FIRST_NAME,RECEIVER_LAST_NAME) values ('1020','AC79220000',to_date('07-SEP-22','DD-MON-RR'),2500,'123123123','SHAKTI','PAWAR');
Insert into CHEQUE_DETAILS (CHEQUE_NO,ACCOUNT_NO,CHEQUE_DATE,CHEQUE_AMOUNT,RECIEVER_ACCOUNT_NO,RECEIVER_FIRST_NAME,RECEIVER_LAST_NAME) values ('1021','AC79220001',to_date('07-SEP-22','DD-MON-RR'),1500,'5544414','CHETAN','KHORI');
Insert into CHEQUE_DETAILS (CHEQUE_NO,ACCOUNT_NO,CHEQUE_DATE,CHEQUE_AMOUNT,RECIEVER_ACCOUNT_NO,RECEIVER_FIRST_NAME,RECEIVER_LAST_NAME) values ('1022','AC79220002',to_date('07-SEP-22','DD-MON-RR'),1400,'1259844','PRASAD','SUTAR');
Insert into CHEQUE_DETAILS (CHEQUE_NO,ACCOUNT_NO,CHEQUE_DATE,CHEQUE_AMOUNT,RECIEVER_ACCOUNT_NO,RECEIVER_FIRST_NAME,RECEIVER_LAST_NAME) values ('1023','AC79220003',to_date('07-SEP-22','DD-MON-RR'),1300,'2875545','PRIYA','SHARMA');
Insert into CHEQUE_DETAILS (CHEQUE_NO,ACCOUNT_NO,CHEQUE_DATE,CHEQUE_AMOUNT,RECIEVER_ACCOUNT_NO,RECEIVER_FIRST_NAME,RECEIVER_LAST_NAME) values ('1024','AC79220004',to_date('07-SEP-22','DD-MON-RR'),1200,'997886','PREM','LOHAR');
--------------------------------------------------------
--  DDL for Index CHEQUE_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHEQUE_NO_PK" ON "CHEQUE_DETAILS" ("CHEQUE_NO")
--------------------------------------------------------
--  Constraints for Table CHEQUE_DETAILS
--------------------------------------------------------

  ALTER TABLE "CHEQUE_DETAILS" MODIFY ("CHEQUE_NO" NOT NULL ENABLE)
  ALTER TABLE "CHEQUE_DETAILS" MODIFY ("CHEQUE_DATE" NOT NULL ENABLE)
  ALTER TABLE "CHEQUE_DETAILS" MODIFY ("CHEQUE_AMOUNT" NOT NULL ENABLE)
  ALTER TABLE "CHEQUE_DETAILS" MODIFY ("RECIEVER_ACCOUNT_NO" NOT NULL ENABLE)
  ALTER TABLE "CHEQUE_DETAILS" MODIFY ("RECEIVER_FIRST_NAME" NOT NULL ENABLE)
  ALTER TABLE "CHEQUE_DETAILS" MODIFY ("RECEIVER_LAST_NAME" NOT NULL ENABLE)
  ALTER TABLE "CHEQUE_DETAILS" ADD CONSTRAINT "CHEQUE_NO_PK" PRIMARY KEY ("CHEQUE_NO") USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table CHEQUE_DETAILS
--------------------------------------------------------

  ALTER TABLE "CHEQUE_DETAILS" ADD CONSTRAINT "CHEQUE_ACCOUNT_NO_FK" FOREIGN KEY ("ACCOUNT_NO") REFERENCES "ACCOUNT_DETAILS" ("ACCOUNT_NO") ENABLE
