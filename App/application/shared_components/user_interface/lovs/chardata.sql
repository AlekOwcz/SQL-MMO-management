prompt --application/shared_components/user_interface/lovs/chardata
begin
--   Manifest
--     CHARDATA
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>26579477600960056
,p_default_application_id=>124
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJ148172148073'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(52865301571211871)
,p_lov_name=>'CHARDATA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''ACCOUNT: '' || ACCOUNT || CHR(09) || '' | SERVER: '' || SERVER || CHR(09) ||'' | NAME: '' || CHAR_NAME, ID',
'FROM CHARS'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'''ACCOUNT:''||ACCOUNT||CHR(09)||''|SERVER:''||SERVER||CHR(09)||''|NAME:''||CHAR_NAME'
,p_default_sort_column_name=>'''ACCOUNT:''||ACCOUNT||CHR(09)||''|SERVER:''||SERVER||CHR(09)||''|NAME:''||CHAR_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
