/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2013/5/4 ������ ���� 9:53:48                      */
/*==============================================================*/


ALTER TABLE "FD_NAVIGATION"
   DROP CONSTRAINT FK_FD_NAVIG_NAVIGATIO_FD_NAVIG;

ALTER TABLE "FD_NAVIGATION"
   DROP CONSTRAINT FK_FD_NAVIG_PARENT_ID_FD_NAVIG;

ALTER TABLE "FD_NAVIGATION"
   DROP CONSTRAINT FK_FD_NAVIG_SITE_ID__FD_SITE;

ALTER TABLE "FD_OPERATING_LO"
   DROP CONSTRAINT FK_FD_OPERA_USER_ID__FD_USER;

ALTER TABLE "FD_DEPARTMENT"
   DROP CONSTRAINT FK_FD_DEPAR_PARENT_ID_FD_DEPAR;

ALTER TABLE "FD_DICTIONARY"
   DROP CONSTRAINT FK_FD_DICTI_DICTIONAR_FD_DICTI;

ALTER TABLE "FD_DICTIONARY_TY"
   DROP CONSTRAINT FK_FD_DICTI_PARENT_ID_FD_DICTI;

ALTER TABLE "FD_MESSAGE"
   DROP CONSTRAINT FK_FD_MESSA_LOCALE_ID_FD_LOCAL;

ALTER TABLE "FD_OBJECT_BL_AT"
   DROP CONSTRAINT FK_FD_OBJEC_ID__FD_OBJEC;

ALTER TABLE "FD_OBJECT_CL_AT"
   DROP CONSTRAINT FK_FD_OBJEC_ID__FD_OBJEC2;

ALTER TABLE "FD_RESOURCE"
   DROP CONSTRAINT FK_FD_RESOU_PARENT_ID_FD_RESO2;

ALTER TABLE "FD_RESOURCE"
   DROP CONSTRAINT FK_FD_RESOU_RESOURCE__FD_RESOU;

ALTER TABLE "FD_RESOURCE"
   DROP CONSTRAINT FK_FD_RESOU_SITE_ID__FD_SITE;

ALTER TABLE "FD_RESOURCE_TY"
   DROP CONSTRAINT FK_FD_RESOU_PARENT_ID_FD_RESOU;

ALTER TABLE "FD_SITE_DO_NA"
   DROP CONSTRAINT FK_FD_SITE__DOMAIN_NA_FD_DOMAI;

ALTER TABLE "FD_SITE_DO_NA"
   DROP CONSTRAINT FK_FD_SITE__SITE_ID__FD_SITE;

ALTER TABLE "FD_USER"
   DROP CONSTRAINT FK_FD_USER_DEPARTMEN_FD_DEPAR;

DROP TABLE "FD_DOMAIN_NA" CASCADE CONSTRAINTS;

DROP INDEX "FD_NAVIGATION_SITE_ID__FK";

DROP INDEX "FD_NAVIGATION_N";

DROP INDEX "FD_NAVIGATION_PARENT_ID__FK";

DROP TABLE "FD_NAVIGATION" CASCADE CONSTRAINTS;

DROP TABLE "FD_NAVIGATION_TY" CASCADE CONSTRAINTS;

DROP INDEX "FD_OPERATING_LO_USER_ID__FK";

DROP TABLE "FD_OPERATING_LO" CASCADE CONSTRAINTS;

DROP TABLE "FD_RELATIONSHIP" CASCADE CONSTRAINTS;

DROP INDEX "FD_DEPARTMENT_PARENT_ID__FK";

DROP TABLE "FD_DEPARTMENT" CASCADE CONSTRAINTS;

DROP INDEX "FD_DICTIONARY_D";

DROP TABLE "FD_DICTIONARY" CASCADE CONSTRAINTS;

DROP INDEX "FD_DICTIONARY_TY_PARENT_ID__FK";

DROP TABLE "FD_DICTIONARY_TY" CASCADE CONSTRAINTS;

DROP TABLE "FD_LOCALE" CASCADE CONSTRAINTS;

DROP INDEX "FD_MESSAGE_LOCALE_ID__FK";

DROP TABLE "FD_MESSAGE" CASCADE CONSTRAINTS;

DROP TABLE "FD_OBJECT_AT" CASCADE CONSTRAINTS;

DROP TABLE "FD_OBJECT_BL_AT" CASCADE CONSTRAINTS;

DROP TABLE "FD_OBJECT_CL_AT" CASCADE CONSTRAINTS;

DROP INDEX "FD_RESOURCE_SITE_ID__FK";

DROP INDEX "FD_RESOURCE_RESOURCE_TY_ID__FK";

DROP INDEX "FD_RESOURCE_PARENT_ID__FK";

DROP TABLE "FD_RESOURCE" CASCADE CONSTRAINTS;

DROP INDEX "FD_RESOURCE_TY_PARENT_ID__FK";

DROP TABLE "FD_RESOURCE_TY" CASCADE CONSTRAINTS;

DROP TABLE "FD_SITE" CASCADE CONSTRAINTS;

DROP INDEX "FD_SITE_DO_NA_SITE_ID__FK";

DROP INDEX "FD_SITE_DO_NA_DOMAIN_NA_ID__FK";

DROP TABLE "FD_SITE_DO_NA" CASCADE CONSTRAINTS;

DROP INDEX "FD_USER_DEPARTMENT_ID__FK";

DROP TABLE "FD_USER" CASCADE CONSTRAINTS;

/*==============================================================*/
/* Table: "FD_DOMAIN_NA"                                        */
/*==============================================================*/
CREATE TABLE "FD_DOMAIN_NA" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "ORDER_"             INTEGER              DEFAULT 0 NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_DOMAIN_NA PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_DOMAIN_NA" IS
'����';

COMMENT ON COLUMN "FD_DOMAIN_NA"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_DOMAIN_NA"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_DOMAIN_NA"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_DOMAIN_NA"."ORDER_" IS
'�����';

COMMENT ON COLUMN "FD_DOMAIN_NA"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_DOMAIN_NA"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Table: "FD_NAVIGATION"                                       */
/*==============================================================*/
CREATE TABLE "FD_NAVIGATION" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "SITE_ID_"           VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "NAVIGATION_TY_ID_"  VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "PARENT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "ORDER_"             INTEGER              DEFAULT 0 NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_NAVIGATION PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_NAVIGATION" IS
'����';

COMMENT ON COLUMN "FD_NAVIGATION"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_NAVIGATION"."SITE_ID_" IS
'վ��ʶ';

COMMENT ON COLUMN "FD_NAVIGATION"."NAVIGATION_TY_ID_" IS
'�������ͱ�ʶ';

COMMENT ON COLUMN "FD_NAVIGATION"."PARENT_ID_" IS
'����ʶ';

COMMENT ON COLUMN "FD_NAVIGATION"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_NAVIGATION"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_NAVIGATION"."ORDER_" IS
'�����';

COMMENT ON COLUMN "FD_NAVIGATION"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_NAVIGATION"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Index: "FD_NAVIGATION_PARENT_ID__FK"                         */
/*==============================================================*/
CREATE INDEX "FD_NAVIGATION_PARENT_ID__FK" ON "FD_NAVIGATION" (
   "PARENT_ID_" ASC
);

/*==============================================================*/
/* Index: "FD_NAVIGATION_N"                                     */
/*==============================================================*/
CREATE INDEX "FD_NAVIGATION_N" ON "FD_NAVIGATION" (
   "NAVIGATION_TY_ID_" ASC
);

/*==============================================================*/
/* Index: "FD_NAVIGATION_SITE_ID__FK"                           */
/*==============================================================*/
CREATE INDEX "FD_NAVIGATION_SITE_ID__FK" ON "FD_NAVIGATION" (
   "SITE_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_NAVIGATION_TY"                                    */
/*==============================================================*/
CREATE TABLE "FD_NAVIGATION_TY" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "ORDER_"             INTEGER              DEFAULT 0 NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_NAVIGATION_TY PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_NAVIGATION_TY" IS
'��������';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."ORDER_" IS
'�����';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_NAVIGATION_TY"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Table: "FD_OPERATING_LO"                                     */
/*==============================================================*/
CREATE TABLE "FD_OPERATING_LO" 
(
   "OBJECT_TY_ID_"      VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "OBJECT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "TYPE_ID_"           VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "USER_ID_"           VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_OPERATING_LO PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_OPERATING_LO" IS
'������־';

COMMENT ON COLUMN "FD_OPERATING_LO"."OBJECT_TY_ID_" IS
'�������ͱ�ʶ';

COMMENT ON COLUMN "FD_OPERATING_LO"."OBJECT_ID_" IS
'�����ʶ';

COMMENT ON COLUMN "FD_OPERATING_LO"."TYPE_ID_" IS
'���ͱ�ʶ';

COMMENT ON COLUMN "FD_OPERATING_LO"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_OPERATING_LO"."USER_ID_" IS
'�û���ʶ';

COMMENT ON COLUMN "FD_OPERATING_LO"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_OPERATING_LO"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_OPERATING_LO"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Index: "FD_OPERATING_LO_USER_ID__FK"                         */
/*==============================================================*/
CREATE INDEX "FD_OPERATING_LO_USER_ID__FK" ON "FD_OPERATING_LO" (
   "USER_ID_" ASC
);

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
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_RELATIONSHIP PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_RELATIONSHIP" IS
'����';

COMMENT ON COLUMN "FD_RELATIONSHIP"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_1_TY_ID_" IS
'����1���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_1_ID_" IS
'����1��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_2_TY_ID_" IS
'����2���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_2_ID_" IS
'����2��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_3_TY_ID_" IS
'����3���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_3_ID_" IS
'����3��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_4_TY_ID_" IS
'����4���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_4_ID_" IS
'����4��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_5_TY_ID_" IS
'����5���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_5_ID_" IS
'����5��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_6_TY_ID_" IS
'����6���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_6_ID_" IS
'����6��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_7_TY_ID_" IS
'����7���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_7_ID_" IS
'����7��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_8_TY_ID_" IS
'����8���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_8_ID_" IS
'����8��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_9_TY_ID_" IS
'����9���ͱ�ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."OBJECT_9_ID_" IS
'����9��ʶ';

COMMENT ON COLUMN "FD_RELATIONSHIP"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_RELATIONSHIP"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Table: "FD_DEPARTMENT"                                       */
/*==============================================================*/
CREATE TABLE "FD_DEPARTMENT" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "PARENT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_DEPARTMENT PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_DEPARTMENT" IS
'����';

COMMENT ON COLUMN "FD_DEPARTMENT"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_DEPARTMENT"."PARENT_ID_" IS
'����ʶ';

COMMENT ON COLUMN "FD_DEPARTMENT"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_DEPARTMENT"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_DEPARTMENT"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_DEPARTMENT"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Index: "FD_DEPARTMENT_PARENT_ID__FK"                         */
/*==============================================================*/
CREATE INDEX "FD_DEPARTMENT_PARENT_ID__FK" ON "FD_DEPARTMENT" (
   "PARENT_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_DICTIONARY"                                       */
/*==============================================================*/
CREATE TABLE "FD_DICTIONARY" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "DICTIONARY_TY_ID_"  VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "ORDER_"             INTEGER              DEFAULT 0 NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_DICTIONARY PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_DICTIONARY" IS
'�ֵ�';

COMMENT ON COLUMN "FD_DICTIONARY"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_DICTIONARY"."DICTIONARY_TY_ID_" IS
'�ֵ����ͱ�ʶ';

COMMENT ON COLUMN "FD_DICTIONARY"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_DICTIONARY"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_DICTIONARY"."ORDER_" IS
'�����';

COMMENT ON COLUMN "FD_DICTIONARY"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_DICTIONARY"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Index: "FD_DICTIONARY_D"                                     */
/*==============================================================*/
CREATE INDEX "FD_DICTIONARY_D" ON "FD_DICTIONARY" (
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
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "ORDER_"             INTEGER              DEFAULT 0 NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_DICTIONARY_TY PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_DICTIONARY_TY" IS
'�ֵ�����';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."PARENT_ID_" IS
'����ʶ';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."ORDER_" IS
'�����';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_DICTIONARY_TY"."END_TI_" IS
'����ʱ��';

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
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "ORDER_"             INTEGER              DEFAULT 0 NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_LOCALE PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_LOCALE" IS
'�ص�';

COMMENT ON COLUMN "FD_LOCALE"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_LOCALE"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_LOCALE"."ORDER_" IS
'�����';

COMMENT ON COLUMN "FD_LOCALE"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_LOCALE"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Table: "FD_MESSAGE"                                          */
/*==============================================================*/
CREATE TABLE "FD_MESSAGE" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "LOCALE_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "CONTENT_"           VARCHAR2(2048),
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_MESSAGE PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_MESSAGE" IS
'��Ϣ';

COMMENT ON COLUMN "FD_MESSAGE"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_MESSAGE"."LOCALE_ID_" IS
'�ص��ʶ';

COMMENT ON COLUMN "FD_MESSAGE"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_MESSAGE"."CONTENT_" IS
'����';

COMMENT ON COLUMN "FD_MESSAGE"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_MESSAGE"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Index: "FD_MESSAGE_LOCALE_ID__FK"                            */
/*==============================================================*/
CREATE INDEX "FD_MESSAGE_LOCALE_ID__FK" ON "FD_MESSAGE" (
   "LOCALE_ID_" ASC
);

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
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_OBJECT_AT PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_OBJECT_AT" IS
'��������';

COMMENT ON COLUMN "FD_OBJECT_AT"."OBJECT_TY_ID_" IS
'�������ͱ�ʶ';

COMMENT ON COLUMN "FD_OBJECT_AT"."OBJECT_ID_" IS
'�����ʶ';

COMMENT ON COLUMN "FD_OBJECT_AT"."TYPE_ID_" IS
'���ͱ�ʶ';

COMMENT ON COLUMN "FD_OBJECT_AT"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_OBJECT_AT"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_OBJECT_AT"."LONG_VA_" IS
'longֵ';

COMMENT ON COLUMN "FD_OBJECT_AT"."DOUBLE_VA_" IS
'doubleֵ';

COMMENT ON COLUMN "FD_OBJECT_AT"."DATE_VA_" IS
'dateֵ';

COMMENT ON COLUMN "FD_OBJECT_AT"."STRING_VA_" IS
'stringֵ';

COMMENT ON COLUMN "FD_OBJECT_AT"."TEXT_VA_" IS
'textֵ';

COMMENT ON COLUMN "FD_OBJECT_AT"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_OBJECT_AT"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Table: "FD_OBJECT_BL_AT"                                     */
/*==============================================================*/
CREATE TABLE "FD_OBJECT_BL_AT" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "BYTE_VA_"           BLOB,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_OBJECT_BL_AT PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_OBJECT_BL_AT" IS
'����BLob����';

COMMENT ON COLUMN "FD_OBJECT_BL_AT"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_OBJECT_BL_AT"."BYTE_VA_" IS
'blobֵ';

COMMENT ON COLUMN "FD_OBJECT_BL_AT"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_OBJECT_BL_AT"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Table: "FD_OBJECT_CL_AT"                                     */
/*==============================================================*/
CREATE TABLE "FD_OBJECT_CL_AT" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CLOB_VA_"           CLOB,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_OBJECT_CL_AT PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_OBJECT_CL_AT" IS
'����CLob����';

COMMENT ON COLUMN "FD_OBJECT_CL_AT"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_OBJECT_CL_AT"."CLOB_VA_" IS
'clobֵ';

COMMENT ON COLUMN "FD_OBJECT_CL_AT"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_OBJECT_CL_AT"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Table: "FD_RESOURCE"                                         */
/*==============================================================*/
CREATE TABLE "FD_RESOURCE" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "RESOURCE_TY_ID_"    VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "PARENT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "SITE_ID_"           VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "ORDER_"             INTEGER              DEFAULT 0 NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_RESOURCE PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_RESOURCE" IS
'��Դ';

COMMENT ON COLUMN "FD_RESOURCE"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_RESOURCE"."RESOURCE_TY_ID_" IS
'��Դ���ͱ�ʶ';

COMMENT ON COLUMN "FD_RESOURCE"."PARENT_ID_" IS
'����ʶ';

COMMENT ON COLUMN "FD_RESOURCE"."SITE_ID_" IS
'վ��ʶ';

COMMENT ON COLUMN "FD_RESOURCE"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_RESOURCE"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_RESOURCE"."ORDER_" IS
'�����';

COMMENT ON COLUMN "FD_RESOURCE"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_RESOURCE"."END_TI_" IS
'����ʱ��';

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
/* Index: "FD_RESOURCE_SITE_ID__FK"                             */
/*==============================================================*/
CREATE INDEX "FD_RESOURCE_SITE_ID__FK" ON "FD_RESOURCE" (
   "SITE_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_RESOURCE_TY"                                      */
/*==============================================================*/
CREATE TABLE "FD_RESOURCE_TY" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "PARENT_ID_"         VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "ORDER_"             INTEGER              DEFAULT 0 NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_RESOURCE_TY PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_RESOURCE_TY" IS
'��Դ����';

COMMENT ON COLUMN "FD_RESOURCE_TY"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_RESOURCE_TY"."PARENT_ID_" IS
'����ʶ';

COMMENT ON COLUMN "FD_RESOURCE_TY"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_RESOURCE_TY"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_RESOURCE_TY"."ORDER_" IS
'�����';

COMMENT ON COLUMN "FD_RESOURCE_TY"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_RESOURCE_TY"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Index: "FD_RESOURCE_TY_PARENT_ID__FK"                        */
/*==============================================================*/
CREATE INDEX "FD_RESOURCE_TY_PARENT_ID__FK" ON "FD_RESOURCE_TY" (
   "PARENT_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_SITE"                                             */
/*==============================================================*/
CREATE TABLE "FD_SITE" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_SITE PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_SITE" IS
'վ';

COMMENT ON COLUMN "FD_SITE"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_SITE"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_SITE"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_SITE"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_SITE"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Table: "FD_SITE_DO_NA"                                       */
/*==============================================================*/
CREATE TABLE "FD_SITE_DO_NA" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "SITE_ID_"           VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "DOMAIN_NA_ID_"      VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_SITE_DO_NA PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_SITE_DO_NA" IS
'վ������';

COMMENT ON COLUMN "FD_SITE_DO_NA"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_SITE_DO_NA"."SITE_ID_" IS
'վ��ʶ';

COMMENT ON COLUMN "FD_SITE_DO_NA"."DOMAIN_NA_ID_" IS
'������ʶ';

COMMENT ON COLUMN "FD_SITE_DO_NA"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_SITE_DO_NA"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Index: "FD_SITE_DO_NA_DOMAIN_NA_ID__FK"                      */
/*==============================================================*/
CREATE INDEX "FD_SITE_DO_NA_DOMAIN_NA_ID__FK" ON "FD_SITE_DO_NA" (
   "DOMAIN_NA_ID_" ASC
);

/*==============================================================*/
/* Index: "FD_SITE_DO_NA_SITE_ID__FK"                           */
/*==============================================================*/
CREATE INDEX "FD_SITE_DO_NA_SITE_ID__FK" ON "FD_SITE_DO_NA" (
   "SITE_ID_" ASC
);

/*==============================================================*/
/* Table: "FD_USER"                                             */
/*==============================================================*/
CREATE TABLE "FD_USER" 
(
   "ID_"                VARCHAR2(36)         DEFAULT 'SYS_GUID()' NOT NULL,
   "DEPARTMENT_ID_"     VARCHAR2(36)         DEFAULT 'SYS_GUID()',
   "CODE_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "NAME_"              VARCHAR2(256)        DEFAULT 'SYS_GUID()' NOT NULL,
   "BEGIN_TI_"          DATE                 DEFAULT SYSDATE NOT NULL,
   "END_TI_"            DATE                 DEFAULT 'TO_DATE(''31-12-9999'',''dd-mm-yyyy'')' NOT NULL,
   CONSTRAINT PK_FD_USER PRIMARY KEY ("ID_")
);

COMMENT ON TABLE "FD_USER" IS
'�û�';

COMMENT ON COLUMN "FD_USER"."ID_" IS
'��ʶ';

COMMENT ON COLUMN "FD_USER"."DEPARTMENT_ID_" IS
'���ű�ʶ';

COMMENT ON COLUMN "FD_USER"."CODE_" IS
'���';

COMMENT ON COLUMN "FD_USER"."NAME_" IS
'����';

COMMENT ON COLUMN "FD_USER"."BEGIN_TI_" IS
'��ʼʱ��';

COMMENT ON COLUMN "FD_USER"."END_TI_" IS
'����ʱ��';

/*==============================================================*/
/* Index: "FD_USER_DEPARTMENT_ID__FK"                           */
/*==============================================================*/
CREATE INDEX "FD_USER_DEPARTMENT_ID__FK" ON "FD_USER" (
   "DEPARTMENT_ID_" ASC
);

ALTER TABLE "FD_NAVIGATION"
   ADD CONSTRAINT FK_FD_NAVIG_NAVIGATIO_FD_NAVIG FOREIGN KEY ("NAVIGATION_TY_ID_")
      REFERENCES "FD_NAVIGATION_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_NAVIGATION"
   ADD CONSTRAINT FK_FD_NAVIG_PARENT_ID_FD_NAVIG FOREIGN KEY ("PARENT_ID_")
      REFERENCES "FD_NAVIGATION" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_NAVIGATION"
   ADD CONSTRAINT FK_FD_NAVIG_SITE_ID__FD_SITE FOREIGN KEY ("SITE_ID_")
      REFERENCES "FD_SITE" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_OPERATING_LO"
   ADD CONSTRAINT FK_FD_OPERA_USER_ID__FD_USER FOREIGN KEY ("USER_ID_")
      REFERENCES "FD_USER" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_DEPARTMENT"
   ADD CONSTRAINT FK_FD_DEPAR_PARENT_ID_FD_DEPAR FOREIGN KEY ("PARENT_ID_")
      REFERENCES "FD_DEPARTMENT" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_DICTIONARY"
   ADD CONSTRAINT FK_FD_DICTI_DICTIONAR_FD_DICTI FOREIGN KEY ("DICTIONARY_TY_ID_")
      REFERENCES "FD_DICTIONARY_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_DICTIONARY_TY"
   ADD CONSTRAINT FK_FD_DICTI_PARENT_ID_FD_DICTI FOREIGN KEY ("PARENT_ID_")
      REFERENCES "FD_DICTIONARY_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_MESSAGE"
   ADD CONSTRAINT FK_FD_MESSA_LOCALE_ID_FD_LOCAL FOREIGN KEY ("LOCALE_ID_")
      REFERENCES "FD_LOCALE" ("ID_")
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
   ADD CONSTRAINT FK_FD_RESOU_RESOURCE__FD_RESOU FOREIGN KEY ("RESOURCE_TY_ID_")
      REFERENCES "FD_RESOURCE_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_RESOURCE"
   ADD CONSTRAINT FK_FD_RESOU_SITE_ID__FD_SITE FOREIGN KEY ("SITE_ID_")
      REFERENCES "FD_SITE" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_RESOURCE_TY"
   ADD CONSTRAINT FK_FD_RESOU_PARENT_ID_FD_RESOU FOREIGN KEY ("PARENT_ID_")
      REFERENCES "FD_RESOURCE_TY" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_SITE_DO_NA"
   ADD CONSTRAINT FK_FD_SITE__DOMAIN_NA_FD_DOMAI FOREIGN KEY ("DOMAIN_NA_ID_")
      REFERENCES "FD_DOMAIN_NA" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_SITE_DO_NA"
   ADD CONSTRAINT FK_FD_SITE__SITE_ID__FD_SITE FOREIGN KEY ("SITE_ID_")
      REFERENCES "FD_SITE" ("ID_")
      ON DELETE CASCADE;

ALTER TABLE "FD_USER"
   ADD CONSTRAINT FK_FD_USER_DEPARTMEN_FD_DEPAR FOREIGN KEY ("DEPARTMENT_ID_")
      REFERENCES "FD_DEPARTMENT" ("ID_")
      ON DELETE CASCADE;

