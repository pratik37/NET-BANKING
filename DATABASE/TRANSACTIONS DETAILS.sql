--------------------------------------------------------
--  File created - Thursday-September-08-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TRANSACTIONS_DETAILS
--------------------------------------------------------

  CREATE TABLE "TRANSACTIONS_DETAILS" ("TRANSACTION_ID" VARCHAR2(30), "SENDER_ACCOUNT_NO" VARCHAR2(30), "RECEIVER_ACCOUNT_NO" VARCHAR2(30), "TRANSACTION_TYPE" VARCHAR2(30), "TRANSACTION_AMOUNT" NUMBER(20,0), "TRANSACTION_DATE" DATE, "TRANSACTION_TIME" TIMESTAMP (6))
REM INSERTING into TRANSACTIONS_DETAILS
SET DEFINE OFF;
Insert into TRANSACTIONS_DETAILS (TRANSACTION_ID,SENDER_ACCOUNT_NO,RECEIVER_ACCOUNT_NO,TRANSACTION_TYPE,TRANSACTION_AMOUNT,TRANSACTION_DATE,TRANSACTION_TIME) values ('TR709220005','AC79220000','AC79220004','NEFT',50000,to_date('08-SEP-22','DD-MON-RR'),to_timestamp('08-SEP-22 09.36.36.388000000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into TRANSACTIONS_DETAILS (TRANSACTION_ID,SENDER_ACCOUNT_NO,RECEIVER_ACCOUNT_NO,TRANSACTION_TYPE,TRANSACTION_AMOUNT,TRANSACTION_DATE,TRANSACTION_TIME) values ('TR709220006','AC79220001','AC79220000','UPI',8500,to_date('08-SEP-22','DD-MON-RR'),to_timestamp('08-SEP-22 09.36.36.393000000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into TRANSACTIONS_DETAILS (TRANSACTION_ID,SENDER_ACCOUNT_NO,RECEIVER_ACCOUNT_NO,TRANSACTION_TYPE,TRANSACTION_AMOUNT,TRANSACTION_DATE,TRANSACTION_TIME) values ('TR709220007','AC79220002','AC79220003','BANK TRANSFER',78000,to_date('08-SEP-22','DD-MON-RR'),to_timestamp('08-SEP-22 09.36.36.398000000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into TRANSACTIONS_DETAILS (TRANSACTION_ID,SENDER_ACCOUNT_NO,RECEIVER_ACCOUNT_NO,TRANSACTION_TYPE,TRANSACTION_AMOUNT,TRANSACTION_DATE,TRANSACTION_TIME) values ('TR709220008','AC79220003','AC79220002','NEFT',45000,to_date('08-SEP-22','DD-MON-RR'),to_timestamp('08-SEP-22 09.36.36.404000000 AM','DD-MON-RR HH.MI.SSXFF AM'));
Insert into TRANSACTIONS_DETAILS (TRANSACTION_ID,SENDER_ACCOUNT_NO,RECEIVER_ACCOUNT_NO,TRANSACTION_TYPE,TRANSACTION_AMOUNT,TRANSACTION_DATE,TRANSACTION_TIME) values ('TR709220009','AC79220004','AC79220001','NEFT',50000,to_date('08-SEP-22','DD-MON-RR'),to_timestamp('08-SEP-22 09.36.36.407000000 AM','DD-MON-RR HH.MI.SSXFF AM'));
--------------------------------------------------------
--  Constraints for Table TRANSACTIONS_DETAILS
--------------------------------------------------------

  ALTER TABLE "TRANSACTIONS_DETAILS" MODIFY ("TRANSACTION_ID" NOT NULL ENABLE)
  ALTER TABLE "TRANSACTIONS_DETAILS" MODIFY ("TRANSACTION_AMOUNT" NOT NULL ENABLE)
--------------------------------------------------------
--  Ref Constraints for Table TRANSACTIONS_DETAILS
--------------------------------------------------------

  ALTER TABLE "TRANSACTIONS_DETAILS" ADD CONSTRAINT "SENDER_ACCOUNT_NO_FK" FOREIGN KEY ("SENDER_ACCOUNT_NO") REFERENCES "ACCOUNT_DETAILS" ("ACCOUNT_NO") ENABLE
  ALTER TABLE "TRANSACTIONS_DETAILS" ADD CONSTRAINT "RECEIVER_ACCOUNT_NO_FK" FOREIGN KEY ("RECEIVER_ACCOUNT_NO") REFERENCES "ACCOUNT_DETAILS" ("ACCOUNT_NO") ENABLE