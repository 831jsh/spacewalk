-- created by Oraschemadoc Thu Jan 20 13:46:43 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNORGERRATACACHEQUEUE" 
   (	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"SERVER_COUNT" NUMBER NOT NULL ENABLE, 
	"PROCESSED" NUMBER DEFAULT (0) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_OECQ_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEWALK"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
