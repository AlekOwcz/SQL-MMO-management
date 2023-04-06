prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(39802336098165641)
,p_name=>'Give house'
,p_alias=>'GIVE-HOUSE'
,p_step_title=>'Give house'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ALEKSANDER.OWCZARCZAK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125004454'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52075086328970062)
,p_plug_name=>'Give house'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(39712737261165596)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52082145201970068)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(52075086328970062)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P27_ACCOUNT_NAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52080913894970066)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(52075086328970062)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52082594969970068)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(52075086328970062)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Give'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P27_ACCOUNT_NAME'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52081774793970067)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(52075086328970062)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P27_ACCOUNT_NAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52082823996970068)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39618342704979328)
,p_name=>'P27_HOUSE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(52075086328970062)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LOCATION d, LOCATION r',
'FROM HOUSE',
'WHERE SERVER=:P27_SERVER'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P27_SERVER'
,p_ajax_items_to_submit=>'P27_SERVER'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39618441661979329)
,p_name=>'P27_SERVER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(52075086328970062)
,p_prompt=>'Server'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT CONTINENT D, CONTINENT R FROM MEGASERVER;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52075398915970062)
,p_name=>'P27_ACCOUNT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(52075086328970062)
,p_item_source_plug_id=>wwv_flow_api.id(52075086328970062)
,p_prompt=>'Account'
,p_source=>'ACCOUNT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT ACCOUNT_NAME D, ACCOUNT_NAME R FROM USERS;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39618970283979334)
,p_validation_name=>'Has house'
,p_validation_sequence=>10
,p_validation=>'NOT EXISTS(SELECT * FROM HOUSE WHERE OWNER=:P27_ACCOUNT_NAME AND SERVER=:P27_SERVER AND LOCATION=:P27_HOUSE);'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Account already owns this house'
,p_associated_item=>wwv_flow_api.id(52075398915970062)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39619059709979335)
,p_validation_name=>'Not occupied'
,p_validation_sequence=>20
,p_validation=>'NOT EXISTS(SELECT * FROM HOUSE WHERE OWNER!=:P27_ACCOUNT_NAME AND SERVER=:P27_SERVER AND LOCATION=:P27_HOUSE);'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Somebody already owns this house!'
,p_associated_item=>wwv_flow_api.id(39618342704979328)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52083716667970069)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(52075086328970062)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Give house'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    GIVE_HOUSE(:P27_HOUSE, :P27_SERVER, :P27_ACCOUNT_NAME);',
'END;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52083339303970068)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(52075086328970062)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Give house'
);
wwv_flow_api.component_end;
end;
/
