-- created by Oraschemadoc Thu Jan 20 13:52:42 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEWALK"."RHN_PDELEMENT_PDID_TPID_UQ" ON "SPACEWALK"."RHNPACKAGEDELTAELEMENT" ("PACKAGE_DELTA_ID", "TRANSACTION_PACKAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 
/
