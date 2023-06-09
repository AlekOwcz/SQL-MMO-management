prompt --application/shared_components/navigation/lists/page_navigation
begin
--   Manifest
--     LIST: Page Navigation
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>26579477600960056
,p_default_application_id=>124
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJ148172148073'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(40115481792166172)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(51647634868975455)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Statistics'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40115843198166172)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-clipboard-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40116210788166172)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Characters'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40116666661166173)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Guilds'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40117067160166173)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Servers'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-server'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40117470798166173)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Houses'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40117838371166173)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Races'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-paw'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40118284494166174)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Classes'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-street-view'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40118640769166174)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Items'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-gavel'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40119038771166174)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Owned Items'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-hero'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40119420451166175)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Spells'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-magic'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40119888786166175)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Owned Spells'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-life-ring'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
