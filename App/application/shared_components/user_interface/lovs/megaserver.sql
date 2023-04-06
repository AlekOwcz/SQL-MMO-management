prompt --application/shared_components/user_interface/lovs/megaserver
begin
--   Manifest
--     MEGASERVER.
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
 p_id=>wwv_flow_api.id(39845893235165766)
,p_lov_name=>'MEGASERVER.'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'MEGASERVER'
,p_return_column_name=>'CONTINENT'
,p_default_sort_column_name=>'CONTINENT'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
