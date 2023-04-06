prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(39802336098165641)
,p_name=>'User'
,p_alias=>'USER'
,p_page_mode=>'MODAL'
,p_step_title=>'User'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ALEKSANDER.OWCZARCZAK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125005623'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39829373922165754)
,p_plug_name=>'User'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39681787901165582)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39835250918165759)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39682715964165583)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39835666366165759)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39835250918165759)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39837243781165760)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39835250918165759)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_ACCOUNT_NAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39837658153165760)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39835250918165759)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_ACCOUNT_NAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39838010973165760)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(39835250918165759)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_ACCOUNT_NAME'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39829634582165755)
,p_name=>'P3_ACCOUNT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_source_plug_id=>wwv_flow_api.id(39829373922165754)
,p_prompt=>'Account Name'
,p_source=>'ACCOUNT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39830057865165755)
,p_name=>'P3_E_MAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_source_plug_id=>wwv_flow_api.id(39829373922165754)
,p_prompt=>'E Mail'
,p_source=>'E_MAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>96
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39830493729165755)
,p_name=>'P3_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_source_plug_id=>wwv_flow_api.id(39829373922165754)
,p_prompt=>'Date of Birth'
,p_source=>'DATE_OF_BIRTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39830888168165756)
,p_name=>'P3_DATE_OF_REGISTRATION'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_source_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_default=>'SELECT CURRENT_DATE FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Date of Registration'
,p_source=>'DATE_OF_REGISTRATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39831203951165756)
,p_name=>'P3_ACC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_source_plug_id=>wwv_flow_api.id(39829373922165754)
,p_prompt=>'Account Type'
,p_source=>'ACC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Premium;PREMIUM,Free;FREE'
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39831612743165756)
,p_name=>'P3_MEM_SINCE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_source_plug_id=>wwv_flow_api.id(39829373922165754)
,p_prompt=>'Member Since'
,p_source=>'MEM_SINCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39832044173165756)
,p_name=>'P3_PREM_CURRENCY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_source_plug_id=>wwv_flow_api.id(39829373922165754)
,p_prompt=>'Premium Currency'
,p_source=>'PREM_CURRENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999999999'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39832418060165757)
,p_name=>'P3_FREE_MISSIONS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(39829373922165754)
,p_item_source_plug_id=>wwv_flow_api.id(39829373922165754)
,p_prompt=>'Free Missions'
,p_source=>'FREE_MISSIONS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43784622024083102)
,p_validation_name=>'Free currency null'
,p_validation_sequence=>10
,p_validation=>':P3_ACC_TYPE = ''PREMIUM'' OR :P3_ACC_TYPE IS NULL OR :P3_PREM_CURRENCY IS NULL;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Free accounts must have null amount of premium currency!'
,p_associated_item=>wwv_flow_api.id(39832044173165756)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43784705411083103)
,p_validation_name=>'Free membership null'
,p_validation_sequence=>20
,p_validation=>':P3_ACC_TYPE = ''PREMIUM'' OR :P3_ACC_TYPE IS NULL OR :P3_MEM_SINCE IS NULL;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Free account must have a null membership start date!'
,p_associated_item=>wwv_flow_api.id(39831612743165756)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43785176025083107)
,p_validation_name=>'Free mission not null'
,p_validation_sequence=>30
,p_validation=>':P3_ACC_TYPE = ''PREMIUM'' OR :P3_ACC_TYPE IS NULL  OR :P3_FREE_MISSIONS IS NOT NULL;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Free account must have non-null amount of free missions!'
,p_associated_item=>wwv_flow_api.id(39832418060165757)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43785071747083106)
,p_validation_name=>'Premium currency not null'
,p_validation_sequence=>40
,p_validation=>':P3_ACC_TYPE = ''FREE'' OR :P3_ACC_TYPE IS NULL OR :P3_PREM_CURRENCY IS NOT NULL;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Premium accounts must have non-null amount of premium currency!'
,p_associated_item=>wwv_flow_api.id(39832044173165756)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43785257357083108)
,p_validation_name=>'Premium member not null'
,p_validation_sequence=>50
,p_validation=>':P3_ACC_TYPE = ''FREE'' OR :P3_ACC_TYPE IS NULL  OR :P3_MEM_SINCE IS NOT NULL;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Premium accounts must have a non-null membership start date!'
,p_associated_item=>wwv_flow_api.id(39831612743165756)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43785380926083109)
,p_validation_name=>'Premium missions null'
,p_validation_sequence=>60
,p_validation=>':P3_ACC_TYPE = ''FREE'' OR :P3_ACC_TYPE IS NULL OR :P3_FREE_MISSIONS IS NULL;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Premium accounts must have null value as free missions!'
,p_associated_item=>wwv_flow_api.id(39832418060165757)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43784852260083104)
,p_validation_name=>'Member after register'
,p_validation_sequence=>70
,p_validation=>':P3_ACC_TYPE = ''FREE'' OR :P3_MEM_SINCE IS NULL OR :P3_DATE_OF_REGISTRATION <= :P3_MEM_SINCE;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Membersip can''t start before registration!'
,p_associated_item=>wwv_flow_api.id(39831612743165756)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43784994389083105)
,p_validation_name=>'At least 13'
,p_validation_sequence=>80
,p_validation=>'MONTHS_BETWEEN(CURRENT_DATE,:P3_DATE_OF_BIRTH) >= 156;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'User must be at least 13 to register!'
,p_associated_item=>wwv_flow_api.id(39830493729165755)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43788711493083143)
,p_validation_name=>'Name taken'
,p_validation_sequence=>90
,p_validation=>'NOT EXISTS(SELECT ACCOUNT_NAME FROM USERS WHERE ACCOUNT_NAME=:P3_ACCOUNT_NAME)'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Account name already taken!'
,p_when_button_pressed=>wwv_flow_api.id(39838010973165760)
,p_associated_item=>wwv_flow_api.id(39829634582165755)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39617704203979322)
,p_validation_name=>'Edit PK'
,p_validation_sequence=>100
,p_validation=>'EXISTS(SELECT ACCOUNT_NAME FROM USERS WHERE ACCOUNT_NAME = :P3_ACCOUNT_NAME);'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Account name uniquely identifies an account and thus should not be changed!'
,p_when_button_pressed=>wwv_flow_api.id(39837658153165760)
,p_associated_item=>wwv_flow_api.id(39829634582165755)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39835789357165759)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39835666366165759)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39836586401165759)
,p_event_id=>wwv_flow_api.id(39835789357165759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39838845233165761)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(39829373922165754)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form User'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Record successfully added/edited!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39839272061165761)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39838468210165761)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(39829373922165754)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
