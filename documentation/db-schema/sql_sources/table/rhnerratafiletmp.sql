-- created by Oraschemadoc Thu Jan 20 13:46:17 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNERRATAFILETMP" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ERRATA_ID" NUMBER NOT NULL ENABLE, 
	"TYPE" NUMBER NOT NULL ENABLE, 
	"CHECKSUM_ID" NUMBER NOT NULL ENABLE, 
	"FILENAME" VARCHAR2(128) NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ERRATAFILETMP_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_ERRATAFILETMP_EID_FILE_UQ" UNIQUE ("ERRATA_ID", "FILENAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_ERRATAFILETMP_ERRATA_FK" FOREIGN KEY ("ERRATA_ID")
	  REFERENCES "SPACEWALK"."RHNERRATATMP" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_ERRATAFILETMP_TYPE_FK" FOREIGN KEY ("TYPE")
	  REFERENCES "SPACEWALK"."RHNERRATAFILETYPE" ("ID") ENABLE, 
	 CONSTRAINT "RHN_ERRATAFILETMP_CHSUM_FK" FOREIGN KEY ("CHECKSUM_ID")
	  REFERENCES "SPACEWALK"."RHNCHECKSUM" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
