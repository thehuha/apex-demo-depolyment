
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.1.00.08'
,p_default_workspace_id=>1470610789947540
,p_default_application_id=>200
,p_default_owner=>'HROUG');

end;
/

begin
  wwv_flow_api.g_mode := 'REPLACE';
end;
/

prompt --application/pages/delete_00005
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>5);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(2642902176568987)
,p_name=>'Deployment Demo'
,p_step_title=>'Deployment Demo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DHUHA'
,p_last_upd_yyyymmddhh24miss=>'20181030111148'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4212153947107502)
,p_plug_name=>'Demo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2568901493568920)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4212233680107503)
,p_name=>'P5_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4212153947107502)
,p_prompt=>'Demo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEMO_LOV'
,p_lov=>'.'||wwv_flow_api.id(4220768839380809)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(2620528379568956)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4212390866107504)
,p_name=>'P5_NEW_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4212153947107502)
,p_prompt=>'New'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(2620528379568956)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
