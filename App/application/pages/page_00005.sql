prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(39802336098165641)
,p_name=>'Char'
,p_alias=>'CHAR'
,p_page_mode=>'MODAL'
,p_step_title=>'Char'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ALEKSANDER.OWCZARCZAK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125032506'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39851582510165790)
,p_plug_name=>'Char'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39681787901165582)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CHARS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39858956761165795)
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
 p_id=>wwv_flow_api.id(39859367961165795)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39858956761165795)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39860979711165796)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39858956761165795)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39861357054165797)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39858956761165795)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39861701840165797)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(39858956761165795)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39851930760165790)
,p_name=>'P5_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39852374440165791)
,p_name=>'P5_ACCOUNT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_prompt=>'Account'
,p_source=>'ACCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USERS.E_MAIL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39852750329165791)
,p_name=>'P5_SERVER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_prompt=>'Server'
,p_source=>'SERVER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONTINENT d, CONTINENT r',
'FROM MEGASERVER;'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39853111323165791)
,p_name=>'P5_CHAR_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Char Name'
,p_source=>'CHAR_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39853524549165791)
,p_name=>'P5_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_prompt=>'Class'
,p_source=>'CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT NAME D, NAME R FROM CLASS;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39853938736165792)
,p_name=>'P5_RACE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_prompt=>'Race'
,p_source=>'RACE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT NAME D, NAME R FROM RACE;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39854315765165792)
,p_name=>'P5_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_default=>'SELECT CURRENT_DATE FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
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
 p_id=>wwv_flow_api.id(39854710587165792)
,p_name=>'P5_PLAY_TIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_prompt=>'Play Time'
,p_source=>'PLAY_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39855168817165793)
,p_name=>'P5_GUILD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_prompt=>'Guild'
,p_source=>'GUILD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GUILDS.NAMES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39855579413165793)
,p_name=>'P5_IS_GUILD_LEADER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(39851582510165790)
,p_item_source_plug_id=>wwv_flow_api.id(39851582510165790)
,p_prompt=>'Is Guild Leader'
,p_source=>'IS_GUILD_LEADER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:True;T,False;F'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45758508823419806)
,p_validation_name=>'Guild Leader '
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P5_GUILD IS NOT NULL AND :P5_IS_GUILD_LEADER IS NULL THEN',
'RETURN FALSE;',
'END IF;',
'RETURN TRUE;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Not selected.'
,p_associated_item=>wwv_flow_api.id(39855579413165793)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45758674523419807)
,p_validation_name=>'Create character'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NOT EXISTS(SELECT CHAR_NAME, ACCOUNT, SERVER FROM CHARS WHERE ',
'CHAR_NAME LIKE :P5_CHAR_NAME AND ACCOUNT LIKE :P5_ACCOUNT AND SERVER LIKE :P5_SERVER',
')'))
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Such a character already exists.'
,p_when_button_pressed=>wwv_flow_api.id(39861701840165797)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45758825179419809)
,p_validation_name=>'Edit character'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccount CHARS.ACCOUNT%TYPE;',
'vServer CHARS.SERVER%TYPE;',
'vName CHARS.CHAR_NAME%TYPE;',
'vN Number(10);',
'BEGIN',
'SELECT ACCOUNT, SERVER, CHAR_NAME INTO vAccount, vServer, vName FROM CHARS WHERE ID = :P5_ID;',
'IF vAccount LIKE :P5_ACCOUNT AND vServer LIKE :P5_SERVER AND vName LIKE :P5_CHAR_NAME THEN',
'    RETURN TRUE;',
'END IF;',
'SELECT COUNT(*) INTO vN FROM CHARS WHERE ACCOUNT LIKE :P5_ACCOUNT AND SERVER LIKE :P5_SERVER AND CHAR_NAME ',
'LIKE :P5_CHAR_NAME;',
'IF vN > 0 THEN ',
'    RETURN FALSE;',
'END IF;',
'RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Such a character already exists.'
,p_when_button_pressed=>wwv_flow_api.id(39861357054165797)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45715221977330536)
,p_validation_name=>'Leader with no guild'
,p_validation_sequence=>50
,p_validation=>':P5_GUILD IS NOT NULL OR :P5_IS_GUILD_LEADER IS NULL;'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Only characters in a guild can have a non-null leader status!'
,p_associated_item=>wwv_flow_api.id(39855579413165793)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51628508184876602)
,p_validation_name=>'Leader already exists'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P5_IS_GUILD_LEADER IS NULL ',
'OR :P5_IS_GUILD_LEADER = ''F'' ',
'OR NOT EXISTS(SELECT ID FROM CHARS WHERE ID!=:P5_ID AND GUILD=:P5_GUILD AND IS_GUILD_LEADER=:P5_IS_GUILD_LEADER);'))
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Chosen guild already has a leader!'
,p_associated_item=>wwv_flow_api.id(39855579413165793)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51628917776876606)
,p_validation_name=>'Leaderless guild'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P5_IS_GUILD_LEADER = ''T'' OR ',
'NOT EXISTS(SELECT GUILD_NAME FROM GUILDS WHERE LEADER = :P5_ID);'))
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'A guild can not have no leader! To change this value use the guild raport.'
,p_associated_item=>wwv_flow_api.id(39855579413165793)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39859469469165795)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39859367961165795)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39860253578165796)
,p_event_id=>wwv_flow_api.id(39859469469165795)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39862575571165797)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(39851582510165790)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Char'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39862965086165798)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39862190730165797)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(39851582510165790)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Char'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
