prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 124
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>26579477600960056
,p_default_application_id=>124
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJ148172148073'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(39780645556165631)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(39675591888165579)
,p_default_dialog_template=>wwv_flow_api.id(39659070169165570)
,p_error_template=>wwv_flow_api.id(39660507111165571)
,p_printer_friendly_template=>wwv_flow_api.id(39675591888165579)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(39660507111165571)
,p_default_button_template=>wwv_flow_api.id(39777811072165628)
,p_default_region_template=>wwv_flow_api.id(39712737261165596)
,p_default_chart_template=>wwv_flow_api.id(39712737261165596)
,p_default_form_template=>wwv_flow_api.id(39712737261165596)
,p_default_reportr_template=>wwv_flow_api.id(39712737261165596)
,p_default_tabform_template=>wwv_flow_api.id(39712737261165596)
,p_default_wizard_template=>wwv_flow_api.id(39712737261165596)
,p_default_menur_template=>wwv_flow_api.id(39722164137165601)
,p_default_listr_template=>wwv_flow_api.id(39712737261165596)
,p_default_irr_template=>wwv_flow_api.id(39710811268165595)
,p_default_report_template=>wwv_flow_api.id(39740274959165610)
,p_default_label_template=>wwv_flow_api.id(39775021498165627)
,p_default_menu_template=>wwv_flow_api.id(39779290271165629)
,p_default_calendar_template=>wwv_flow_api.id(39779325210165629)
,p_default_list_template=>wwv_flow_api.id(39773454785165626)
,p_default_nav_list_template=>wwv_flow_api.id(39764496294165622)
,p_default_top_nav_list_temp=>wwv_flow_api.id(39764496294165622)
,p_default_side_nav_list_temp=>wwv_flow_api.id(39762635553165621)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(39682715964165583)
,p_default_dialogr_template=>wwv_flow_api.id(39681787901165582)
,p_default_option_label=>wwv_flow_api.id(39775021498165627)
,p_default_required_label=>wwv_flow_api.id(39775135364165627)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(39765462712165622)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
