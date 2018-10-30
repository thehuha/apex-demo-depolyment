prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.04.04'
,p_default_workspace_id=>1470610789947540
);
end;
/
prompt  WORKSPACE 1470610789947540
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   10:45 Tuesday October 30, 2018
--   Exported By:     DHUHA
--   Export Type:     Workspace Export
--   Version:         18.1.0.00.45
--   Instance ID:     220717191816403
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_180100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>1470610789947540);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace LOCAL...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 1470747995947577
 ,p_provisioning_company_id => 1470610789947540
 ,p_short_name => 'LOCAL'
 ,p_display_name => 'LOCAL'
 ,p_first_schema_provisioned => 'HR'
 ,p_company_schemas => 'HR'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'LOCAL'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'LOCAL'
 ,p_files_version => 1
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '1470547567947540',
  p_user_name                    => 'ADMIN',
  p_first_name                   => 'Daniel',
  p_last_name                    => 'Huha',
  p_description                  => '',
  p_email_address                => 'thehuha@gmail.com',
  p_web_password                 => '145A7CF7DC24D471004073759A6D97B9C8E77659',
  p_web_password_format          => '5;2;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'HR',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201810111902','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '1471695437966246',
  p_user_name                    => 'DHUHA',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'thehuha@gmail.com',
  p_web_password                 => '5A726EC6224E952FB7443977F27D5E8128FCA7DF',
  p_web_password_format          => '5;2;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'HR',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201810110000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
