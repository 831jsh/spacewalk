-- created by Oraschemadoc Thu Jan 20 13:49:58 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE INDEX "SPACEWALK"."RHN_BL_OBS_NEPI_IDX" ON "SPACEWALK"."RHNBLACKLISTOBSOLETES" ("NAME_ID", "EVR_ID", "PACKAGE_ARCH_ID", "IGNORE_NAME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 
/
