prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(39802336098165641)
,p_name=>'Guild'
,p_alias=>'GUILD'
,p_page_mode=>'MODAL'
,p_step_title=>'Guild'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ALEKSANDER.OWCZARCZAK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125024242'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39871401199165824)
,p_plug_name=>'Guild'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(39681787901165582)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'GUILDS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39875272267165828)
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
 p_id=>wwv_flow_api.id(39875632982165828)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39875272267165828)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39877208918165829)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39875272267165828)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P7_GUILD_NAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39877638859165829)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39875272267165828)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P7_GUILD_NAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39878061960165829)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(39875272267165828)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(39777811072165628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P7_GUILD_NAME'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39871786395165824)
,p_name=>'P7_GUILD_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39871401199165824)
,p_item_source_plug_id=>wwv_flow_api.id(39871401199165824)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Guild Name'
,p_source=>'GUILD_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39872150783165824)
,p_name=>'P7_SERVER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39871401199165824)
,p_item_source_plug_id=>wwv_flow_api.id(39871401199165824)
,p_prompt=>'Server'
,p_source=>'SERVER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT CONTINENT D, CONTINENT R FROM MEGASERVER; '
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39872563352165826)
,p_name=>'P7_LEADER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39871401199165824)
,p_item_source_plug_id=>wwv_flow_api.id(39871401199165824)
,p_prompt=>'Leader'
,p_source=>'LEADER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CHAR_NAME d, ID r FROM CHARS',
'MINUS',
'SELECT CHAR_NAME d, ID r',
'FROM CHARS',
'WHERE ACCOUNT!=:P7_ACCOUNT OR',
'SERVER!=:P7_CHARACTER_SERVER'))
,p_lov_cascade_parent_items=>'P7_ACCOUNT,P7_CHARACTER_SERVER'
,p_ajax_items_to_submit=>'P7_ACCOUNT,P7_CHARACTER_SERVER'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39872984779165826)
,p_name=>'P7_BASE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39871401199165824)
,p_item_source_plug_id=>wwv_flow_api.id(39871401199165824)
,p_prompt=>'Base'
,p_source=>'BASE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>32
,p_field_template=>wwv_flow_api.id(39775135364165627)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39873354314165826)
,p_name=>'P7_IN_ALLIANCE_WITH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(39871401199165824)
,p_item_source_plug_id=>wwv_flow_api.id(39871401199165824)
,p_prompt=>'In Alliance With'
,p_source=>'IN_ALLIANCE_WITH'
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
 p_id=>wwv_flow_api.id(45714479687330528)
,p_name=>'P7_ACCOUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39871401199165824)
,p_prompt=>'Account'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACCOUNT_NAME d, ACCOUNT_NAME r',
'FROM USERS;'))
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
 p_id=>wwv_flow_api.id(45714508717330529)
,p_name=>'P7_CHARACTER_SERVER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39871401199165824)
,p_prompt=>'Character''s server'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONTINENT d, CONTINENT r',
'FROM MEGASERVER',
'WHERE CONTINENT IN (SELECT SERVER FROM CHARS WHERE ACCOUNT=:P7_ACCOUNT)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P7_ACCOUNT'
,p_ajax_items_to_submit=>'P7_ACCOUNT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(39775021498165627)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45714225948330526)
,p_validation_name=>'Name taken'
,p_validation_sequence=>10
,p_validation=>'NOT EXISTS(SELECT GUILD_NAME FROM GUILDS WHERE GUILD_NAME=:P7_GUILD_NAME);'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Guild name already taken!'
,p_when_button_pressed=>wwv_flow_api.id(39878061960165829)
,p_associated_item=>wwv_flow_api.id(39871786395165824)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45714718653330531)
,p_validation_name=>'Leader already leads'
,p_validation_sequence=>30
,p_validation=>'NOT EXISTS(SELECT GUILD_NAME FROM GUILDS WHERE LEADER=:P7_LEADER)'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'This character already leads a guild!'
,p_when_button_pressed=>wwv_flow_api.id(39878061960165829)
,p_associated_item=>wwv_flow_api.id(39872563352165826)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(45714847186330532)
,p_validation_name=>'Leader already leads edit'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vLeader GUILDS.LEADER%TYPE;',
'    vExists number(1);',
'BEGIN',
'',
'    BEGIN',
'        SELECT LEADER INTO vLeader FROM GUILDS WHERE GUILD_NAME=:P7_GUILD_NAME;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            RETURN TRUE;',
'    END;',
'',
'    SELECT COUNT(*) INTO vExists FROM GUILDS WHERE LEADER=:P7_LEADER;',
'    ',
'    IF vLeader != :P7_LEADER THEN',
'        if vExists=1 then',
'        return FALSE;',
'        else',
'        return TRUE;',
'        end if; ',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This character already leads a guild!'
,p_when_button_pressed=>wwv_flow_api.id(39877638859165829)
,p_associated_item=>wwv_flow_api.id(39872563352165826)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42984317631070010)
,p_validation_name=>'Edit'
,p_validation_sequence=>50
,p_validation=>'EXISTS(SELECT * FROM GUILDS WHERE GUILD_NAME = :P7_GUILD_NAME)'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Name uniquely identifies an guild and thus should not be changed!'
,p_when_button_pressed=>wwv_flow_api.id(39877638859165829)
,p_associated_item=>wwv_flow_api.id(39871786395165824)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39875778238165828)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39875632982165828)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39876500334165828)
,p_event_id=>wwv_flow_api.id(39875778238165828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39878810107165830)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(39871401199165824)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Guild'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39879224982165830)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39878485477165830)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(39871401199165824)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Guild'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
