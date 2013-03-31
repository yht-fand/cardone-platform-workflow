/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2013/4/7 22:01:07                            */
/*==============================================================*/


ALTER TABLE "FD_NAVIGATION"
   DROP CONSTRAINT FK_FD_NAVIG_NAVIGATIO_FD_NAVIG;

ALTER TABLE "FD_NAVIGATION"
   DROP CONSTRAINT FK_FD_NAVIG_PARENT_ID_FD_NAVIG;

ALTER TABLE "FD_NAVIGATION"
   DROP CONSTRAINT FK_FD_NAVIG_RESOURCE__FD_RESOU;

ALTER TABLE "FD_DICTIONARY"
   DROP CONSTRAINT FK_FD_DICTI_DICTIONAR_FD_DICTI;

ALTER TABLE "FD_DICTIONARY_TY"
   DROP CONSTRAINT FK_FD_DICTI_PARENT_ID_FD_DICTI;

ALTER TABLE "FD_OBJECT_BL_AT"
   DROP CONSTRAINT FK_FD_OBJEC_ID__FD_OBJEC;

ALTER TABLE "FD_OBJECT_CL_AT"
   DROP CONSTRAINT FK_FD_OBJEC_ID__FD_OBJEC2;

ALTER TABLE "FD_RESOURCE"
   DROP CONSTRAINT FK_FD_RESOU_PARENT_ID_FD_RESO2;

ALTER TABLE "FD_RESOURCE"
   DROP CONSTRAINT FK_FD_RESOU_RESOURCE__FD_RESO2;

ALTER TABLE "FD_RESOURCE_TY"
   DROP CONSTRAINT FK_FD_RESOU_PARENT_ID_FD_RESOU;

ALTER TABLE "FD_RESOURCE_TY_DO_NA"
   DROP CONSTRAINT FK_FD_RESOU_DOMAIN_NA_FD_DOMAI;

ALTER TABLE "FD_RESOURCE_TY_DO_NA"
   DROP CONSTRAINT FK_FD_RESOU_RESOURCE__FD_RESOU;

DROP TABLE "FD_DOMAIN_NA" CASCADE CONSTRAINTS;

DROP TABLE "FD_I18N" CASCADE CONSTRAINTS;

DROP INDEX "FD_NAVIGA2";

DROP INDEX "FD_NAVIGAT";

DROP INDEX "FD_NAVIGATION_PARENT_ID__FK";

DROP TABLE "FD_NAVIGATION" CASCADE CONSTRAINTS;

DROP TABLE "FD_NAVIGATION_TY" CASCADE CONSTRAINTS;

DROP TABLE "FD_OPERATING_LO" CASCADE CONSTRAINTS;

DROP TABLE "FD_RELATIONSHIP" CASCADE CONSTRAINTS;

DROP TABLE "FD_DEPARTMENT" CASCADE CONSTRAINTS;

DROP INDEX "FD_DICTION";

DROP TABLE "FD_DICTIONARY" CASCADE CONSTRAINTS;

DROP INDEX "FD_DICTIONARY_TY_PARENT_ID__FK";

DROP TABLE "FD_DICTIONARY_TY" CASCADE CONSTRAINTS;

DROP TABLE "FD_LOCALE" CASCADE CONSTRAINTS;

DROP TABLE "FD_MESSAGE" CASCADE CONSTRAINTS;

DROP TABLE "FD_OBJECT_AT" CASCADE CONSTRAINTS;

DROP TABLE "FD_OBJECT_BL_AT" CASCADE CONSTRAINTS;

DROP TABLE "FD_OBJECT_CL_AT" CASCADE CONSTRAINTS;

DROP INDEX "FD_RESOURCE_RESOURCE_TY_ID__FK";

DROP INDEX "FD_RESOURCE_PARENT_ID__FK";

DROP TABLE "FD_RESOURCE" CASCADE CONSTRAINTS;

DROP INDEX "FD_RESOURCE_TY_PARENT_ID__FK";

DROP TABLE "FD_RESOURCE_TY" CASCADE CONSTRAINTS;

DROP INDEX "FD_RESOUR2";

DROP INDEX "FD_RESOURC";

DROP TABLE "FD_RESOURCE_TY_DO_NA" CASCADE CONSTRAINTS;

DROP TABLE "FD_USER" CASCADE CONSTRAINTS;

/*==============================================================*/
/* Table: "FD_DOMAIN_NA"                                        */
/*==============================================================*/
CREATE TABLE "FD_DOMAIN_NA" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()',
   "NAME_"              VARCHAR2(256),
   "ORDER_NU_"          INTEGER              DEFAULT 0,
   CONSTRAINT PK_FD_DOMAIN_NA PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_DOMAIN_NA" IS
'域名';

COMMENT ON COLUMN "FD_DOMAIN_NA"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_DOMAIN_NA"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_DOMAIN_NA"."NAME_" IS
'名称';

COMMENT ON COLUMN "FD_DOMAIN_NA"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Table: "FD_I18N"                                             */
/*==============================================================*/
CREATE TABLE "FD_I18N" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   CONSTRAINT PK_FD_I18N PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_I18N" IS
'多国语言';

COMMENT ON COLUMN "FD_I18N"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_I18N"."CODE_" IS
'编号';

/*==============================================================*/
/* Table: "FD_NAVIGATION"                                       */
/*==============================================================*/
CREATE TABLE "FD_NAVIGATION" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "RESOURCE_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "NAVIGATION_TY_ID_"  VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "PARENT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        NOT NULL,
   "ORDER_NU_"          INTEGER              DEFAULT 0 NOT NULL,
   CONSTRAINT PK_FD_NAVIGATION PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_NAVIGATION" IS
'导航';

COMMENT ON COLUMN "FD_NAVIGATION"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_NAVIGATION"."RESOURCE_TY_ID_" IS
'资源类型标识';

COMMENT ON COLUMN "FD_NAVIGATION"."NAVIGATION_TY_ID_" IS
'导航类型标识';

COMMENT ON COLUMN "FD_NAVIGATION"."PARENT_ID_" IS
'父标识';

COMMENT ON COLUMN "FD_NAVIGATION"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_NAVIGATION"."NAME_" IS
'名称';

COMMENT ON COLUMN "FD_NAVIGATION"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Index: "FD_NAVIGATION_PARENT_ID__FK"                         */
/*==============================================================*/
CREATE INDEX "FD_NAVIGATION_PARENT_ID__FK" ON "FD_NAVIGATION" (
   "PARENT_ID_" ASC
);

/*==============================================================*/
/* Index: "FD_NAVIGAT"                                          */
/*==============================================================*/
CREATE INDEX "FD_NAVIGAT" ON "FD_NAVIGATION" (
   "RESOURCE_TY_ID_" ASC
);

/*==============================================================*/
/* Index: "FD_NAVIGA2"                                          */
/*==============================================================*/
CREATE INDEX "FD_NAVIGA2" ON "FD_NAVIGATION" (
   "NAVIGATION_TY_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_NAVIGATION_TY"                                    */
/*==============================================================*/
CREATE TABLE "FD_NAVIGATION_TY" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        NOT NULL,
   "ORDER_NU_"          INTEGER              DEFAULT 0 NOT NULL,
   CONSTRAINT PK_FD_NAVIGATION_TY PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_NAVIGATION_TY" IS
'导航类型';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."NAME_" IS
'名称';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Table: "FD_OPERATING_LO"                                     */
/*==============================================================*/
CREATE TABLE "FD_OPERATING_LO" 
(
   "OBJECT_TY_ID_"      VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   CONSTRAINT PK_FD_OPERATING_LO PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_OPERATING_LO" IS
'操作日志';

COMMENT ON COLUMN "FD_OPERATING_LO"."OBJECT_TY_ID_" IS
'对象类型标识';

COMMENT ON COLUMN "FD_OPERATING_LO"."OBJECT_ID_" IS
'对象标识';

COMMENT ON COLUMN "FD_OPERATING_LO"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_OPERATING_LO"."CODE_" IS
'编号';

/*==============================================================*/
/* Table: "FD_RELATIONSHIP"                                     */
/*==============================================================*/
CREATE TABLE "FD_RELATIONSHIP" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "OBJECT_1_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "OBJECT_1_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "OBJECT_2_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_2_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_3_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_3_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_4_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_4_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_5_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_5_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_6_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_6_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_7_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_7_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_8_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_8_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_9_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "OBJECT_9_ID_"       VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   CONSTRAINT PK_FD_RELATIONSHIP PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_RELATIONSHIP" IS
'关联';

COMMENT ON COLUMN "FD_RELATIONSHIP"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_1_TY_ID_" IS
'对象1类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_1_ID_" IS
'对象1标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_2_TY_ID_" IS
'对象2类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_2_ID_" IS
'对象2标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_3_TY_ID_" IS
'对象3类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_3_ID_" IS
'对象3标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_4_TY_ID_" IS
'对象4类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_4_ID_" IS
'对象4标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_5_TY_ID_" IS
'对象5类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_5_ID_" IS
'对象5标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_6_TY_ID_" IS
'对象6类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_6_ID_" IS
'对象6标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_7_TY_ID_" IS
'对象7类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_7_ID_" IS
'对象7标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_8_TY_ID_" IS
'对象8类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_8_ID_" IS
'对象8标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_9_TY_ID_" IS
'对象9类型标识';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_9_ID_" IS
'对象9标识';

/*==============================================================*/
/* Table: "FD_DEPARTMENT"                                       */
/*==============================================================*/
CREATE TABLE "FD_DEPARTMENT" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()',
   "NAME_"              VARCHAR2(256),
   CONSTRAINT PK_FD_DEPARTMENT PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_DEPARTMENT" IS
'部门';

COMMENT ON COLUMN "FD_DEPARTMENT"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_DEPARTMENT"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_DEPARTMENT"."NAME_" IS
'名称';

/*==============================================================*/
/* Table: "FD_DICTIONARY"                                       */
/*==============================================================*/
CREATE TABLE "FD_DICTIONARY" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "DICTIONARY_TY_ID_"  VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        NOT NULL,
   "ORDER_NU_"          INTEGER              DEFAULT 0,
   CONSTRAINT PK_FD_DICTIONARY PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_DICTIONARY" IS
'字典';

COMMENT ON COLUMN "FD_DICTIONARY"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_DICTIONARY"."DICTIONARY_TY_ID_" IS
'字典类型标识';

COMMENT ON COLUMN "FD_DICTIONARY"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_DICTIONARY"."NAME_" IS
'名称';

COMMENT ON COLUMN "FD_DICTIONARY"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Index: "FD_DICTION"                                          */
/*==============================================================*/
CREATE INDEX "FD_DICTION" ON "FD_DICTIONARY" (
   "DICTIONARY_TY_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_DICTIONARY_TY"                                    */
/*==============================================================*/
CREATE TABLE "FD_DICTIONARY_TY" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "PARENT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        NOT NULL,
   "ORDER_NU_"          INTEGER              DEFAULT 0,
   CONSTRAINT PK_FD_DICTIONARY_TY PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_DICTIONARY_TY" IS
'字典类型';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."PARENT_ID_" IS
'父标识';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."NAME_" IS
'名称';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Index: "FD_DICTIONARY_TY_PARENT_ID__FK"                      */
/*==============================================================*/
CREATE INDEX "FD_DICTIONARY_TY_PARENT_ID__FK" ON "FD_DICTIONARY_TY" (
   "PARENT_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_LOCALE"                                           */
/*==============================================================*/
CREATE TABLE "FD_LOCALE" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()',
   "NAME_"              VARCHAR2(256),
   "ORDER_NU_"          INTEGER              DEFAULT 0,
   CONSTRAINT PK_FD_LOCALE PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_LOCALE" IS
'地点';

COMMENT ON COLUMN "FD_LOCALE"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_LOCALE"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_LOCALE"."NAME_" IS
'名称';

COMMENT ON COLUMN "FD_LOCALE"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Table: "FD_MESSAGE"                                          */
/*==============================================================*/
CREATE TABLE "FD_MESSAGE" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()',
   "LOCALE_CO_"         VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "MESSAGE_"           VARCHAR2(4000),
   "ORDER_NU_"          INTEGER              DEFAULT 0,
   CONSTRAINT PK_FD_MESSAGE PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_MESSAGE" IS
'消息';

COMMENT ON COLUMN "FD_MESSAGE"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_MESSAGE"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_MESSAGE"."LOCALE_CO_" IS
'地点编号';

COMMENT ON COLUMN "FD_MESSAGE"."MESSAGE_" IS
'消息';

COMMENT ON COLUMN "FD_MESSAGE"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Table: "FD_OBJECT_AT"                                        */
/*==============================================================*/
CREATE TABLE "FD_OBJECT_AT" 
(
   "OBJECT_TY_ID_"      VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "OBJECT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "TYPE_ID_"           VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "LONG_VA_"           INTEGER,
   "DOUBLE_VA_"         FLOAT,
   "DATE_VA_"           DATE,
   "STRING_VA_"         VARCHAR2(1024),
   "TEXT_VA_"           VARCHAR2(4000),
   CONSTRAINT PK_FD_OBJECT_AT PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_OBJECT_AT" IS
'对象属性';

COMMENT ON COLUMN "FD_OBJECT_AT"."OBJECT_TY_ID_" IS
'对象类型标识';

COMMENT ON COLUMN "FD_OBJECT_AT"."OBJECT_ID_" IS
'对象标识';

COMMENT ON COLUMN "FD_OBJECT_AT"."TYPE_ID_" IS
'类型标识';

COMMENT ON COLUMN "FD_OBJECT_AT"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_OBJECT_AT"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_OBJECT_AT"."LONG_VA_" IS
'long值';

COMMENT ON COLUMN "FD_OBJECT_AT"."DOUBLE_VA_" IS
'double值';

COMMENT ON COLUMN "FD_OBJECT_AT"."DATE_VA_" IS
'date值';

COMMENT ON COLUMN "FD_OBJECT_AT"."STRING_VA_" IS
'string值';

COMMENT ON COLUMN "FD_OBJECT_AT"."TEXT_VA_" IS
'text值';

/*==============================================================*/
/* Table: "FD_OBJECT_BL_AT"                                     */
/*==============================================================*/
CREATE TABLE "FD_OBJECT_BL_AT" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "BYTE_VA_"           BLOB,
   CONSTRAINT PK_FD_OBJECT_BL_AT PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_OBJECT_BL_AT" IS
'对象BLob属性';

COMMENT ON COLUMN "FD_OBJECT_BL_AT"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_OBJECT_BL_AT"."BYTE_VA_" IS
'blob值';

/*==============================================================*/
/* Table: "FD_OBJECT_CL_AT"                                     */
/*==============================================================*/
CREATE TABLE "FD_OBJECT_CL_AT" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CLOB_VA_"           CLOB,
   CONSTRAINT PK_FD_OBJECT_CL_AT PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_OBJECT_CL_AT" IS
'对象CLob属性';

COMMENT ON COLUMN "FD_OBJECT_CL_AT"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_OBJECT_CL_AT"."CLOB_VA_" IS
'clob值';

/*==============================================================*/
/* Table: "FD_RESOURCE"                                         */
/*==============================================================*/
CREATE TABLE "FD_RESOURCE" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "RESOURCE_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "PARENT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        NOT NULL,
   "ORDER_NU_"          INTEGER              DEFAULT 0 NOT NULL,
   CONSTRAINT PK_FD_RESOURCE PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_RESOURCE" IS
'资源';

COMMENT ON COLUMN "FD_RESOURCE"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_RESOURCE"."RESOURCE_TY_ID_" IS
'资源类型标识';

COMMENT ON COLUMN "FD_RESOURCE"."PARENT_ID_" IS
'父标识';

COMMENT ON COLUMN "FD_RESOURCE"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_RESOURCE"."NAME_" IS
'名称';

COMMENT ON COLUMN "FD_RESOURCE"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Index: "FD_RESOURCE_PARENT_ID__FK"                           */
/*==============================================================*/
CREATE INDEX "FD_RESOURCE_PARENT_ID__FK" ON "FD_RESOURCE" (
   "PARENT_ID_" ASC
);

/*==============================================================*/
/* Index: "FD_RESOURCE_RESOURCE_TY_ID__FK"                      */
/*==============================================================*/
CREATE INDEX "FD_RESOURCE_RESOURCE_TY_ID__FK" ON "FD_RESOURCE" (
   "RESOURCE_TY_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_RESOURCE_TY"                                      */
/*==============================================================*/
CREATE TABLE "FD_RESOURCE_TY" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "PARENT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        NOT NULL,
   "ORDER_NU_"          INTEGER              DEFAULT 0 NOT NULL,
   CONSTRAINT PK_FD_RESOURCE_TY PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_RESOURCE_TY" IS
'资源类型';

COMMENT ON COLUMN "FD_RESOURCE_TY"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_RESOURCE_TY"."PARENT_ID_" IS
'父标识';

COMMENT ON COLUMN "FD_RESOURCE_TY"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_RESOURCE_TY"."NAME_" IS
'名称';

COMMENT ON COLUMN "FD_RESOURCE_TY"."ORDER_NU_" IS
'排序号';

/*==============================================================*/
/* Index: "FD_RESOURCE_TY_PARENT_ID__FK"                        */
/*==============================================================*/
CREATE INDEX "FD_RESOURCE_TY_PARENT_ID__FK" ON "FD_RESOURCE_TY" (
   "PARENT_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_RESOURCE_TY_DO_NA"                                */
/*==============================================================*/
CREATE TABLE "FD_RESOURCE_TY_DO_NA" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "DOMAIN_NA_ID_"      VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "RESOURCE_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   CONSTRAINT PK_FD_RESOURCE_TY_DO_NA PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_RESOURCE_TY_DO_NA" IS
'资源类型与域名';

COMMENT ON COLUMN "FD_RESOURCE_TY_DO_NA"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_RESOURCE_TY_DO_NA"."DOMAIN_NA_ID_" IS
'域名标识';

COMMENT ON COLUMN "FD_RESOURCE_TY_DO_NA"."RESOURCE_TY_ID_" IS
'资源类型标识';

/*==============================================================*/
/* Index: "FD_RESOURC"                                          */
/*==============================================================*/
CREATE INDEX "FD_RESOURC" ON "FD_RESOURCE_TY_DO_NA" (
   "DOMAIN_NA_ID_" ASC
);

/*==============================================================*/
/* Index: "FD_RESOUR2"                                          */
/*==============================================================*/
CREATE INDEX "FD_RESOUR2" ON "FD_RESOURCE_TY_DO_NA" (
   "RESOURCE_TY_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_USER"                                             */
/*==============================================================*/
CREATE TABLE "FD_USER" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()',
   "NAME_"              VARCHAR2(256),
   CONSTRAINT PK_FD_USER PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_USER" IS
'用户';

COMMENT ON COLUMN "FD_USER"."ID_" IS
'标识';

COMMENT ON COLUMN "FD_USER"."CODE_" IS
'编号';

COMMENT ON COLUMN "FD_USER"."NAME_" IS
'名称';

ALTER TABLE "FD_NAVIGATION"
   ADD CONSTRAINT FK_FD_NAVIG_NAVIGATIO_FD_NAVIG FOREIGN KEY ("NAVIGATION_TY_ID_")
      REFERENCES "FD_NAVIGATION_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_NAVIGATION"
   ADD CONSTRAINT FK_FD_NAVIG_PARENT_ID_FD_NAVIG FOREIGN KEY ("PARENT_ID_")
      REFERENCES "FD_NAVIGATION" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_NAVIGATION"
   ADD CONSTRAINT FK_FD_NAVIG_RESOURCE__FD_RESOU FOREIGN KEY ("RESOURCE_TY_ID_")
      REFERENCES "FD_RESOURCE_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_DICTIONARY"
   ADD CONSTRAINT FK_FD_DICTI_DICTIONAR_FD_DICTI FOREIGN KEY ("DICTIONARY_TY_ID_")
      REFERENCES "FD_DICTIONARY_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_DICTIONARY_TY"
   ADD CONSTRAINT FK_FD_DICTI_PARENT_ID_FD_DICTI FOREIGN KEY ("PARENT_ID_")
      REFERENCES "FD_DICTIONARY_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_OBJECT_BL_AT"
   ADD CONSTRAINT FK_FD_OBJEC_ID__FD_OBJEC FOREIGN KEY ("ID_")
      REFERENCES "FD_OBJECT_AT" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_OBJECT_CL_AT"
   ADD CONSTRAINT FK_FD_OBJEC_ID__FD_OBJEC2 FOREIGN KEY ("ID_")
      REFERENCES "FD_OBJECT_AT" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_RESOURCE"
   ADD CONSTRAINT FK_FD_RESOU_PARENT_ID_FD_RESO2 FOREIGN KEY ("PARENT_ID_")
      REFERENCES "FD_RESOURCE" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_RESOURCE"
   ADD CONSTRAINT FK_FD_RESOU_RESOURCE__FD_RESO2 FOREIGN KEY ("RESOURCE_TY_ID_")
      REFERENCES "FD_RESOURCE_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_RESOURCE_TY"
   ADD CONSTRAINT FK_FD_RESOU_PARENT_ID_FD_RESOU FOREIGN KEY ("PARENT_ID_")
      REFERENCES "FD_RESOURCE_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_RESOURCE_TY_DO_NA"
   ADD CONSTRAINT FK_FD_RESOU_DOMAIN_NA_FD_DOMAI FOREIGN KEY ("DOMAIN_NA_ID_")
      REFERENCES "FD_DOMAIN_NA" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_RESOURCE_TY_DO_NA"
   ADD CONSTRAINT FK_FD_RESOU_RESOURCE__FD_RESOU FOREIGN KEY ("RESOURCE_TY_ID_")
      REFERENCES "FD_RESOURCE_TY" ("ID_")
      ON DELETE CASCADE;

