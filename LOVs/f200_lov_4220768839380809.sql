
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

prompt --application/shared_components/user_interface/lovs/demo_lov
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4220768839380809)
,p_lov_name=>'DEMO_LOV'
,p_lov_query=>'.'||wwv_flow_api.id(4220768839380809)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4221032979380810)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Jedan'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4221486997380811)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Dva'
,p_lov_return_value=>'2'
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
