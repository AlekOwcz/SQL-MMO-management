prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>26579477600960056
,p_default_application_id=>124
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROJ148172148073'
);
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(39802336098165641)
,p_name=>'Owned Spells'
,p_alias=>'OWNED-SPELLS'
,p_step_title=>'Owned Spells'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'ALEKSANDER.OWCZARCZAK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125033608'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39988404237166050)
,p_plug_name=>'Character Spell'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39710811268165595)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CHARACTER_SPELL'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Owned Spells'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(39988550368166050)
,p_name=>'Owned Spells'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.:::23:P23_CHARACTER_ID,P23_SPELL:\#CHARACTER_ID#\,\#SPELL#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'ALEKSANDER.OWCZARCZAK@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>39988550368166050
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39988906198166051)
,p_db_column_name=>'CHARACTER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Character:'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(52863741739181208)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39989301574166051)
,p_db_column_name=>'SPELL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Spell'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(42667951554722326)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39989774108166052)
,p_db_column_name=>'SPELL_LEVEL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Spell Level'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40109056898166167)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'401091'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CHARACTER_ID:SPELL:SPELL_LEVEL:'
,p_sort_column_1=>'SPELL'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39991847501166053)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39722164137165601)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(39655153823165568)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(39779290271165629)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39991097832166053)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39988404237166050)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39777919701165628)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39993640142166054)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39988404237166050)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39992790411166054)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(39988404237166050)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39993259301166054)
,p_event_id=>wwv_flow_api.id(39992790411166054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39988404237166050)
);
wwv_flow_api.component_end;
end;
/
