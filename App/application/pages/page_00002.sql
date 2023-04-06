prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(39802336098165641)
,p_name=>'Users'
,p_alias=>'USERS'
,p_step_title=>'Users'
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
,p_last_upd_yyyymmddhh24miss=>'20230125002555'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39822380131165675)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39710811268165595)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Users'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(39822439553165675)
,p_name=>'Users'
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
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.:::3:P3_ACCOUNT_NAME:\#ACCOUNT_NAME#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'ALEKSANDER.OWCZARCZAK@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>39822439553165675
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39822841711165676)
,p_db_column_name=>'ACCOUNT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Account Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39823223079165678)
,p_db_column_name=>'E_MAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'E-Mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39823690721165678)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39824066688165679)
,p_db_column_name=>'DATE_OF_REGISTRATION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date of Registration'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39824441659165679)
,p_db_column_name=>'ACC_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Account Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39824806172165679)
,p_db_column_name=>'MEM_SINCE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Member Since'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39825231242165680)
,p_db_column_name=>'PREM_CURRENCY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Premium Currency'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39825685132165680)
,p_db_column_name=>'FREE_MISSIONS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Free Missions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40001972870166080)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'400020'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ACCOUNT_NAME:E_MAIL:DATE_OF_BIRTH:DATE_OF_REGISTRATION:ACC_TYPE:MEM_SINCE:PREM_CURRENCY:FREE_MISSIONS:'
,p_sort_column_1=>'ACCOUNT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39826800496165681)
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
 p_id=>wwv_flow_api.id(39618660659979331)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39822380131165675)
,p_button_name=>'GIVE_HOUSE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(39777919701165628)
,p_button_image_alt=>'Give  a House'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39826032049165680)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39822380131165675)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(39777919701165628)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39828680426165682)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39822380131165675)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39827743141165682)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(39822380131165675)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39828211836165682)
,p_event_id=>wwv_flow_api.id(39827743141165682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39822380131165675)
);
wwv_flow_api.component_end;
end;
/
