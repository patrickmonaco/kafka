prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>57661400528193879611
,p_default_application_id=>149408
,p_default_id_offset=>0
,p_default_owner=>'MGEN'
);
end;
/
 
prompt APPLICATION 149408 - Kafka
--
-- Application Export:
--   Application:     149408
--   Name:            Kafka
--   Date and Time:   09:19 Tuesday February 13, 2024
--   Exported By:     PATRICK.MONACO
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     14
--       Items:                   40
--       Processes:               17
--       Regions:                 29
--       Buttons:                 15
--       Dynamic Actions:          7
--     Shared Components:
--       Logic:
--         Processes:              1
--         App Settings:           2
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             10
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                10
--           Region:              21
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--         LOVs:                   3
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          2
--   Version:         23.2.1
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MGEN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Kafka')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'KAFKA')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'958E581578A6EEBF19FCA97131A1EC3661D5B6CD3AB6A026AC8DF0EF6C6EF359'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(56273078285429548066)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Kafka'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.3.3'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_default_error_display_loc=>'INLINE_WITH_FIELD'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Kafka'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240213091931'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>18
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(149408)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(56273079031450548066)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(56273442854993548138)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--default:t-TreeNav--classic'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(56273567956534548266)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(56273442459821548138)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/remote_servers/kafka_rest_proxy_endpoint
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(54917057579491735929)
,p_name=>'Kafka-Rest-Proxy-Endpoint'
,p_static_id=>'Kafka_Rest_Proxy_Endpoint'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('Kafka_Rest_Proxy_Endpoint'),'http://xxx.ddd.dd:ppp/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('Kafka_Rest_Proxy_Endpoint'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('Kafka_Rest_Proxy_Endpoint'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('Kafka_Rest_Proxy_Endpoint'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('Kafka_Rest_Proxy_Endpoint'),'')
,p_prompt_on_install=>true
);
end;
/
prompt --application/shared_components/data_profiles/records
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(56276908282360932140)
,p_name=>'Records'
,p_format=>'JSON'
,p_has_header_row=>false
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56276908482826932141)
,p_data_profile_id=>wwv_flow_imp.id(56276908282360932140)
,p_name=>'KEY'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'key'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56276908710796932141)
,p_data_profile_id=>wwv_flow_imp.id(56276908282360932140)
,p_name=>'TOPIC'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'topic'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56276909090834932141)
,p_data_profile_id=>wwv_flow_imp.id(56276908282360932140)
,p_name=>'TYPE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'value.type'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56276909303401932141)
,p_data_profile_id=>wwv_flow_imp.id(56276908282360932140)
,p_name=>'VILLE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'value.ville'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56276909681483932141)
,p_data_profile_id=>wwv_flow_imp.id(56276908282360932140)
,p_name=>'OFFSET'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'offset'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56276909906445932141)
,p_data_profile_id=>wwv_flow_imp.id(56276908282360932140)
,p_name=>'PARTITION'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'partition'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62581131655470133492)
,p_data_profile_id=>wwv_flow_imp.id(56276908282360932140)
,p_name=>'VALUE'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'DOCUMENT_FRAGMENT'
,p_selector=>'value'
);
end;
/
prompt --application/shared_components/data_profiles/topics
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(56294442017480315638)
,p_name=>'Topics'
,p_format=>'JSON'
,p_has_header_row=>false
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56294442223478315639)
,p_data_profile_id=>wwv_flow_imp.id(56294442017480315638)
,p_name=>'TOPIC'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'[0]'
);
end;
/
prompt --application/shared_components/data_profiles/subscriptions
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(56324207180833745947)
,p_name=>'Subscriptions'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56324207307429745948)
,p_data_profile_id=>wwv_flow_imp.id(56324207180833745947)
,p_name=>'COLUMN_1_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56324207636473745948)
,p_data_profile_id=>wwv_flow_imp.id(56324207180833745947)
,p_name=>'COLUMN_2_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(56324207994884745948)
,p_data_profile_id=>wwv_flow_imp.id(56324207180833745947)
,p_name=>'COLUMN_3_HIREDATE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'hire-date'
);
end;
/
prompt --application/shared_components/data_profiles/clusters
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'Clusters'
,p_format=>'JSON'
,p_row_selector=>'data'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003589930525472863)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'RELATED'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'acls.related'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003590298503472863)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'KIND'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'kind'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003590574262472863)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'RELATED2'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'topics.related'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003590853905472864)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'RELATED3'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'brokers.related'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003591182361472864)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'SELF'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'metadata.self'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003591422602472864)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'RESOURCE_NAME'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'metadata.resource_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003591781663472864)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'CLUSTER_ID'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'cluster_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003592092815472864)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'RELATED4'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'controller.related'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003592393997472864)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'RELATED5'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'broker_configs.related'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003592662644472865)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'RELATED6'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'consumer_groups.related'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59003592935640472865)
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_name=>'RELATED7'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'partition_reassignments.related'
);
end;
/
prompt --application/shared_components/data_profiles/topics_v3
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'Topics_V3'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'data'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160119675460326188)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'KIND'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'kind'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160119986660326188)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'RELATED'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'configs.related'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160120212149326188)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'SELF'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'metadata.self'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160120507806326189)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'RESOURCE_NAME'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'metadata.resource_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160120801762326189)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'CLUSTER_ID'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'cluster_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160121111628326189)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'RELATED2'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'partitions.related'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160121422323326189)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'TOPIC_NAME'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'topic_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160121758508326189)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'IS_INTERNAL'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'is_internal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160122014208326189)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'PARTITIONS_COUNT'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'partitions_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160122323344326189)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'REPLICATION_FACTOR'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'replication_factor'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(59160122655758326189)
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_name=>'RELATED3'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'partition_reassignments.related'
);
end;
/
prompt --application/shared_components/data_profiles/lags
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'Lags'
,p_format=>'JSON'
,p_row_selector=>'data'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777026841069156201)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'LAG'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'lag'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777027196229156201)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'KIND'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'kind'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777027472777156201)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'SELF'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'metadata.self'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777027712521156201)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'RESOURCE_NAME'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'metadata.resource_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777028057960156201)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'CLIENT_ID'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'client_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777028320241156201)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'CLUSTER_ID'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'cluster_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777028696793156202)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'TOPIC_NAME'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'topic_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777028947368156202)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'CONSUMER_ID'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'consumer_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777029227262156202)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'INSTANCE_ID'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'instance_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777029532545156202)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'PARTITION_ID'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'partition_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777029840636156202)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'CURRENT_OFFSET'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'current_offset'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777030105716156202)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'LOG_END_OFFSET'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'log_end_offset'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(62777030412054156202)
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_name=>'CONSUMER_GROUP_ID'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'consumer_group_id'
);
end;
/
prompt --application/shared_components/web_sources/records
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(56276910297114932145)
,p_name=>'Records'
,p_static_id=>'records'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(56276908282360932140)
,p_remote_server_id=>wwv_flow_imp.id(54917057579491735929)
,p_url_path_prefix=>'consumers/{group}/instances/{name}/records'
,p_catalog_internal_name=>'MAIN-CATALOG'
,p_catalog_service_name=>'Records'
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(56276910828473932146)
,p_web_src_module_id=>wwv_flow_imp.id(56276910297114932145)
,p_name=>'Accept'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/vnd.kafka.json.v2+json'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(56277337461948940886)
,p_web_src_module_id=>wwv_flow_imp.id(56276910297114932145)
,p_name=>'name'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_value=>'patrick'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(62778428036058667713)
,p_web_src_module_id=>wwv_flow_imp.id(56276910297114932145)
,p_name=>'group'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(56276910466777932146)
,p_web_src_module_id=>wwv_flow_imp.id(56276910297114932145)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/topics
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(56294442557214315639)
,p_name=>'Topics'
,p_static_id=>'topics'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(56294442017480315638)
,p_remote_server_id=>wwv_flow_imp.id(54917057579491735929)
,p_url_path_prefix=>'topics'
,p_catalog_internal_name=>'MAIN-CATALOG'
,p_catalog_service_name=>'Topics'
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(56294442706305315640)
,p_web_src_module_id=>wwv_flow_imp.id(56294442557214315639)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>true
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/subscriptions
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(56324208227559745952)
,p_name=>'Subscriptions'
,p_static_id=>'subscriptions'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(56324207180833745947)
,p_remote_server_id=>wwv_flow_imp.id(54917057579491735929)
,p_url_path_prefix=>'consumers/{group}/instances/{name}/subscription'
,p_catalog_internal_name=>'MAIN-CATALOG'
,p_catalog_service_name=>'Subscriptions'
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(56324210035074745954)
,p_web_src_module_id=>wwv_flow_imp.id(56324208227559745952)
,p_name=>'name'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'patrick'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(56324210438618745954)
,p_web_src_module_id=>wwv_flow_imp.id(56324208227559745952)
,p_name=>'Accept'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/vnd.kafka.v2+json'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(62778848858037185308)
,p_web_src_module_id=>wwv_flow_imp.id(56324208227559745952)
,p_name=>'group'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(56324208454838745953)
,p_web_src_module_id=>wwv_flow_imp.id(56324208227559745952)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(56324208847798745953)
,p_web_src_module_id=>wwv_flow_imp.id(56324208227559745952)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(56324209292601745954)
,p_web_src_module_id=>wwv_flow_imp.id(56324208227559745952)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(56324209685686745954)
,p_web_src_module_id=>wwv_flow_imp.id(56324208227559745952)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/clusters
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(59003593219782472865)
,p_name=>'Clusters'
,p_static_id=>'clusters'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(59003589763991472862)
,p_remote_server_id=>wwv_flow_imp.id(54917057579491735929)
,p_url_path_prefix=>'v3/clusters'
,p_catalog_internal_name=>'MAIN-CATALOG'
,p_catalog_service_name=>'Clusters'
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(59003593896286472866)
,p_web_src_module_id=>wwv_flow_imp.id(59003593219782472865)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(59003593488836472865)
,p_web_src_module_id=>wwv_flow_imp.id(59003593219782472865)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/topics_v3
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(59160122905175326192)
,p_name=>'Topics_V3'
,p_static_id=>'topics_v3'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(59160119329545326184)
,p_remote_server_id=>wwv_flow_imp.id(54917057579491735929)
,p_url_path_prefix=>'v3/clusters/{clusterid}/topics'
,p_catalog_internal_name=>'MAIN-CATALOG'
,p_catalog_service_name=>'Topics_V3'
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(59160123557804326196)
,p_web_src_module_id=>wwv_flow_imp.id(59160122905175326192)
,p_name=>'clusterid'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'kHEMLrR9SwaP2TKR0dy0ng'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(59160123952766326196)
,p_web_src_module_id=>wwv_flow_imp.id(59160122905175326192)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(59160123143273326193)
,p_web_src_module_id=>wwv_flow_imp.id(59160122905175326192)
,p_name=>'ListTopics'
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(59160455111335026767)
,p_web_src_module_id=>wwv_flow_imp.id(59160122905175326192)
,p_name=>'AddTopic'
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'   "topic_name":"#TOPIC_NAME#"',
'}'))
,p_force_error_for_http_404=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(59531156602757417333)
,p_web_src_module_id=>wwv_flow_imp.id(59160122905175326192)
,p_web_src_operation_id=>wwv_flow_imp.id(59160455111335026767)
,p_name=>'TOPIC_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'test'
);
end;
/
prompt --application/shared_components/web_sources/lags
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(62777030729985156204)
,p_name=>'Lags'
,p_static_id=>'lags'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(62777026641359156199)
,p_remote_server_id=>wwv_flow_imp.id(54917057579491735929)
,p_url_path_prefix=>'v3/clusters/{clusterid}/consumer-groups/{group}/lags'
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(62777031362363156206)
,p_web_src_module_id=>wwv_flow_imp.id(62777030729985156204)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(62777183349589166796)
,p_web_src_module_id=>wwv_flow_imp.id(62777030729985156204)
,p_name=>'group'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(62777184695779168509)
,p_web_src_module_id=>wwv_flow_imp.id(62777030729985156204)
,p_name=>'clusterid'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(62777030903907156206)
,p_web_src_module_id=>wwv_flow_imp.id(62777030729985156204)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(56273079031450548066)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56273578638952548281)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56273580111331548283)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Subscribe'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_icon=>'fa-cart-check'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56283109615252081397)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Produce'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-feed'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56277591121947632408)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Read'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-download'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(59543902781639584792)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Polling'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(59241597907246202994)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Topics'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tiles-3x3'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56659426834687374899)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:::'
,p_list_item_icon=>'fa-abacus'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(56273567956534548266)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56273582849236548286)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56273583355922548287)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(56273582849236548286)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56273583753686548287)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(56273582849236548286)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(56273581744130548285)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56273582140950548286)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Subscribe'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_icon=>'fa-cart-check'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56337194972998674979)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Produce'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-feed'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56337195222989674979)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Read'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-download'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000003E7494441545847B59757A855571086BFFBA4A23E28D8052BB12236EC0F8AC1461263248A05ACD8B0172CA851B0603446348851';
wwv_flow_imp.g_varchar2_table(2) := '8C820604B1A06043B16041117B23C45EA210453486F81074FD300BD6DD77ED7DEEE1E8C0E1725799F54FF96766171197DAC044A029F0103805EC4C391B2E2F02EA00D5807BC0356063D6BDA2C8662DE04964BD0F703043D953F758CDC8FE11A067DABD18';
wwv_flow_imp.g_varchar2_table(3) := '805D0EF977C058433F06F815F8D301680FBC8A285B0D4C03F6DB9D0BC060600A501718E93CB325062206E039F03F204F78F1D60D057E4F28AAEEC0FE656BF58007C1FE707BF832D0BAB40074B80AD004780B54046E1BA07EC0DE84A20ECEC5E79CA55B5D';
wwv_flow_imp.g_varchar2_table(4) := 'BE8C883C721FA80A942F2D8079C052603BB01918E5DC2FCB5F034ACE770945F581BBC04DA07962AF06F0CCBC22EF949058081A008AE937C1E9BF0101DB94924CB252B11E6DA0FDB17DC0D7CEFDFADBB7B400FC3959BD0D58EC1644AF2CD1FE0F76600FA0';
wwv_flow_imp.g_varchar2_table(5) := '445EEB7E956DAD1B70225F005D81E33900C8FD6BCCCA330EC407A04BF0D03F2E64B3800D69E86321D0D9B2C020E037032005624728DFDBE3E2BEF26536F02FF0AD7B50CC502DB90E5CCD725D0CC00AC7F5C90622BC2BB74E02FEB3C7F4A06489A3ED821C';
wwv_flow_imp.g_varchar2_table(6) := '214ADD4E02D8E12837D04EABF4DE72D6350486D89AE826167CE94AB512736AA42EE485250420653FDB6D71FB7CA0493D4134F3A23D5548D5FA82240470D195D236564C545492D2D9597EDA16D372276F30A122D5F84A40B29C864AEF008D5C676C66E1C9';
wwv_flow_imp.g_varchar2_table(7) := 'FBC1E48510C04BE3AD32F8458A6665740BABEB2AD9054B0840716DE7A8D3DF3DB23BA25979A03095B3BA2ECA152C218039C072409D4F353F2937CCF55A57495612162C218032C05973AF8AC83A407D5D2E57175465542BEE647972C53519B5DBCC42930B';
wwv_flow_imp.g_varchar2_table(8) := '61329BD5BD347CA88124E5472B406D8185C199717627D75BD1FD343AC95AFDD460D48C04CA0F1D5ED13260AEFDA36947534FDE92C567DFE1B2BAE157C02AA3A6AAE64A47CF014047D71314A2930E5166272D14802CAE00FC020C4B315F034938DE153B16';
wwv_flow_imp.g_varchar2_table(9) := '03A009F6A720E37541657886B3EC70CA231A463494A8E7AB87E8A762A58E39C14AFCF4D8DD1880A34077EB0587805E360D1FB32614D323D7CFB4516E7E7040C0C42C25772B0B4BA607FC0CF7DEE876C9682925A2A97A7F3219A5F08003DC3BA58C2B4145';
wwv_flow_imp.g_varchar2_table(10) := '578DED1A5E3201F8AEA70412622F2ABB2D337A807F24367A296C3DCC932542980C8126A14736967B657E347B0C7C610349D210CF98F5C604FF6DE0EF2A1135E6BFC9E501EDCB559A8A254A2A2991A40E96B6EF3F5E1422592A6FAAB748C6A7CD856934D4';
wwv_flow_imp.g_varchar2_table(11) := '2798E2D618500B565916CF7389FF44F3E7FE30162881A3F2C9068B40BB72455E5318E4417DD0A4CAE70090CB4BC5F63F0208DAC421F89E4BC50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(56273569098651548269)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE9000017AB49444154785EEDDD07F02D4B5106F0C69C151523082630828A183007400515443120A098001573CE39218209C50C66104454';
wwv_flow_imp.g_varchar2_table(2) := '440503987300CC9831E79CCFEF315BF577EF6C9E3D3BE7BDE9AA5BB7DEBB6767277CDBD3FD754FCF8DA2499B810D3370A30DCFB647DB0C44035003C1A6196800DA347DEDE106A086814D33D000B469FADAC30D400D039B66A00168D3F4B5871B801A0636';
wwv_flow_imp.g_varchar2_table(3) := 'CD4003D0A6E96B0F3700350C6C9A8106A04DD3D71E6E006A18D834030D409BA6AF3D5C3B80F4EF7923E28522E2B922E25F23E29F23E2BF2E68E99E3B225E20FD79CE88F8B788F897F4F7FF5CD038B25DAD114026FCF611F14E1171972B136F00FF9D26FE';
wwv_flow_imp.g_varchar2_table(4) := 'C911F19D11F19488F88F0A17E12522E28E11F1EE11F13A110138CF11715DF01A68FCF98788F88188786C44FC6C44FC6785E398EC524D00A265DE26223E2222DE62B2E7CFFEC14F44C45744C413D2821CF945D3942F75D22E1F9B8073939963D0E75F8F88';
wwv_flow_imp.g_varchar2_table(5) := '8746C4E323E2AF22E27F673E7BF8CF6A01D04D4F9AE5E323E2FD22E2F916CE0A0DF4DDA7E73E3F227E257DDD0B9BD8F4737378F388788F88B84F44BCDACAD66C6D4F8A888745C44F45C4DFAC6CE7AC8FD50020EAFE9B92F6590A9E6EB280C8E47FD4E9EB';
wwv_flow_imp.g_varchar2_table(6) := '7FC6596730E24D4FDBCF279DDEFF6611F18205DEFDACB4AD7D6144FC4181F6766DA20600D9FF5F3FD9075B06CB3ED2D67B45C4EF6F6968C1B3DE65EB79F164E32C7874F4A73E881F8B88F78C88BF2ED5E81EED1C09209EC95726B55F726CD4BFADE4B74B';
wwv_flow_imp.g_varchar2_table(7) := '36DA6B8B417CBB64B3CCB575D674E79111F141C9FB5CF3FCEECF1C05202EB989F98211B5CF98FCA388F8B36420DBEA5E26226E16112F3A3233BEDE2F3B19A29F965CFE3D26F1554EFDF8BA8878F389C6510EB6A13F3E39077F1F11FF9EC66B2CAF18112F';
wwv_flow_imp.g_varchar2_table(8) := '3F43737D7A447C7144FCD31E03D9DAE651007AA588F8EA64F7F4FBC003F9CD13F7F3A0931BFFF327A0B109FE316D132F7BFAEA6F9B0CEE5B8C0CFE69A76DEC7DD2F35BE7A8FF3C3BC7A23E20510CB9F66DA7FA4EC3B2C90088DBCE50F6FC4B4684FEBF63';
wwv_flow_imp.g_varchar2_table(9) := '32BE7D1843F2B711F10111F15DA50752A2BDA30084E3F986048AFE387023EF9BF6FE1C37427BE156BE3422DE786012108D34101096E689DEE864B37DEF49CBD12239D1E7EF386996CF8C88DF9DF00A6DE3AF97A8885B0FB4E783322734368D5C951C01A0';
wwv_flow_imp.g_varchar2_table(10) := 'E73FB1CA9F7DFA223F3233135C576ADD973A25B68F6F4DBFCFFDF6FB23E2BD23C2175C4A909CDF1211EF36D0A02D0AC179EF852F7C83042260625FF5C5767EFF8878CC0134C5E8508E0010F58D7DE5FE5E159AE21E11F1B80593CFD5FD9881DFFF65DAEE';
wwv_flow_imp.g_varchar2_table(11) := '4A7EB5D865A4656E91D93BB66554C21A019EAF4AC679EE792423E7A0E407B1A69FFFEF992300F47211F1D3C918BEDA1976C21B46C49F2E18D53B271271E8115B1D72B194309CEF3BD0D80F27CDC3665B2B6CA24747C4F3641AF8BBC4D0FFEADAC6F778EE';
wwv_flow_imp.g_varchar2_table(12) := '0800F1A250F72FD21BD0CF45C49D2382E6982BB74C06F7D0EFEF70D27416B68400BED049CE78171CA579BE7663A0D716F93523D4C6279E82CB9F576230A5DA38024016E0999901AC51D10CEAB120A42DF1518526EB6E11F1F511F16299F67C10BCBE5F28';
wwv_flow_imp.g_varchar2_table(13) := 'F02E8C36561D98FA8228A5A5AB919A0064F2DFE1E41EFFC582D979AD88F8B591DF5B8CA72E686FECA70C726EF90BF77EC44B62DC72B54BD82788491F530E28BF1511B72A349E22CD1C01A05738851B4C84E8F55541180A69FCC98291BDEB8886E11101D8';
wwv_flow_imp.g_varchar2_table(14) := 'EF2C686FECA7F74BB4403FDEC5F817C8451B941000FDF2014FCEC7F5D2255E52AA8D2300E40BC3A3705DAF8AB406A91058D7B9C2A5168FCA09752F9F68894D35F6DE8F4EDC0E1AE2AA20393F3822841D4AC818CD61BBCE19D825DEBBAA8D2300E40B0692';
wwv_flow_imp.g_varchar2_table(15) := '0F1C08A00A1320E0C64482D603139F848CEB8B6DE5E1C9B0E55E97900F49A197FEFBB48F4A90865142CC0F7A02D3DD17E18CFE165AE29DABDB38024038145A43BC2A679072BB918C5C7DDE4D5F7CA16F9FB4C16B0E8C9CCBFBA189682C956476CF6403F5';
wwv_flow_imp.g_varchar2_table(16) := 'BD47AC37F0F0C24A64158AF3A10BEE9E19DB1FA6DCA3D50B5EFAC12300640C92AE8432840572DA0327F46D27B79E6BFFF4C40DBD727A4E2CCCE4B2A58604F884437EA3E08461BE19CBB910C68FA4F795C8DF111793CA81A2E88B8F0BB7558D1C05205B90';
wwv_flow_imp.g_varchar2_table(17) := 'EC435B9954D69C304E25D1FBE3CB66744B38A381722E6ED706354F1BF88A05354B8974D55F1C089D000EC002D256A1E924D899A3BE60AA8534AA91A30064020001F126AE340688259365BB12C8044EC02B2D5267B1DF3979C829708BE8DBF25EF60FED43';
wwv_flow_imp.g_varchar2_table(18) := 'CBF6C5C780687D62E9416D69EF4800E93797940B0C445BD341D9224E6B30CE4B6C25B979A5659089399182C2F0D58735C2F6F9D48120B3F6A4A83874F0E76B1ADFEB99A301645C727CB8C18838DBC41A91F62986440B94B47BFA7D1108460F4806CB097B';
wwv_flow_imp.g_varchar2_table(19) := 'EDAE2BB22131EAB65D5C529F26F01E9AD5E913070F728EC59A392BF24C0D003210938685C6B5E40CEBB1C10A2E7ECE895792BEC1A5DEFB480C2DF119231D5AAA89D0029F9C6889212D8C78F5813907B7F7F81601AB16005DED34FB45D8008B9C4B563781';
wwv_flow_imp.g_varchar2_table(20) := 'C83B39CFB2F4B0B6FEFB5C32140CBEFA7EF93BEC3BEEBD1C275AE32A9D40E3701E8CF153D221C4A1FEDB9A0558714DA538AD62735523800C8EC7652BE075F4B922C966BC37F9D4E7048E7EF102DF2E2DBAFC9D29F9E594DA6ADBB3CD7639D12888374939';
wwv_flow_imp.g_varchar2_table(21) := 'D53E9231D1868F8A07589DD40A20130540B8A21C80E42403D03985E6C17E73B3D96D4B8407D59D87A77972764EAE3DA09323E4A44995D200346F595E3D9DFF72E4FA5CB12874C05B26A37D5E2F0FF85503D0F8A4DBB2A4847CC929EA3F1436D102BBCCD6';
wwv_flow_imp.g_varchar2_table(22) := 'EAF75BE794ADC431401862D4AB96AD83DD7370476F61B6ACF74FDB562E66D78DDDF624C420CF5BCE34C0AD1546B2AC478635BBA97A6900BA7689841030C17819209EDAB21C02F8A2948DE8BC9B202E4A622C56D77F2BAD03843C374CF354364235C06A00';
wwv_flow_imp.g_varchar2_table(23) := 'BA7629B0E28E1D0103777B487854DC74E7BF44FF3B7E069723588CB5967570E391369C56C5EDC8DB76F60B702EA978D6E6FDBAF497C07DE7A19874C96016B29F3E61E1044AF13F92C5BA80EB96B40D2926F26CE4FC78E798008A9C6EAC377E66EC0C1B9B';
wwv_flow_imp.g_varchar2_table(24) := '8836C2F760D9814B4A06A02007A5F196480129BD0EB3DBAB450301893485B74A27355F236D0143DB8745041EE9AA54FF0F2557579C6829534BCB60BF8553DE65C6964563381921E605CC3768A9014088390BF7B629592A77686F4A2300CE4FA6789898D8';
wwv_flow_imp.g_varchar2_table(25) := '92AFFA5E89E5B5ED8C6505202DBB4256625E4D0AB89C5B265182981C6889F134D098BD31E73DB630B940BC21059FA692F3256E7D588AA0F7B7C9FEFB24FC3394BFF1522A87CD99B012BF39420375DC0A1BC256B587FC4CDA927E2973969C9765BB64FC72';
wwv_flow_imp.g_varchar2_table(26) := 'BBC7800B946C960F5F78E47A8F3155D9E6B901241D0241E6CFD270C0D209143B52D14299954EF039726A44BFA752436D5992BB3EB7E650C2D24929FDFB73020831271542D9B6ADC96373E7414E353210B3EBB4072F8B9BEE98F298387FC5CBB365952CCE';
wwv_flow_imp.g_varchar2_table(27) := '30B7DF17F3BB730148C916E100C4DCDCF4557607EDE1D8B00C436EB07082C387389AB9A2C0937C21F934EA094D1183B81940638CCF293333B71FD7CBDF9D03400063CBC2AF8C9D691212B06D20D59CC8F0B7AA5E7DD19E54089A4CA4DA41C5AD06B87748';
wwv_flow_imp.g_varchar2_table(28) := 'E2B7ED31AC2F228C500322CF01207580E411BFEAC88001474181479C78A0EF99799A82BB2FEEA49813D2716D3AAC6E39D3AE58157E67CA7BAB61DDAAE9C3DE00E21E03C458E5794C327B43C93A8BB79408948C2E83D1898829DB2637F1EAF9C82D7234F9';
wwv_flow_imp.g_varchar2_table(29) := '228A7B57839E33F040EC0EF1A2DC19A76E1E90883FB8315D5308049BAC94CB92B2BBDC7CDBABACBF1B3CABBC06987B6A20449D00E16D063A66C11089344F2961A42BB8903B2F7FF51D8C63AC32F00884365939037B0288F679F0C0C953DB946294781A5E';
wwv_flow_imp.g_varchar2_table(30) := '4F4961C700E65048446A298FD0D9FCAACE58959C8473B5B51780D83EB62E1790E41612B72278F97D3B541D65AC03E71051A806232FEE5CD7219C6B2D0F79CF5E0052F358427CEEE482F0C0B7A7185469ED6312B9F95C71DC4F8EF3612803B6087E938D33';
wwv_flow_imp.g_varchar2_table(31) := 'B017801412C7E2E692A9043CDD0926FB6E2F411D78BF806D5FD85EE26042144D36CEC01E00D2A6F081024F39E1362B9552AAF45CEE1D38211A5032574EBE39650C5E54F6DFC6B5DEE5F13D00C465170A106DCF89F854BFBCDD1E83F37EFDC85108B82955';
wwv_flow_imp.g_varchar2_table(32) := '554B14C5DCA3EF17D3E61E0062833886CB06C989AD45BEF0DEA2CA99F049EE105FC982507B8FA3EAF6F70010524FBA843F3991EC750EFBC385B7B6D15CB2182D4803B5CCC28DF0DC03403C1F6185A1B2B7DCFB5C01C98D43B9E671348162953952D15161';
wwv_flow_imp.g_varchar2_table(33) := '0092D8DE64C30CEC01209171197C524073F2E30B6E65DE30B4EBC0C3DBCB45EA854E0068CBBD165BFA76BD79760F00210E31CCAABAE7448AA89C9E52F59B73EF9036220340BE754EE4FAB0C3AABC05F092D0B507808C5F749C1B9DFBFAC59E2C9E58D45E';
wwv_flow_imp.g_varchar2_table(34) := '8285F6FE1C1B2D8C8283520AAFC9C619D80B40EE79B080AA5AF4C5911BF76A29D7B647C124A0B53DA9219433A0BD532534B5879A6C9C81BD00A478260029089E933DEF34C57E4B0E73DE2C2702A84E635475EFD6C6753CECF1BD00C40E5204EAE306E251';
wwv_flow_imp.g_varchar2_table(35) := '186046B69042E9BC63A9AEB8A6A1DC67E5E794EA7510B1C9C619D80B40BA25C14B0DC3A12C4149F3D2514B06359D337391CB5015D56EBA8451045CA5D1B644B20D20DA1340BAF5D0545F67A88B402432EEFCD55679EDD3D11D31AEA1DB8FFBED73E1798A';
wwv_flow_imp.g_varchar2_table(36) := 'B6DA9607BD72F6F706104D80F7B9E948FF907912C0E406AD096E1A837A3EF29AE55E8FA5CFF6BBE124864B7495ED95DEDA64E10CEC0D20DDB1550C0556FD7B572E85D784BB596A13491D51D1EB751782A79B2AF94972A215866A76518500E24A3B75A1D8';
wwv_flow_imp.g_varchar2_table(37) := 'D29476C010039B5895A33E39FB849BAE4D14815B04714E63E26C19A3DE69D8B10F06B1294EE74C5A23186702E91C1A4857107AEC0DFCD054F9163C91837D3F9AAE2D90C30C48A2FC22EBB643A560A4848CD52EF45E2EBB70862B9A804D09972910EBA79C';
wwv_flow_imp.g_varchar2_table(38) := 'E93DF395662E4FFD3F3B1780B8D46F9DC8BD25153980C9B931B60ACD0340FDBB568766196128A4D29DD2B87DBAC864889BEADAF14EA762510C80BCA5F259FD08D8D8C3730148377DF9B74B24DF949BBD7158D7814E914C25E83AC39CE6A3B1BA73F2639A';
wwv_flow_imp.g_varchar2_table(39) := 'C8316B1EA2365C1FD5646006CE09A0AE0B3C26895E3CA6B915DBE72EA085FFBD74E263885FF24EE9248C669554A7E600E044F673E7F4E7F6EB7AFBBBA9C9DB6BE00E1D0AA84AFA5271A34471041A83DD24596DEC2E796302227582C4E31CF11913DBA753';
wwv_flow_imp.g_varchar2_table(40) := '2468025749B52DEDCA6C1D05205D50A90C7818C48A23D04C6B345277CA14EB8D7352DB67AE78FF279CAA72A002C62A87D80655EEA0391F3FB7F11BC2EF8E045037BF0C6CB689D007439BA7864D1E3B9EEC3C99DA41AE02C0622B69C7F55EA31D7868F749';
wwv_flow_imp.g_varchar2_table(41) := '64A620F09848C2A789CE7DD14BB558AC0140FDC961DCDA56844172F93C4E9602999B9D4B8A002BF7FDE6135443978E82BD769BCED26A2225FB7C785B3502C8A48C25843992BC97170798EC229A70AC722BD0B82191813DF72A261F4677EB345E0BCDB046';
wwv_flow_imp.g_varchar2_table(42) := '631E0E9AAB1D6800BA763994E3533B5A5EF7D496A6FC9E108CF4919CC84DF231D892D95BB66A761EC3DC116B44A72B32C5E154AFDF72E3F321C06A00CA4F3B4D614B537A66AAF2197B4C7623E2B1BB10975D251F1B91892A001A6D5E65E16931DB216DE4';
wwv_flow_imp.g_varchar2_table(43) := '39752039024EAD9CFB26C6D5E06B001A9F3A9A832DA638E714032E9504887874C226AAC2AE115ACD55E8B21380B36A1BAB01687A896913E7DC24BFA9733D268C6ABFDF2A3C4A361620559D66D200346FA9D92EF74829BA4B4A0CCF6B3DFF2B9AC76D3E8E';
wwv_flow_imp.g_varchar2_table(44) := '892348AB941A01C44E10F854412CE7C6CB24140671EDF73945368072316C1477999E4B8C53D666BBB57964C6BB1C1F09F1264B7D9F311197923B046492C1189DE7B215B8F73C2FF94D53B518BB3170D7BBB414F13A1F6E975DC0B89E121A48C91C71BE73';
wwv_flow_imp.g_varchar2_table(45) := '8D73AA4FD7FD7B0D1AC835D84219EE46A759E656B2D77F409244EF023A6CF41EE7CC7213E9AE771C903E4FF5970691E928CC82C3622731C8D95334AC31FB7BCCDB134A3146E7D9AA4A763B1A406C0B8C2E97774D8D678BEBEBF6654ADDA091CEC1A52005';
wwv_flow_imp.g_varchar2_table(46) := 'B1D6A2FA436921169D5B8E0A10DC1D72CD5D3AE3A23D1563797B43ED09A330E47D30D5C89100F2E55A04478CA7BEE23913668BF085B251F6162EBAD31C435B2D4D285E26BB91C69912A0415ACA3D1ADBBE6D65C0568D1C0520FBBFF22BB681D237F7DC29';
wwv_flow_imp.g_varchar2_table(47) := 'D9477B4DB23993878D3CCCD940CEFECBAD1E2A2E31D52F1AC61886525CA4C10C31DF536D17FFF72300E49DBC2CC59F96A4B7CE1DBC3B4D2DB02A207B88AB15146718AAFC611B754C69E9E992AEAFB74889FDB21372A21A3F4AA10A390240687DC79E25BB';
wwv_flow_imp.g_varchar2_table(48) := '0F6D5DEC07F9C82ED45553DA57CDC89450AF7470AE7C7037A16C201AC0F6B887084DE85B2E4E26AE457B084BAC159A8796B105E6AADC8A99019723DA87CB110032F14F1CB90241A0D1F9302CAC49F2DF5C5F132B774836A3EDE10E03B3C7CDE5E2737B4B';
wwv_flow_imp.g_varchar2_table(49) := 'A77C78A52BA61E37E0C13A9F36756DF89C45BF55DAA6725A884DE5D23C751E0F97230074B75374FA3103230714CCEB1CED61ABE0B9E4BC16EEB2122F258E4CF7BBEA2A05291F7DA1F9C4CE4A1C0732261F898FA07F0C8A37E7B02623FE70390240BC24C1';
wwv_flow_imp.g_varchar2_table(50) := 'C69CB89C65EAD84DF71C4FC895064EA4F645845B895F9AAC74CE8DA0E93D33EFC414EBFB9294DA31003C30DD5FD637D4D9569F75A642A593003D02405251E53FF7851B2E3F7A6E8296E769021A21270F4A77B496E6859C199390DF17DB2626BDD49D6398';
wwv_flow_imp.g_varchar2_table(51) := '6E1F5B3FB18D96F6FF9D2A395C8E0090D31339039471E806C225852FD941162E275C5D5F71E9DC9A270F70318E1109C39402102D671BCB01C8FF37B6C3E50800F98272C79B51FD775FE85D6071E548E7849D75DF1DAE937A6CBA3CB8FF4E6917AAA2EDBD';
wwv_flow_imp.g_varchar2_table(52) := '85D99E19EA258CF5CD003C0240D23873711F5F367E630E73DB0D5C3C69A8DAAB4430793C5D96E0E6C94A0DB0AB7295F6691E87019C1DDB2AE80D015B4E429F503CC76535B3FB7F0480D447CC1188261E4D6F8B9B2B687FC4614E78732A7DACA93934F67E';
wwv_flow_imp.g_varchar2_table(53) := '1CD3D0D7CF39504074AB3819C2CBCA852DAABAAEEA08002976C040EC0B5B45E239E270AE8886E7AE8D920A6AFB1AA20BE6B69FFB1D0780239013E9A8A2EB5BEC202EBC13BB82B0B9EC46D5D410A9A5B6CA2D7371483A877B4D15FACEF137C0E5901F3B69';
wwv_flow_imp.g_varchar2_table(54) := '4A6C830CE8DC9DAC98623CD033A61A59F1EFB64D44A2704C4E5CF3E99E90B5DE9F50861BA48782AAA80B00AB428ED040534C343B48BC674C7023D2407822FD6AACB62C768ACA1A7BE4CE08C578F7D0350A22F1DEBD762B5380DD89909CE0B47C18005685';
wwv_flow_imp.g_varchar2_table(55) := '1C01200B2E12EF048364B2BE083F2801FC88811B950533D91AC093CB21B27DD822854BF61073669B120C763F6B4EB0D1C21AB650A19839E2BA72F615967948842F30F97B5C153AA78FD7FCE60800E9C42D939138B40DF09C9E9A4ADDC9E86358332C2D98';
wwv_flow_imp.g_varchar2_table(56) := 'FD5F8C68289D5491715ED2DC855B3371B410025342D9504058B624FB4CCACA984D640D5498554206913A945046B3A139F6FA30D6CCC3213650D751014184D8D451992503E3D2231745F1F716D983EA2902F698F03AC5EDD014B20A6CB17830EE397BC73C';
wwv_flow_imp.g_varchar2_table(57) := '200D058987844DE8C3109EA9AA4ED1511AA89B281984E23A7312CBA70021FFC7716444DFB944E84258C1B63A2518761E266D641BF7E128143A958D29BB40D1511E272FAF2A391A4026C3C43048B9F06BC404BBF78261EB34E79E5B57AE7F22E6F2B1F712';
wwv_flow_imp.g_varchar2_table(58) := 'B9D03C53998A559DC830E01A00449D334AD900EC9BA92AAEFD85E252030F10CD71FF4B2FB4AD480C8CE13FB60DAD79AFC4341E996DB03421BAA63FD73C530380BA4E51E95C54DA48B5304672CEA0A4611894EE3B95972CBDA206B973B2756EB6B1641F2D';
wwv_flow_imp.g_varchar2_table(59) := 'C389A04D15676037552B3501A89B2446A9A8BC5A3D40C5E3F1950B2222E79E99523EA47DD4766D37AFD276232F48FAEDD2F9051C7945C8425CD892B0CE21205B3AC0737652DF1CC0636033343B00298952B3D09E6258AA7408AE2A6E3E25781DE5FAD45F';
wwv_flow_imp.g_varchar2_table(60) := '946F84BA289D0837D58755FF5E3380560DA89287D871B66044A934570968524F1CA4E4B1F9086C4D3428B0A8C4212D858B5EA5AD3334AF0D409520EE52BBD10074A92B5749BF1B802A59884BED4603D0A5AE5C25FD6E00AA64212EB51B0D4097BA7295F4';
wwv_flow_imp.g_varchar2_table(61) := 'BB01A89285B8D46E34005DEACA55D2EF06A04A16E252BBD10074A92B5749BF1B802A59884BED4603D0A5AE5C25FD6E00AA64212EB51B0D4097BA7295F4BB01A89285B8D46E34005DEACA55D2EF06A04A16E252BBD10074A92B5749BF1B802A59884BED46';
wwv_flow_imp.g_varchar2_table(62) := '03D0A5AE5C25FDFE3FFD1447CDFFE1AD2D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(56273569394321548270)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900001D9D49444154785EED9D09B8455555C7FF4665884338A109168992A5A4A8995A9A438A134E983328396B0E488A20598AA0658E11';
wwv_flow_imp.g_varchar2_table(2) := '4E2482421A2A86690662A4686941A225A6A2841AA6388B9A969D9FEE5B97C77BEFAEB5E7F3DE5EDF777D207B587B9DB3CEDE7B0DFF75390D1A12D8C612B8DC0CD6BE97A4FB4ADA75E9B75BE0FB42499F5DFAFDA5A4B367B0A6DA2CEE21691F49D797B4CB';
wwv_flow_imp.g_varchar2_table(3) := 'D2EF5A927692F485A5DF45E19FCF94F41E49DFABCD6CCDF97A55001ED6ED25DD5DD22F3905F21949EF90F47792DEE8ECBB559A5F45D2AF4BBA6D78F16F1CB9B0FF92746A5084F74E1FA27323C7E9B65B6F0AF01B929E2069BF4C12FB80A4A3A72FDF1B32';
wwv_flow_imp.g_varchar2_table(4) := '8DD7FB30D796F4E8F0FB9902CC9E22E94F259D5660EC2643F6A200BF2CE9C9921E51480A7F23E94FC2D7ACD0144D87E5C57F8CA447492AF1E2AF5DDC89E1C3F2FEA6ABCE30790F0AC0433B727A41AF9E613DAB86385CD211AB1ACDECBFFF7EC5177FAD68';
wwv_flow_imp.g_varchar2_table(5) := '5E2DE9E992BE3A3399FD1FBBAD15E0E5929E58597827497A70E5394B4DF73A49FB971ADC38EE39920E94F4CFC6F65D356BA9001C4B7EB39134CE9074C74673E79A964BE9AFE51A2C711C2C45BF25893BC2ACA895023C49D24B1B4B8A63D7618D79889DFE';
wwv_flow_imp.g_varchar2_table(6) := '7395CEFA5EFE9E2AE925DE4E2DDBB750004C9CEF6CB9E8A5B9B198708E9D137D79FA78ECDC31C31CC94EE898BF4BB1565B01B047FF95A48523AB07393D7046FE823749BA7F0F425BC1C32D24FDE30CF8546D05385ED2C33A13CC3F49BA79673CADC7CE21';
wwv_flow_imp.g_varchar2_table(7) := '928E9A019FB0F8EDE9A372C3C9AC7D41EFFCD65400BCBA6F8F10C837247D30FC3E14FE32CCAF4CBB095F1AFEF2BB52C4D88B2ED8D05F95D0BF74D7DF9EC2405E9361128E4F1C3FFF5ED2C7259D27E962497B86DF2F4CA124FB4ABA6986B94E9774AFC94C';
wwv_flow_imp.g_varchar2_table(8) := '7A4986B18A0D515301F01EDEC9B91242190E9D4C7DE7AFE8F7F3C197F000E7F88BE63DEF02B70C2F6CE4D27ED80DE5798BE3EE8502F0F2A63AD6F8A8F071E9966A29C0239D97CDEF06E17B2F531CAFB8D45E3E42E2BDEE028471C4FA2D78E9F1B5FC6D84';
wwv_flow_imp.g_varchar2_table(9) := '3CE892C3C3CCF1920F4C97544B01084EBBAB510204B3ED6E6CBB51B34F4BFA39E718BC2404E0F544B1C746D6F007D3FFE025CE4144E4F20CAF133158D7BB400D05B86608AFB5CA8ED0DD4F591B6FD0EE7A923E1931466FD68B7749BA73C43A0E92F4E288';
wwv_flow_imp.g_varchar2_table(10) := '7E9B75B96EB833EC18316EB7BB400D0520C0EDCF8C427BA6A4E71BDBAE6A166335E1A5E1E5E9810E9876B1E32218E19EF5EE887ED62E3FB0365C6AD7ED2E5043014E96743F83D04864B9B524CEFF39887B00D18A7B3B0623318424911E084B0D17600F3D';
wwv_flow_imp.g_varchar2_table(11) := '6EE2FF159E0E116DD9A13F11D10F430547D3AEA886027CD498D4429C39B90039E9B5921EEE1CF08A92BEE5EC93BB3936F47F750E8A8F855DA306719FE34EE0212C4A394CB99E3957B6ADA1005F9374E5959CFCC8E4965B401CA988F9F110F1F4FFE1E950';
wwv_flow_imp.g_varchar2_table(12) := 'A0AD3756EAF321FB2BF5EEE459CACB261FC2EF383A7419855B5A0178F151000BFDA2A48F591A3ADA60CBF64628E20CC249D492DE161C52561ED839D9416B1247A17F907455E3A4FF1972918DCDEB342BAD00BCD4FF6258CA17A70788B5283771EEF47E15';
wwv_flow_imp.g_varchar2_table(13) := 'F12AE3716E49DF0CC9EA161EFEDA6162B68CE7698399F5D98E0EB709F7324797B24D4B2B80D58B59CA137B8588F33C31F6679515FBA6A393170D1A8395725ACEAC732EDA7979CDE99BF0F2BA6EFBD20A700D496C7D16C26A030A414EC2A5EF85490185C2';
wwv_flow_imp.g_varchar2_table(14) := '7B01CDC933E11C7FEE18B035BF1EA723162A2C55DD50690560A15F3706AA610205C5212711EACCE5CB43AD2FC19E0B30C7CB1B791657A02DA81B8F378EFBD680F1646C5EBE590D05205714D48755844501E4869CE43DA332379ECEEFE464C239D6F34200';
wwv_flow_imp.g_varchar2_table(15) := 'A0A51B40605CF45B12F9C0C71A19C02FC33DA01BAAA100D61C00BC9EB96151F8FAB30B5809A4395CFE2D095330E1CF16C2C36E6D6B192FA60D2FF4FB8C1D3148603DEA866A28C06327F3D731861513F78F1B9FD8FF1C84358798744F9E0067EF07E5983C';
wwv_flow_imp.g_varchar2_table(16) := '610C72260882B3D01F4EC927CFB0342CD806381BAC7816C2BAE5791E963193DAD45000CEF656AB0A312CDE9C818D04C0CBEF457EF85D492F4C92687A67FC16D663CD50804479D75000420B88CC0494D54239E259ACBBCE5A7EEE32C52301D7D2923C1ED6';
wwv_flow_imp.g_varchar2_table(17) := '71044A7C52351400165F34798481CCB0124E31EBB6BA764C8FE975B92FE75800655BD3C19313EC8F8C4C8C4BB051501B35ABA500C4837BBDAB31EE7DCC7198E56288BE96BB4ACCD89E3E004C5951AD09348C457EF6F0B4595B0FBADFB634832E84670D8B';
wwv_flow_imp.g_varchar2_table(18) := '5E1636595AC4E8634AFDF70D9E02569B9B841D06CF640C3136594FD6B8A59839AC7D30197B6006510014A115213B2BCCCDB674842D1E8CD76DBEF68112A1491CFA22B6080F28051FC85B4DA5DE10CDF09E7394B3D0B324E13B6841405B7AEE4CDB2E1462';
wwv_flow_imp.g_varchar2_table(19) := 'ED4389714C957EB0585DEE537A12E7F8C08F5BCDB180D362696BE1BC7B65A845605D5E77A991B5EE00CB0222D02BF6A86215B4B51DB0DE24C27B8E1CD6B153DA512BC183B1D96217B89913FD8D9C8598A4FA1439AEECDB42018810259BC81A47BE721109';
wwv_flow_imp.g_varchar2_table(20) := '0D8051797D42FF525D71E2116B6F2514995D20773EC566F37BBFFE5DE605B75000849A7A1FB0BE189BB57B68E7A593BC8EBC9A5E6CF049C129F550971F9B560AD05A094A2327785E8C8DDA6206F6060796C8AB5ECBDFAD22935AC069EA0E2BB4A5022058';
wwv_flow_imp.g_varchar2_table(21) := 'AA1982FE76CF1C6F8C618C0F4FE7D67B84B2AA86E6CD9B5843C99719657D207097A21858941A8A19B5DED60AB0601AD463707C4A127E08A24D09C89A0BC596407A88242C49392906A982F941D8E04ED332C9684339F4A20030C8258E7A6156F39FF5E152';
wwv_flow_imp.g_varchar2_table(22) := '2F98A3C45F583B74D42E16E18E25E0A1C5EC0C22742A51A8FCCD918310D64121BD2EA92705580808CC19BED4A98520F022032C9B1B6AA5F683C4B20352450CE121C649E649B15C9E072FF3D312F08688E7E2EB0FDE6B97D4A3022C044514298AC0CF8A57';
wwv_flow_imp.g_varchar2_table(23) := '7F9124C0B088928CC106EDF121E1A403E53985900981735688187663304979F9790EB1D49DE777ED427A568005AF1EEF718F08CFB12F0FFD8045C7DE9EF2122ECF8FBF803A0D942FFA52F851CDE56AA14E337FD97909334925EE5CA9BB782A0F2BFB0F05';
wwv_flow_imp.g_varchar2_table(24) := '5829A2660DBC21E4CD185D67628E6D6042754F4301FA7B44585BF8EAF7909B102B1D02F9D861BAA7A1007D3D22BCA5BCFC3118FCBDACA4B71A0B9BCA6528401FAFCD0E216B0E4CA0B912A006DC1D40D6980D0D0568FFA84880C1538AE565AE44A61717F6';
wwv_flow_imp.g_varchar2_table(25) := '1621D949321B0A9024BEE4CED42EE0C8F39309237D4F12E1D0FB85B2B109434575256CDB93EF1D3549A94E43014A4976F37101ED05D224B52008D971BCFCD8F77F3620B479A1606225F091B07395AE4813CB9FA9DF50009398B236221FE2A511E58FD632';
wwv_flow_imp.g_varchar2_table(26) := 'C1B183977F39C606D0299C80EC06A50874378E6CFC6677E4592B94A100A55E93F5C705C690230F97DE147AC1544B0D58F48D223389087D74E6285B5E7C82F378F1A92EBF256828409DC748F61B31390076A510A11E8739AA6EA208845250F3E006111333';
wwv_flow_imp.g_varchar2_table(27) := '1F508DA786508A8821FAEE3214A0FCF3B95D805B24213C85886AE5C8F3DEC84140D040110870034A66F1DB39D471A642263F5E7AFE9E51B8DC6AE432F276EB55014086E36101BBC18FB0600B618B06808B1F6546890D22FEA515C56475ADC72B11AD80E0';
wwv_flow_imp.g_varchar2_table(28) := 'E6086D6E258B2EE7ED4901C0E5046A9B10805CA811E0EB80494F1D2D2E87980C6B10453608E2A3F2650A513187AFBE152A3165AE6DD9B70705D83FC49BDFA1F01320361E25E05712010E4526C3CD1AC2BDD1B2E197979F8A91830A49A095021076BB78F1';
wwv_flow_imp.g_varchar2_table(29) := '2DD563722EFFFC2545C85D0F98F8F91CF0EAC4FF03D50EAF830A4AA08502500A8914B95D0BAECB32342F177CC4A6FA2DCF4139D6DF4BC89C5A1EEBF9C1C46959C3689328819A0AB0BBA42342CC4822DB59BB639EE4A8114BFB4E76FDE70670DDD831E807';
wwv_flow_imp.g_varchar2_table(30) := '721A7C90BD35A892046A29008152BCFC28418F04529DB52CD132FFD8E459572A9D19D20FA9973CA8A2044A2BC08F058C4B8E3DBD13F701AC371622DBE9706701BE8DC67D758809AA65A1B2AC6FDBB429A900E4B182BB69AD77D583D0BF1B304B2FD98419';
wwv_flow_imp.g_varchar2_table(31) := '0A5870DE4FCD9B65AE43431E400F6BDF963C9452001C594092E42A7857F3E190CA475AE2DA94BE9F082F7ECA7D61B10E22290F0A552C6BAE6DCCB546022514000C4850C9C0909C2B7D3A38E3165569F60E479E7B6758105627CA31E1A41BD45802B91580';
wwv_flow_imp.g_varchar2_table(32) := 'B3312F7F4EDB3E9187C078E0BC5AFC08C3BD72F8812FCA3FE78E833F77821B7F400076E2C8630DC7D8EC917261E6EE30A81309E45600420EF084A6D2F78322512C0E0B8D85760A38345486CFC103737254C95184EE73216B6A8EF08C16D9CFB64D4E05C8';
wwv_flow_imp.g_varchar2_table(33) := '0170FB9550E5F1D844383D9009A8370CAA5C6BA2220EBC7CBC352363FECB4A209702784A7BAEF71CFE3B00D852E2944278B988A03A22324B66486DC62BA0BC733001E792F7ECC6C9A100C499532990CB6F0C9D1DA226F95B8A5000B299C8C5AD41DC5180';
wwv_flow_imp.g_varchar2_table(34) := '38C1C63FA86309E4500002B762AB2C12AFCF799DB0DFD244983567F05D0A4FC4E59974444F8DAFC22C8DE1379240AA02F0F272F18DA1E333058F79E73E4FD29EDE4EC6F6F83EC801007076D00C2490AA00586938FF7BA975D104CCAA94F9CC49646C0175';
wwv_flow_imp.g_varchar2_table(35) := '326846124851008E14E4A97A8968C703BD9D32B7BF7CB0CA80A5934A9F0D5FFDD89D3075FED13F4102290AC08B0CB29987DE3DE5EAEE3385FD62E76F4D787749304FB918E3A3E0C84328F3A0194A205601BC55C2110DA64ECAE594B4F6781F012F2F059C';
wwv_flow_imp.g_varchar2_table(36) := '636824AEC448ADB33EB10A40BA9EF7BC0B1ADA533A5B3FECB00B8040E121F21B4EF274186DFB9440AC02506FCA53DB170F2F9080399D5CB9244ABC8FB7885CEB4B7CAEB56FFB71621500AC1D82D0ACD47B101885A5EF665D4C08D3E835BBCDB18CD13446';
wwv_flow_imp.g_varchar2_table(37) := '01082F20BEC54394F9EC3916E680C9937D9C6741018D79112EEDEC3A9AF722811805F0546D649D67459CB16BCB879A56A4447A406BB9CF70AF19346309C428005F7F0F721B0A43BDD8DE8978266018ADB4D54AB25AD7BDA5DAC52800D9529EC037726797';
wwv_flow_imp.g_varchar2_table(38) := '31EC7B1520595A44A35A892AE8A47E0E9AB104621460234CFAF5C4F075E765B9A528718C79614950001461D04C25E05500BEFCEC0056A284CF8DAC8D1BB7E31EE0CDD3BD7D40A06ECCFA983E56025E05F05A80DE15421F62F9ABDD8F387EE284AC4420E0';
wwv_flow_imp.g_varchar2_table(39) := '4873B44AABC3765E0520F6C703DD476AE3233B5CF7462C7DD299FC4EB619258306CD54025E05F09A40B1FED0672EE4B570CD6D7D73790ED5F8F42A0049E6E0EB5B89B614869B0B51080EA4672B91EF4BDEEFA0994AC0AB0014B120A4D94AA73B6DEBD671';
wwv_flow_imp.g_varchar2_table(40) := '4BB5039FF3C71D833F28228EC831FC685A5A025E05D8C319D0F66F05D30F73CB06605CF07B3C74E7A9ACD3699E0EA36D5F12F02A00F8989E0476AC2A3BF6B5E40DB9F9D52941FF034E5EA9B478A1B3CF68DE9104BC0A00EB7C25AD30E2B40723948A8DBD';
wwv_flow_imp.g_varchar2_table(41) := 'D321A1B697954F42BCA9FF3B68C612885100BE927C2DADD47B28F4621DDEC498110B647D033A6E17A30024831CEC58D339539571C20C7A26EFDD86B5501DE6C89E1735785B2D81180588C10262C7E819280A73E6CB568BEB522DF60AE0B9CE6EA3794F12';
wwv_flow_imp.g_varchar2_table(42) := '885100A0C8BD75767B8042D948EE843EA09C1E48F771FEEFE92D4EE0254601988E181F4C801EEA35708C4A2D7FEC5948806E7F88B3CF68DEA1046215C01B12C1D24F0EF8FD3D89E1EAE1EBEFF1FEC2FF3D2491473C68E612885580987B00A2BA7F50845E';
wwv_flow_imp.g_varchar2_table(43) := 'C4F6EC89919858258E8000E0BEA997850C3EE22410AB00CC16530D86EA8B20C361726C4D31479FB53C6305C21A3468A612485180D8A2185F9074ADC6F2A29E18714A3988A310087324D50F9A9904521480A5028E0B48AE978048012AA51579D23A2D3C02';
wwv_flow_imp.g_varchar2_table(44) := '90CB91E89D96C6A34D3F124855006F82CCF2CAC9BFBD8D240A46D722AA5892A6598A9E2909CCD041339140AA02B0CC14ACFD0B24DDB712602E17F01A975660163191FECF4CDE816DCD660E052047800B3191A231C4C5184FAC27D1C6330FF0E780F9C658';
wwv_flow_imp.g_varchar2_table(45) := '7B3CF32CB7FD58B817000A36A86309E4500096476E6C6A661480BB204EE77C69A819FC7449376DF40C9EE8C41A6AC4E6F69D369702204114004548259480DD20054B94D8A3274B42016209B4078E4DA944A5482EC8833A94404E05E008C4518823510E62';
wwv_flow_imp.g_varchar2_table(46) := '2720DB8A17D1822C0764CBFD241172011A5D0A2DF08C9E3315F6383C65A0D0F783E15E00EAC4A08E24905301581656162E9AA92FE05A11E179058979F1E3DF770DBFDDC25F0F9ECFAA47703D49E7874614C34011F8FF52086B17FE82135206197DF34A20';
wwv_flow_imp.g_varchar2_table(47) := 'B702945482BC2BDF78340072D73AC9C8674009EE9E818917497A5A8671C6101924504201E6AC048FD9A466183BCCF332BDBC206BDC7B4A2CFA6686673886489040290598A312800E7D8C419620DDB11B5CDBD076B3265F0AF70260D90735924049055828';
wwv_flow_imp.g_varchar2_table(48) := 'C15193A36BDF46EBB34CCBBD82D820CF0595A27ACF75D649D88897812E67794A85DA94568005DB38A2F86AFE54A175C40EFB72494F8AEC4C66DC0B243D36B2FF72B75324DD27C3386308A7046A29006C018F8212DCC9C963A9E6BCF828402AE16F605D28';
wwv_flow_imp.g_varchar2_table(49) := '440A013BCFBDE0DC9441465F9F046A2AC0823342128014BC818FD52CAD2F9EB03F8F97F4BAE98BFBE12C23FE6810D243391251083C951E37858BBF227590D1DF2681160A00675854B0AFF3ABB12300D1B878F1095D2E4114D878E1E43FD83FC3E0F04AE5';
wwv_flow_imp.g_varchar2_table(50) := 'CA418525D04A019697C5051445C093EBCDCDDD4C3CBCE880789D11BEF8DF2E2CCBC5F084447324F280ECAEC71A47217C12DEAA359596B935A6E9410196258927F92601A20498127ED6EC31201B8137E147E8017F6BBDF46BDF867B06D0AC1CE5A1B81C73';
wwv_flow_imp.g_varchar2_table(51) := '491E544002BD29C0DA257AD0277A332712AAF16249FB65786EA0F111D53A28B30486026416E83AC371397E568669DE17997E9A61EAAD3BC450803ACF965D009F41EA1D87D009EE057340DBAE23D9C4598602240AD0D19D6852F047EFE6E8B3515382E908';
wwv_flow_imp.g_varchar2_table(52) := 'AA8BA51DC26E729550C779F197BACEA0762C7E174D7915C0406E591A0A50FFD1622ACD110DFA66E7FD025F057E0A8008303D5BAD54F84E4E0DB91EA0806C29F897A100F5158019499A078F7497C4E93F1F5EE8CF6C320E11AECC17035FB3DEB098950136';
wwv_flow_imp.g_varchar2_table(53) := '3B7ACA00FC6222FFCDBB0F0568F70830F95263F8761958E0053F71699C9D2613F033A600BF874E3E90DD338CBFDE10281DFCF3FB56A1398A0F3B14A0B888574E403C12C9F3A9C417997C6ACCA5E420C7A27478F9207D74A108DEBECDDB0F0568FE087EC8';
wwv_flow_imp.g_varchar2_table(54) := 'C081925E321D8BAED4073B515C00994F64EC66C7B1A8814B761A0A5052BABEB1816E79E504BB7E0B5FB7AE5AE38DE7D845FDB459D05080FE1ED3AB42F27C7F9CD9397A84A4E3ECCDDBB51C0AD04EF69BCD4C48347703ECF573A5DE4253D69563AF0AF0D3';
wwv_flow_imp.g_varchar2_table(55) := '1332036987379744110B0B2170704A0919F8AAA543E76D00F76237B871E77C6EC61E162E7C07DD526F0A40C239D023386C3CC5B897058C6D9C685070FB5FD3ADE46D8C91378112E4C831B0CD98BF1518511660B3FC331B46EC45018020C414785B03CF9E';
wwv_flow_imp.g_varchar2_table(56) := '267C7D806C045D6ECEF49410595A620D4050F23B6F921535D3F60C3FFE3907612605ADAF4BA7596B05B86AF84A974E087FAB2476972FE778A28DC6E038C16E909A4A0AFA05853C16BF8D968322DC2B207A103E9142001F335677D45201F084F210AE5B49';
wwv_flow_imp.g_varchar2_table(57) := '2AC09FDCB5E7EDD8208794CA36BCF804E3C50001501513E71A893EB1B419E858EC98C9FD5A290017DC5685F28889E1A23C37C259766C24D3180878F953774014810A3831D8AF5404C2A8D115B55000CEF967369642F7D68975E4C3199D638997729B23C9';
wwv_flow_imp.g_varchar2_table(58) := '7403053C4609BADB056A2B0008716FF33EC142ED399372369D03F1E5FC5004A354F22C6500787FC07AF2B0D5DD2E50530148767FCF14F3828DBF07C22AC1E5EE133D30B38207925F9EEAE493DA6B5CFE4B12A5A0BCD53EBBDA056A2A000F03E4B39E88D8';
wwv_flow_imp.g_varchar2_table(59) := '9B1CD08625D774CD90A1E5990314EB1C79C8ABE6C42285F3D113C4D79545A8960294B463AF7A48ABFEFB5D24F58CD0EC951D703078916B11E665CA405989DC01A06EBA8086AFA100A4DE71814BADB082808133C4CB0BE12D06372895BCA985A9F379FB03';
wwv_flow_imp.g_varchar2_table(60) := 'EEE579A189C67C837792C4F61C6D0136B3528DE39989971A0A8093EB2D266ED66F841583979E1F98FACB84B71245E0678D195A6F164290D9CA7B23C2410831B6127E951C49F7D6F916ED78A1F9905809EC5302FE9A530D05A0E223E1B15EE26B4F7693F5';
wwv_flow_imp.g_varchar2_table(61) := '7842D237195131BB020056077919ACD01E2BCE1B1DF3B40C433E27A0FA59D8FD94A43D2C0D4BB729AD003B072BCBD59C0BA19E00E8093174B02490D43C040CC80D3B8400C1794511712B71616E1573C34784FB8A95B83837BF0794560082DCA81AE921BE';
wwv_flow_imp.g_varchar2_table(62) := 'FADE1778EDF82810BB81874ADACC3D7C2CB7C55B8ED7DC4264611174D68AB8037017B0123B003B41532AAD0098193D45A271F6E4C0D847A8DC193CE985049A61A3EE894088B6E6038002E155FADC6BC5C27305E3A0F86070A635A5D20A80867BE000F982';
wwv_flow_imp.g_varchar2_table(63) := 'E5CA27F57E91A80B9CC35295F3815EE00816ECC1B37DF6E4E927B7D9425D58824A2A00F5C03CF0E4588AA8F49E9308BBF014E8DB51D2777232903816996DC0165A088F2C71FD2DE9A4C9E4FD4023035D54C229A9009411253BCB4A874F707D47581B1BDB';
wwv_flow_imp.g_varchar2_table(64) := '796108313BF604FDE7097F2EF92C8DE2D6ECE0EC4B0A8D787FB281ACB4CF145C05B64C4E7AD42685AFD79BA7B7F43DC069ADF08963078878734A2A00971C4FDCFD150B40ECE141C5936A252C2E67591B5768872F642FE33CE30E6014D472B3920AE0D901';
wwv_flow_imp.g_varchar2_table(65) := '70A2EC1DC1FFAA2E60647A6CCDBDED00EC8838F82C34AC401629AD69535201A89BFB35234FDC15AE636CEB69B6DB043B482AA495B8708291DF0B512DF26146664E73288B71485733EF8EBF2DFC002880B5803428C6B97125A9A6620DA5E0C5B75A5C5C6F';
wwv_flow_imp.g_varchar2_table(66) := '4642631C8278B6AD447EF585D6C699DB5101C753C76C5B78823FEA489DA38C9027A0CAF2FC805AB126817361CF51D5D1C297B50DB0E7AFB7360E6113C0C0B4204FCA26759B63D23BB3AFABE411086649C7B356493C4AD2A19957E8811E3F79B25A11BAD1';
wwv_flow_imp.g_varchar2_table(67) := '13794DC9AD520EF1F6E3F5B712C5413C3B9B755C77BBD20A406CFA0946AE38AA909C92931893639085386B7BBEB6963173B4A120DE2D1D03B548392494FC660E1E4B98BC1DD3FF7FD3D20A008280E74CCA0EC04E9083A8D87EA463202ECC5497EF8D700E';
wwv_flow_imp.g_varchar2_table(68) := '1EE660AAF62EE0FDFA7F2364845DE25853B1A6A51500C6A929E58952CC7139C2A780A0AD4414E31DAC8D2BB723C1059C530FBD3614DDF0F489698BDF845D9610122B950879B1CE7D99763514C0E31E8741220453A1F87066DDDA21157824F3AC47C232C5';
wwv_flow_imp.g_varchar2_table(69) := '05DD6B26660704C4AA2491ADE6053166C7F0E41097E45F351480B44512B53D51A15C9E39937FD7B97AD094B973782EB3448172C65E9B6EE99CBA68738E86203D7809A4ED77783B19DB7B72151643E6F8B819D9B335ABA1007042BA21377F2F792EA69E0B';
wwv_flow_imp.g_varchar2_table(70) := 'F7321FA945A7BD6B8A690F9612F90DD78FE89CDB430C4817699A9E0FDA82EDB5D52C239693B74B2D05E0CBCC2E1093AF7BBA24ECC600587D24FC90028922FC7829C0A7A1F8B39788B5E1EBEFDD69BCF3E468EF8547599E9342D7A45722CB58C2248B85E9';
wwv_flow_imp.g_varchar2_table(71) := '90C950C1F3F4526B4FF5BAFCD65200268FFD427B05ED69EFD9613CE396684BD953760110F66289BA5DC72C41CB58C6C1437F40A85BE63DEF2F8F0F3AC82996096BB6A9A900AC0B13275F901E880B2217C53991D733BCD1DA281CC23186FABE1B11468427';
wwv_flow_imp.g_varchar2_table(72) := '4822738BE4A614621EC6EA8E6A2B000220DC01A1B6A4AE4C714E419038F41C679FCD9A73F9BF381801C8E7C568018A8735B777152B281B68DC5D520B0540100038E10D6C41407B532863CE849DFFE13358008A050CE2F77BE5B59502208F18FC9E5439A6';
wwv_flow_imp.g_varchar2_table(73) := 'E00DA5CE9DBB3FCEB11628709E7560A0A0324DB7D45201100A486620C7D5202AACF0E5DC4AE40936ACBD6EB2F1B0FC754DAD1500E150778AB0656BE69357A09800C1FC79BBB7E34CDA63E72FEDF1F58802D3326125A9E5983C7346B7ED410116CC63E1C0';
wwv_flow_imp.g_varchar2_table(74) := '5270ABE8D55CBAE3567FF19757EB8528CF24E2CB0C4388830708AD141FE6717B528005D31485A690464CE95490C93816F02B150260166EE5860F0EDE762E9D2D88C85B4FD46A0B1E2F33678F0AB060F21A21A687B81ED22A090AE3EF22C59214467EA45D';
wwv_flow_imp.g_varchar2_table(75) := 'F2F7C4F04309B62B11D2FDF8B0937AAAB6A4C88BD82BECFCE42DCC8E7A5680D909B32386C1084211F8ED50882F7C29478770F74253941F7628407919B79C01A819FC2D5C4AEF98811110363026F0C397337B1A0A30FB47685E00B51AB0B491224A442731';
wwv_flow_imp.g_varchar2_table(76) := '3E16C40E3CC51438E48B8F13714BD150802DF538DD8B21E481B06694811F60C6140B59FC8066FC8A7BD41975180A30A3873558CD2F81A100F9653A469C91048602CCE8610D56F34B6028407E998E11672481A100337A5883D5FC12180A905FA663C41949';
wwv_flow_imp.g_varchar2_table(77) := '6028C08C1ED66035BF048602E497E918714612180A30A3873558CD2F81FF05F54FB6FDEBAD5C920000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(56273569640090548271)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EEDDD07B8354D5127F072D57575CD01150C481004032610C505512498509280620404414C0886052529828A8A';
wwv_flow_imp.g_varchar2_table(2) := '080616100413E6F48989201890150524884A58595414B3EBA6F9F1F5D1EBFDEE7D6FF7CC9C737A66AA9EE73CF7856F4277F5747577D5BFFEF56691921A480D6C56036FB6D99E67C75303A9814803901F416A60C31A4803B0E1C1CFAEA706D200E437901A';
wwv_flow_imp.g_varchar2_table(3) := 'D8B006D2006C78F0B3EBA9813400F90DA40636AC8134001B1EFCEC7A6A200D407E03A9810D6B200DC086073FBB9E1A480390DF406A60C31A4803B0E1C1CFAEA706D200E437901AD8B006D2006C78F0B3EBA9813400F90DA40636AC8134001B1EFCEC7A6A';
wwv_flow_imp.g_varchar2_table(4) := '200D407E03A9810D6B200DC086073FBB9E1A480390DF406A60C31A4803B0E1C1CFAEA706D200E437901AD8B006D2006C78F0B3EBA9813400F90DA40636AC8134001B1EFCEC7A6A200D407E03A9810D6B200DC086073FBB9E1A480370F637F00E11F17E11';
wwv_flow_imp.g_varchar2_table(5) := 'F14EE5F78E11E1F7BF22E2AF22E2AF4FFC7D717E464D1AF80F11F1AEA77EEF12116F13117F13117F1E117F71E2EF1B9B9E9E173769200DC0BFA9EB2D22E2FA11F11911F14911F1CE11F1E6E5E7BFF9F7FF8B88FF1D11FFA7FCFCFB1511F1D488F8A98878';
wwv_flow_imp.g_varchar2_table(6) := '6DB9A669103670F1DB45C40D23E25323E2934FE8945EDFB2FC6F86E1FF46C4BF141DD3ADDF6B22E2E911F13311F1F2A2F70DA8EC305DDCBA01F88F11F11E11719788B863445C3B227C8863E4EF23E2D7879DC313878FFD1723E26FCB073DE6594BBF875E';
wwv_flow_imp.g_varchar2_table(7) := 'DF33223E36226E16119F1011579EA153CF8F88CB8A7E5F5876628C72CA480D6CD5005879AE1611B78E88DB47C4878FD4DF59B7FDF3F0BC9F8E881F8C885F2B4785191FDFFDA318D15B44C41744C4752618D44B759471656CBF3F227E3322FEAC7BAD74DA';
wwv_flow_imp.g_varchar2_table(8) := 'C02D1A80FF346C25EF1C119F5DB6A556AB7D88E30003F0E861423C6F1F2FE8EC995729DBFBCF8D880F8C88B73D40FBFE6744FC5644FCB788F89588487F41A3D2B768001E31AC18772F1FE8BEFBCF57F0AA61ABFAA5C547D0383C8BB89C6FC456FF211171';
wwv_flow_imp.g_varchar2_table(9) := 'BD88F8CF076EB5238089FF8C88F8CA88F8D303BF7FD1AFDBF704E849393CFADF1B11B73942A3AC545F1E113FB4322716E7DEE747C4FDCA99FF08AAFD77AF7C59447C49D979398AA55CA081AD1800E7FDEF2C67D3B14EBEA91FD3DF9589F298A90FEAE47E';
wwv_flow_imp.g_varchar2_table(10) := '67FDAF1A56DCCFEBA43DBB6608D33EB41C0BDED059DBBA6BCE160CC0DB9773B873FFB126FF6EE0AD4ADAF163DD7D096D0DE2347DE4B0EDBED1B0F5E750ED4D1881270DBBADFF5AA231BDB5AF9BF66CC100F808BE2E22F6E5EC6B1DCC3F8E883B0C5883DF';
wwv_flow_imp.g_varchar2_table(11) := '6EBDB193EB85F39E1311EFD38141BD944A185BF88CDE76289D0CE3E5CD58B30130E1EF56B6FE5D29BD84B09C9D5FD95BC32E680FB4DE8F0C9EF75B2DA8DDF78988EF2E00A30535FB304D5DB301F0913EB940790FA3CDFAB7FCE3E02D178DF8A6C12FE0DF';
wwv_flow_imp.g_varchar2_table(12) := '4B10F0E8AF8D88FB2EA1B127DA085E7CEF01E4F5B402E55E58F3F7DBDCB51A80778F886F2B201F61AA5681EAFB831252729EFC878878AB920F00E1F6C1C3CE027E7D8A0857894840B7F52EFA6E37F5B019E3FBC03B42A4AF8F0851123A966F0199E99821';
wwv_flow_imp.g_varchar2_table(13) := '1763AE90E24B8677DC23229EB56174E699DFD81A0D803EC1F27FDFB0F563085A44128A5021279D8F53F20F3C3A8C3A07226302BB7EA5B20DBE674114B6BC6377ADF835000BC45CEF22CE4F9FD79C786CB41AFF5C44FC6441F0898CECB0FF74BCD32F1D33';
wwv_flow_imp.g_varchar2_table(14) := '041F57C6F26322E2AD2728C9B34DFEDB9644A3098F5AD7AD6B340092784C2C8927B5C26104BAFBE088E0A4AB15BB807B1500CA58E41BD8ACDC815E652A7EC2E493E1071EEDC8F3478D1D65143E2A22EE5FA20E7609634578904338A568608D06C0AAE163';
wwv_flow_imp.g_varchar2_table(15) := 'ABDD3E5A851E5E56B8D78DF832408B3FABC4F8AF31E2FE9F2F1988FF34E2DE43DCC2900AA9F101B48ADD93FE7D7B44FCC6447F87892FA9E82B8A41686D8BEB6516FE9746233FE63D8BB9678D06C02A0399562B56160660AADCAE1C1F5A278A33F02D871D';
wwv_flow_imp.g_varchar2_table(16) := 'CBEF4E6DC01EEEB7FADBB25B815BC599FEBBCAE497173197F0BF7C7344DC7CE403BF6348D012194899789EEB558126D2875636CE518173680ED8A873EBD70CEFFDFACA77EF2E3351182C4943BD0958EDB796B3794BDB64EB813E3F65E2AA7FD63B2D5A12';
wwv_flow_imp.g_varchar2_table(17) := '8FBEA718CE9676B9F67F14E7EB1612B42ED4CDDA7600576DD8DED9EE5B45E495CF257C02B2D3408F5B44880A60A5A76380E38C049BF76DE94841DE3D60F0E83FAAF1BED6CBE13C9E1D111FD97823C7AE08115F8023CAA6656D0600B8468E788DB84E961E';
wwv_flow_imp.g_varchar2_table(18) := '1FC09C22234D8CBF45E4B43300C255BD889D917ED4FA52B45BF6A3C9E558E5DFFB96F72E6C411FD1F822284C69CB9BA7735B9B01F0F199D4178995F68B23E2097B880BCB8507959583502B3CE30C8050550F62D23BBFE34C68C99FB093613870261E4A6E';
wwv_flow_imp.g_varchar2_table(19) := '50A23E1FD0F0427E1706808372D3B236038097EF532A46F44FCA078055666E79B7C25F875FB056E00F1800BC773D88C9C438B6F441F8F4130B47E221FB00A4F4D5654B5F0BFA129A7C6071263A126C56D66400F4C579DE0A7C91D8029A702FBAE8C211FF';
wwv_flow_imp.g_varchar2_table(20) := 'DDCAFFB888F8CC867B81611C5F40977B1051090ED25A2095EDBE33BFB33FA7E6A1E543CAD1AF85DA8DB1C50509E9B95959930110B26200DEAB6234ADFC0C400BE8A7E2B16FBAC4F6D9D9D956B84578CD85A80E7176BE54BBA4F7F2FE4BF7ADFD3EFEB0EC';
wwv_flow_imp.g_varchar2_table(21) := 'A8F8328E217601B23EF95FFCBB46C08F1D1F36CD20543BC0350A3DF635BCD5C02635ECB3BCDB0C0060C8DC02B20A71F6658D0F163EFCC60E1256EC601E5B58926BBA00D28CE9E88B8ECCC907E0833EBC254703641CCE61B3B226030002FC7B953B806716';
wwv_flow_imp.g_varchar2_table(22) := '03B08F745C3B806F29BC832D1F961D00D6A26387A614ED3091E0FF6BC4969FD75FDB8F29C282BF3AD0867F744323A00AE11C362B6B32000651918EAB578CE6EF140320E36F6E8104045241375E2B56515E6990DB638B241C1309E5578DC053DC64D831BC';
wwv_flow_imp.g_varchar2_table(23) := 'B4E6E23D5F23EDD731AA56448D18DECDCADA0C001AEE1B578CA695DF11C04E606E110590EDA6124EAD40CE310056DE630B1FCA0B4AE9AE9AB638FFB784E06A9E39F69A6B0DCE57EDA9951F1D1CC120DC9B95B51900675794DF17C93E7100D71D1086CF1D';
wwv_flow_imp.g_varchar2_table(24) := '8E0118736B45EA310360E53DB648F90590A9E5FAD3D7966DF73EFBC7FF02D8558B5DE0B41C93E7B0CF3E1CF4D96B3300EAFAD5126EDAA63B03CE8D04E4FC6B3D5782B43200ADA9B2FBF8589CFD5B7646C0343D5184493CAA7104D39DBC0079059B95B519';
wwv_flow_imp.g_varchar2_table(25) := '00DB6F9EFD1A0250D7DDB4149C9CEB03E000C4F0632B5A2BCEFFB808EEBA87C499DA369CBCCE96F8871B6E742D92D35E442E466D7E80906BED4EA797FECDDA8EB51900CAF9A592375EA328E12BF1FA39C0200841A0CBC4A25B84175D16A19CF91EA47507';
wwv_flow_imp.g_varchar2_table(26) := '80CC04A9492F02E66B21A8118850D4639B95351A005E5D61B81AD921D85A27ED59CFFEC2029E69E503C0968374A397F4D4F72F8EB4DA6FA3A773B41D18DAB15A1F80DC0BF881CD4AED202F49412CBA429152836B8407FE41650506C96D151F1BE8AC7CFE';
wwv_flow_imp.g_varchar2_table(27) := 'DA779E7CC70F145EC031EF6E6D6BCDF532EC84476B93997A8A028846B464F8397A29D4B25959A301E07D170BFE9C0628ABA8C0130B679DB8764D5E3E3F83D55E38516E798BD77FF7C14944B959A3D36DDF1F2BD66388CA5A6386DD1769E73E60D5AD7DC5';
wwv_flow_imp.g_varchar2_table(28) := '5C2C0FA356300BB5B047D53E7731D7ADD100589139A520D35A60A106CDEA21A350AE008CB8EDB933BA89CA5924CC04710876CCD174EB8961A41EE3D0FAA7A28ECCBE1A114511F9C01A7C4C31363F5B98846BDB0138D42313536DFB275FB746034029B2D8';
wwv_flow_imp.g_varchar2_table(29) := '58F73B8DF0F24A15E548DA71D6EF0C00CA2F1F99A423ABA377D4441BCE1B242BA6EDA7387A4F2299460110C93535425F7800F02B1C9207E074DB00AF00B06A1D80EE77FEEF8583A146D7B35FB35603A05F72D9B103B77C10B32BF89C07C2FB23227D48E5';
wwv_flow_imp.g_varchar2_table(30) := '71E350EDDABDE7D34A7A6DED0ECACEC9514808EE1862BC45521CC5B034D708CC0503000BB05959AB01D80D28CFBCA340ED4771880F41DCDFAA03B1D8025B3D44DB76EF905F8F0FA0965CD57D70F5760EC7287576BDA158E9E31BDBCB0128042C6AB05959';
wwv_flow_imp.g_varchar2_table(31) := 'BB0130B0565AF9EDBD18012B8F8A429775FCD539E628A80914541B52935FA1F28E3C82438A238B302EE3535B3DC80E8CF38FB3F8D8D99787D4D515DEB5050320BD153417BFDDB1C56A03AEFCCBC76E48C5FB553C623C5504AE159583311BCD0DAFBED4FB';
wwv_flow_imp.g_varchar2_table(32) := '150B51CEAD366AE159B6FD8E2C3D1BE15A9D4FBA6E0B06401F610378A9550D3AA6489AE9CDE9779E3ED06B21CB5007B15660196CC591831C42F87700915AD17C3DB2301F425F9BDC01EC3A0D2526460C753726663F768078C95195F1928BAF2F497E6144';
wwv_flow_imp.g_varchar2_table(33) := '051E3E008C4868D1F649B8098381D9A995129C91C2788C48B406EFB1A4F16A6EEB167600A79562EBF755A5D26D2D8B6CB362CB0D3E30DB7D1EEA390B908C6D4FEB7D2D75164E3E5BA295302C666148CB39C537AB68C937149F83F06C8BBCBA90B5F402BD';
wwv_flow_imp.g_varchar2_table(34) := '6E69FBECD76ED100F8606CC5EF58004353AACD9E3720720C4C78A5B1807D964A3C0914E49CDCC2B6BBD3C91B4A5621FFCBCB67FC728D1DE8B6A4A531380C51214EC37DEE4E66ECEE7E1FB5450340A3FAED4820CCA59008C7DC5CC20166FB2BCC64E2F782';
wwv_flow_imp.g_varchar2_table(35) := 'F11FDBBF2F9880F2E3610778E271E74F985283D178E14C409ECA30D546274EF65BFD05F8901E60CB63C763D6FBB66A004E2A11C4D747719B88C0122B6A500B80F11CAB3DE42030CC4F14349A6DE65A843E20ECA6B0FE3806E00DC07A0C5EFDF795F4E756';
wwv_flow_imp.g_varchar2_table(36) := '785188EB14908FBC89B1F9FBC649E56860A194A281340057FC145416920F502B92614C0EB9E56B1331767D73DEAE6509BE940E10872ACA221282C19931601CFCEC0E4C76CE3D3F4C3D1F568CB323484DBD87F3DE0D7CE59D42C1FB60825EECB8A701B8E2';
wwv_flow_imp.g_varchar2_table(37) := 'D0B5541876F75A4925B003633616BDC01130A7387FCBB5D81900F808FF1F03200D995F860110E61BB3D53FDD566CD11296D0971DBBF0CA9C7A9CFCAC34006900CEFA88C4D52503F18DB4129C4CFE28677E80DD053F0FDE85A5FB6366564D7DE9A7D95FDC';
wwv_flow_imp.g_varchar2_table(38) := 'F103B7BC03B0E5B7DD76565F03538E30AC8881FEA49CA181DC01E40E60A701442042A3C8496B8B82F43CA9D4FE93CFC07F91728E06D200A40170C6E665C7A5280D58886DE9C2D1078D08873125F4B8743D5CD8FE34006900F01982C52A90D18AAABBF003';
wwv_flow_imp.g_varchar2_table(39) := '3BC2057F598856F042E699FF82014803B04D0360DCD198DBEE03E9B424FC9CD698101BD624717EA1423E94B1B1FA29F602E8C8CA8F6549EDC7940A0DA401D89E0190FF80F0C3E487AC9BCA9300E62BD3128188D01D8F3B2CC5A18E1292ADA4F7822C3F6A';
wwv_flow_imp.g_varchar2_table(40) := '0074FD7EC5779F97140DA401D89E018078449082D4B49640E3BC09A38418279BF45AE83E22760F3FE01D9276E688E39FF77E3B0FE84BB06B9996731478D994714803B01D03005C234FDF961FD866CAC4E45893E4848507A0C731E0A480F09AFCF208B01F';
wwv_flow_imp.g_varchar2_table(41) := '4DDD659C75EC607C407B4D7CB1FED36DD8D4441EDBD93400EB37003B2FBF0CB8CF1C62E262FD53047AEF3125A7DEBF2F127C7D8C0E3216093DD07EADC687C1B1DA9BE84ABF41F449B33E260BF145FD5EC47F4F03B06E0360B201F4488091F034C5CBEFAC';
wwv_flow_imp.g_varchar2_table(42) := 'AD6290F01AB6E516F24F3B0005539177001AA9E0C3F1B83308FE6A9B67CAA6F433D9FD95C1E75C8F71D851439A71CA4C1A480370B922AD8A571F4A8B7F50992862E2B562157AF0C02DF09232417AC90454E24B7524DBF016BEBCB3FAED7CAF08A834E7A9';
wwv_flow_imp.g_varchar2_table(43) := '441A9C90DAC65760E2EF7E270DC06EF2330026FC1B6B0723AF6BD3C0D60DC00796D25CCA84F38CC3BD5BAD5A88269C3D414EFD24B53C27227EADD055E103B0721E5AACB6E0AFAAFB986053C4AACCBB8E468BB73DCFDA53B4D9D9BD5B33005619E12979E5';
wwv_flow_imp.g_varchar2_table(44) := '6A06A869B7AF983563C051F6D8C2FF6F15DDB73160BCC4E26DD379F9A788AC392BAFF3FBB1CB7E4DE947DE7B090D6CC50008775DB3105C8A511F12F5660B8B5043B8CA1916467D1F225F1E879F2DFFFB4C7C01871B2F3B3A2F4EB794956A600B06E00603';
wwv_flow_imp.g_varchar2_table(45) := 'F9C4A79755DF197F8A236CEC6760DB6CFB8C04C38E80136D2E71A6466DC66F81F1788E2DBF364AA451C464DFBB96B9F490CF19A181351B005B7BE5A271C839DBB79CEB47A8B2FA16E5C7BFA51882390A6800F6601DFEE0198E33B6FC0F2C5BFE1DB0A7BA';
wwv_flow_imp.g_varchar2_table(46) := '6379E1F234B0460320C62CCC84FA5BDCBB97897FF2EB90A4A20437D20D409A56D147B50D94B706C6990AB4D19EDF2DE1425CFB291BD1C0DA0C809A76372993620C95F5A187FDD965C595B9562B76361C7C0A5B82DC4E05F6885E3CBD380E8532D3CB5F3B';
wwv_flow_imp.g_varchar2_table(47) := '122BB86E4D06008D95ADF0270FDB6B7C764B113B0038825A4FBB6C37FC7642985327BFE388F3FEF70F5111C53C5236A681B518001E70955E79F8F715D6DBE7A781565CC522DCF9E709E49C041BDB7EDBFFA963075D779FC296BBF91259FB1CDC9E9F3DF5';
wwv_flow_imp.g_varchar2_table(48) := '23EAA16FEF5E106A3D54FF9DA20FC52A18B0179D7A88F33E90127F81DDCDD42806F65D470FC6E4F4BBA6B43FEF5DA006966E00ACFC0FEBA4F4F71CC3FF82B213102E24B2F66E5CFC0438F2A78E170C82D459E5B1B23ACE1C23B6F0674CFDA08ED97D677E';
wwv_flow_imp.g_varchar2_table(49) := 'E13431FE390502CEE43059E49703F2ECF2CC39192109FDB5F3D086B90B8C4A6F45AA2109E6EE85E1664A518C9D6EACF642A22AFECE117E9C53E7F9AC236960A906406EBB951F9C77EA9678A77ACC363F5EAA02A196121A630C504DED8A4998EC7C0CFE7A';
wwv_flow_imp.g_varchar2_table(50) := 'AF8219B8F36F3D03FA6ED70EC09B6795F7DE6806479FE7312AD28155E54960CF91265B8FAF5DA20130F96E5B9C7E53B9EC649D49DC91DF2E8967ECCA684720F1C6CACD3B8F6FAF0701E6C1D5C77FF0DA1E1A946DE84B034B340070FC4266D79DA04A13DF';
wwv_flow_imp.g_varchar2_table(51) := '6A88C7EEC71A73DB2FF55A853421F3382439EE8E6908EC6244469CF773D59FF0B1ACF9D6A51900492E9C58B2F8C68A90DB3797EDBEBA7E734F0E3B94AB158EFDFB4E64DC1DD347C715BB19B9FB72F8931A7B8C163772CF920C0048AF04154CB6AD9452BB';
wwv_flow_imp.g_varchar2_table(52) := 'E194908317CFC4100EDBA768EFCD0BD0E6CAFB7CD1A9673FB9F0FCAB5A9C85300FA8F825BE6A2906403BE1FAA1D684C65AC52A28C426CE6E077048E1A790FD27636F2E87E5E9F683EFE21FB0EAE30248490D546960290600B417230D6F7BEBEA6FF2CBC5';
wwv_flow_imp.g_varchar2_table(53) := '9734C3D37F0CC14560626AFFDC46C02AAF10C6B79563CDBE7736C7D05FBE734F1A58820130E1D5ACE3A91F83F1476861DBCF29764CE117B083C14634A7C82A7C7841F50959A6A406AA35B0040360CB6FE23802B4B6D78A8F226B5F2C3CD58A2E17020F89';
wwv_flow_imp.g_varchar2_table(54) := 'F1DB114C15F87DBC7FDF9EA4995355B9DDFB5B27D4313485D6DA19BAF5EC8FB3FE0E0394F6578FD1E84BBC133FFE0F1556DC314D13B5785981074BE3CD557F8C16F39E376960090600B1A6D87A8B60B2553546B8AFB74C37E41DC84AEE3FB2349708C683';
wwv_flow_imp.g_varchar2_table(55) := '0ABAAF4527796D6AE00A1AE8DD00C0C0BFB8A4BFB60C1F761BE1C25E0B45E2267CC2003B96E0D32A379C819BBFF59D79FD4A35D0BB0180A87B52A3EEADFE78ED78C57BDD1ECB2740EAA1B0666B814EACBF8F6FD4495E9E1A385303BD1B80270EDEFBBB34';
wwv_flow_imp.g_varchar2_table(56) := '8E1D265B9EF6DED35D65128A50A848D4228E00B74CEAAE1695E5B5E769A06703C0E907AF2FE3AE45D4C15B0A180636E1212D9D2B493DF80E7B896C34363F2FEF49033D1B0044181275DEA541611071E8B115B15C82C81C7C61A3331675B76300DDA4A406';
wwv_flow_imp.g_varchar2_table(57) := '2669A06703A0D085D5B1E58CAC822C27D9DC093E93947C899B819C9E5B0A92D6BE835F43865F4B01D3DA67E7751BD340CF064018CF47DE029D457A81256849F21543DAF0231B1BACD41812D11D5351E3ED79796AE0720DF46A00B4EB7185F1A7B68D30F0';
wwv_flow_imp.g_varchar2_table(58) := '126E840D9724D729894A2D054CD4186400F0F8A7A406466BA076728D7EC1C81B8165907580FFD6CAAB4BD14F29BF4B12A9C2CF1BB8F9DFBBA1D1CA8EC33960334A490D8CD640AF0600F126A08CF4DD5A71FE479B0D02BC2479B788F899463FC05F961DC0';
wwv_flow_imp.g_varchar2_table(59) := '9C454697A4B36CEB4C1AE8D500580D19809B36F413A1A7F2D87FDD704F0F97223805EC696137C65DE80800269D921A18AD815E0DC0B58B0150DABB56A40BC3D82FADAAAD72DE7216EE59DBD142F3C5003CA5E19EBC343570050DF46A00107EF201288259';
wwv_flow_imp.g_varchar2_table(60) := '2B5B32004840F800D07FA5A406466BA05703803C8301900A5C2B5B3A02C877B00390569C921A18AD815E0D00E20C0600E6BD56B6E404E4E76000509DA5A406466BA05703804F9F015000A456B6140614EA64002EAB554E5E971A384B03BD1A00105935EB';
wwv_flow_imp.g_varchar2_table(61) := '9D736B0510E87A0B04C77CC04016FADF8752672D40203C077483F7202535305A03BD1A001D92CF7FEFC6E29BAE7FF4686D1CE7C67B156C7FCBDBA51133004B033DB5F431AF3D80067A36005265D5B47BAB063D3C332270EE2D29190867618BB353C6239E';
wwv_flow_imp.g_varchar2_table(62) := '84BB764C78D2306479E93135D0B301008C01900194A915135F08F10F6B6F38F275F00ECA76B7D43AF88752F947DDBF94D4C0240DF46C00D401942ADB5A56EBAB0B21E824C51CE866C4A0A8BD5B04D4F956A51848CB7D796D6AE00A1AE8D900581561DD7D';
wwv_flow_imp.g_varchar2_table(63) := 'EC2DB2764A3094E07639BDF21DB68C555E7B640DF46C00A8E64B4AE18B1635AD9D145421902F6D51485E9B1A384F03BD1B00F45ECF1F9881B0E8B6C89A69C151892B749A921A98AC81DE0D003620852F198216597361100C423225DFD0A290BC36357096';
wwv_flow_imp.g_varchar2_table(64) := '067A3700638F01EE33419067F60697552118C809E7C1181105F8B988407F8618242535305A034B300008337EAAB0FDB476F47525A3F035AD37EEE97A958E509D8FA9727CBA49300F778F8857A443704FA3B581C72EC10080C842CBA9872777BE554CB8CF';
wwv_flow_imp.g_varchar2_table(65) := '2A05355BEF9DF37AF50DA4EFB6A4385FF47E931F978022A158825252034D1A588201D0A131FC003B4508973906200B3956B52055804C54DBFF5687E64503FA378518048BF2AB2EBA38FF7B6AE0A4069662004C9AFB0E10DF070C201F84A1ADF22F03DCF6';
wwv_flow_imp.g_varchar2_table(66) := '5722E2CE4758291536C1DC83DEAC85E2BCA58F12A11C09EE764423D7D2DEBCB6130D2CC5005017FA6C2BF93527E80E8DF61796C88249B34F7174F98888F8BE81B843C6DF2144B930C7A59F8D08919094D4C02535B02403A0230842F004200C192B32E814';
wwv_flow_imp.g_varchar2_table(67) := '0F614CFE640F89436F3E5434C668F4A9A5B0492B94796CBF76F7E144FCD688F8AEAC1F385595EBBF7F6906C088DCAF94D56EC9123C3D927F5BBCF18C891A7B73AD96EF1A11B7890865CD3F64A8F883D8E418A27FA8C61F3EB00DFFDE311A90EF5C860696';
wwv_flow_imp.g_varchar2_table(68) := '680084051180B6B0059D351AD26A4D14C53554217AF6B06273A88D11E7FC4F2CD065053FA74C7C198D0CD29888C7C9B6230E1519B84789128CE957DEB3720D2CD1001892DDD91A4270AE3E380EFC42443C2D225E1A117C049C87BB9FF772E2ED7ECEF826';
wwv_flow_imp.g_varchar2_table(69) := '3BC7A2C93FC756DFF69D23EF6D0AD087BFA32555F8ACCFD533394FBFA750A6337C29A981376960AEC97368759A84772AD80069C3738A9553462194DD9F15D69D1DF38E49EEF79E031CF7AAE5ACEFCC3F8798A80F2DE9C18CCB8D06E383140559C8D4D0A1';
wwv_flow_imp.g_varchar2_table(70) := '422218842512A1134B490D2CDA0068BCB2E14A8189AF9B8C4B16580513F4CB4E9536B3039011A94622FFC214B1F2CBAB50721DB2322535B0D81DC06EE8ACBE56CAEF9D181E3CF6A7F0EB85E20BB2EFF416FD1D8ABFC3367E8EDD8E50A19DC663CBF1E6D8';
wwv_flow_imp.g_varchar2_table(71) := '7DCFF71F51034B3D029C5499333290CDA30A5660497D32D93102DFAE1C3B2EF5297C7C213CBDFA0C8022FE0D09497603492C7AC40978EC572F69B25C4A578C80096295B4235882FC55E1F5FFE20674E2071532101883A947023A7AC6B0E378E0E0C4FC8D';
wwv_flow_imp.g_varchar2_table(72) := '25282CDB38BF06D66200769A811634A18408AF34BFBA667BE2EB0B5847F8B1B59AB130E8ED0B1E4215E5A98240157048F443583465431A589B01307462F0A8C11F1111D7EA702C5F591293C075FF6964FB4409841E1F360099EC0AA68A2801921184AAFE';
wwv_flow_imp.g_varchar2_table(73) := '9DB2110DACD1009CDC0D3812DCA2806AA686D2A67C12BCFC6F8C889F2F5B6E46600EB94639C73B12888A4C1547022846CCC3C2A1292BD7C09A0D80A1933988559811E01B10563BA42180EA9380F4AC21A5F947CA5FC0A239056250A624F6A3ABCC80ED70';
wwv_flow_imp.g_varchar2_table(74) := '24E01760ACF24830E74875F8ACB51B809DCADFAE44086C9B6F5E48395A6AF1B50E9D49FEC2426B6EAB0F59B8CFC9F4F6C5D0C1115CBFB5B1675C2F5428B42A97208F043328B4D7476CC500ECF42F8148A5A18F2A7E821B0E93F4C31BEB0F5E6A2CF110E2';
wwv_flow_imp.g_varchar2_table(75) := '1DC0D9E72F4AB27F3ED0E0DBD9880CC802FC8C19DEC93F81634085263C84292BD4C0D60CC0594388ADC7AA79832121E8131A9D6AF2072413A121475F8E7E6CEE2D7EEB67C709FAF50331C8E70C454725294D1D637068F90ECF29F911ADEDC9EB3BD6C0D4';
wwv_flow_imp.g_varchar2_table(76) := '8FA3E3AE8D6A9A821BAA12D74AAF453A1C093EADF01128993E555E5D38142414CD953A3DB54D79FF0C1A4803F0EF95B81603A057C0518A88A8B0CC113AD5F9298A817C5464A51796E519A6C0B61F910660BD0660D733EC49F729BC002D9596CF9A19A21A';
wwv_flow_imp.g_varchar2_table(77) := 'A204E8C8F127A42C5C036900D66F00F470973E0DFBAF36C154712450A14856E11827A7DD09872CDE03111A464A8AB5DFAE668277F8D96D206A81A570FC90367D6C3FCB54FD75737F1A806D18805D2F254D89F1235431F9A688F0207F8970A1895A23263A';
wwv_flow_imp.g_varchar2_table(78) := 'A7AB84A60F2DE1D88BDA2261CABB8093D09B3DAF84583960BD97414819A9813400DB32007A6BF26146BE6B89128CFC74FEF536380790E4F3128AEC3EF82200B16E321447815E0458B2F28F11C710B9140C803A0F52A9F11FBE76CCC3B67E4F1A80ED1900';
wwv_flow_imp.g_varchar2_table(79) := '3DB6FA2319B1828B184C111312B41971094AB5937C060852191B580BE149C8CC39BF39EF825100BAC2F4FCD319AA6C1BCA3907A3EDCD7D5EBDA628408D86ADCA4299B80DE740467EF9B0C57F62C154A03303B89A8B32ADA63F189E65363A2AE4D1A04263';
wwv_flow_imp.g_varchar2_table(80) := '6900B6B90338D96B2C43F72F3B8277AAF8662EBAE4B242D03235EC78D17BCEFBEFD098E8DE156479D91EEA3E8C6D5797F7A5014803400310830AA8AA9F3807BBF1B13F76D1023E09510F48CD9473349006200DC04E03C27268D6BFBB9CD9973E69F826B0';
wwv_flow_imp.g_varchar2_table(81) := '2EDD7BE08578EAD23BB3AFF6A701480370FADB4242BA4B289A8363605FDF6EED73F902F82312C67C86C6D200FC9B5238C1D0897122D50A079AF3F358669FDAF71CFA3AB463D07E3CF8EF7BE897EFE17D68D72448D9DDECBB28EC1E9ABFBF47A601B8DC03';
wwv_flow_imp.g_varchar2_table(82) := '2E13506AB07A7E8029B5F2E2C2EA2B1310E90786DFB5A0D4840A79F1BF614144AB971A3788C2CF8F885FAA1DDC2D5CB7650360A223D0C0268C55C7073FA60C9758B41D00B49AB460BB026C3A6B113B806F2A44A463F4D3931ED44A546989E14E991994B1';
wwv_flow_imp.g_varchar2_table(83) := '04858A4963D2BDD7005EB9CB70D6B5D59D5B60E3D17F7D478947AF61CB298908D087DEE6D2D9CE703AA3C3FA43F2FA9F118600000D4F4944415441F629C9868F90E1F113A6E49760A4F924A62E5A7669B72EEF997BEC17F7BCA9CA5C52877D444A8939B3';
wwv_flow_imp.g_varchar2_table(84) := 'DBF6EF5B4055BF7380DEFEC0A9725FFB7EEF3E9F8F30F449135F60E22B46E2D824A310B61F70E7BCCACCF004F2063E3A226E5C8E6853E8D019E4C79734E9BF98D897C5DFBE1503200945F69A33A098F7A1044C153C55020E5EC0A50BAC0083364564109A';
wwv_flow_imp.g_varchar2_table(85) := '8018866CC95BAA15BF73F14B7C51011B8D2DA12EB108EA533DC64DB31F6FC100483A7964A1C812EB3EB48847FF7289472FD908D01D1F87E22B63C4AA2F69E8070B453ABD8C11DF2C232ECF4061D831B90C8C8E0422B469B0029B95B51B0067C6AF2C65C4';
wwv_flow_imp.g_varchar2_table(86) := '8F3DC8564EF4DD187797288E4FB6FFAD706193EDE56507862C75ECC43F4B67EA2128726A8737C6416947F394250EC65C6D5EB301C0902B3945B59B5E8411F89A05526AC9E4B38B527BA015E30F922B06BFAFF09BF466D80D94EFB20D5B841FE293166C94';
wwv_flow_imp.g_varchar2_table(87) := '5BFA7AE6B56B35003E041E6B31ECA9C41793957CEA010834EC4ACE737ACDFDBE399E27642AC1A6D579CAC18777E00FE668C4259E81E548F815116A6BF6A10542987393B2560300C0A2FCF5D8F3EA3E3F06A8341C7D53BDE9FB6CE3C96723F4100234495A';
wwv_flow_imp.g_varchar2_table(88) := '56FF179522AD38040F21EF3F300C21274138D2223001BE977D166E6969CF41AF5DA30110A7762E9CA338C6BE06E3050566EB6F8B177C5FEDB9D4739DF99D936FD9F072464ED48591C3E5772801F2414AD292C32012C1A188596873B2460360CB29FE3ED5';
wwv_flow_imp.g_varchar2_table(89) := 'E30FA0C2432C9427766CF5739CE0759ECAAE6B5268E3D72DA0EA8E0C4129B5B5CE3F6135C41CC26C8A8A1C5A00B06400D68AD461E3D0920352FBECEEAF5B9B0170FE63C93F6682E67FF304AE9FC79E0180EEB315B6B2980872060053AC386399746C3D39';
wwv_flow_imp.g_varchar2_table(90) := 'AE7AE7B233994CAA5A41C871A721B7E2176B6F98F93AE5D27F7408373A12D4881D98D0246CC1E6EA20AECD00DCACD4E56B39ABEE3E1213F2712577DC8700DF7FDEF6DCEE020845A1511984630C8E95D24787B9A6670196B97D4303390B65121E2B298A91';
wwv_flow_imp.g_varchar2_table(91) := '7E5071B4D636FBB70668F0E76D3147604D06401C18C20CB8A3454CC4E716C71CA04BABD811301C9F32220C656BAD1E61AF68343A05696E81DE321672218E29A2010C51EDB1C54E8F015853125795FED76400AE56B0E58A4BB40868AA6DEEAB5A6E3A752D';
wwv_flow_imp.g_varchar2_table(92) := '88AAF8BED063ABEF41ED3E58F81E458CFD150D0DE3FC330EC746D7D12903505B1791BF870138B6E16A50F53C97AEC900F0FADB0148FAA915D57C6F375366D895CA4E40A6598BC004A0B4EE516ED1B82AFE7044DCA1838E389E3DA184216B9A039D78B7F2';
wwv_flow_imp.g_varchar2_table(93) := 'FDF41E95A9E94FF5356B32000F2EA4962D4EB93B46C4D3AAB575F185E2C98E132DC25966A2F528564546B556506FC1FBF7208F2A3BB25A6010425475120E19B63CBA9ED6620084E66CF95A62FF261E6F35AFF59C02E9874AAB56440114CEE83147004AAE';
wwv_flow_imp.g_varchar2_table(94) := '6542F784AD77245319B9161EFC8852F9786DF46E97FC0ED76200AE5AB67CF2C56B84D3ED7E053E3AB7C5171A7C46091BD6B4456AAA441B9EE8DE04BC160AB056141A91E6DB8330C25674790C3562A703A1B9A950E05A0C008CBA339F95B4464C3ADB5BD0';
wwv_flow_imp.g_varchar2_table(95) := 'D1B9851312D10567588D7098593965CAF526429412806A0568E8F76B2FDEF3758E7710A1B5E9C28E82C2974BCAD198ACC2B51800676F06E05A951AE17567004071E7162841E5B1A4AAD6080CBAE8418FB9010F2F7E959A7EB8060EC3EEA707B9C780D5B0';
wwv_flow_imp.g_varchar2_table(96) := 'ADAF250D411B2E7B745325C5D66200107BF201D4C6ABA5A832004A47CD2D08486C9D3DBF46200D9D57DDD39BB4A20079D2F9407A1099A0E8DF6A9DC20F1D32093992A13E37236B31001F5B0C80B8758D60E8F9DC3DE5E543A2719CC1C2D78833A7C4192B';
wwv_flow_imp.g_varchar2_table(97) := '506FF2E943B5A0A737340A430FDFCAB185E7FF31C5195B4B1462BC1EDD31286B2F3A5D8B0170F67404401E59233D1900E0190CC5B8037B938F6C744E0A81CA9138B66008F23DD486573982F93A7A3C86ED55976B3100E8A30DF84D2AB5D5D3118043F256';
wwv_flow_imp.g_varchar2_table(98) := '4324E0772ADB7EC8CB383471F9D58A89C40FF3CADA1BF6745DAB4FE88D6547F8137B6A4FB78F5D8B01E078630060C06BA42727A00976FD8EB302A5CBD6C6D2E99E43536DC163892D3FFA721180DA76FF51F1D9A8EEB429598B0190FDA7EE1BDAEF9A339F';
wwv_flow_imp.g_varchar2_table(99) := '55D7B59861E796AB9494E45A7F84B019CAAD5E0B883C7920F5BC7383921CAF5C7F2C601328387F4A4B0623BE424EDBDE53B31B86A1EED2B51880DDCA236C55C30108FB8DAB9FD36AEE898764D256B23625591E807C805E05B6BF052E2DAA01126C17708C';
wwv_flow_imp.g_varchar2_table(100) := '9460E15761D85AD2961D390B28F0DCA0B05EC7F45FDBB52603601B6D45AF2D5D85B0D2C7623730A798FCB54711EF755E4542D2ABF0AFF0995CB9B2819269F83320F15E5879CF9C97218481C6AC15E77FE14B894C9B93351900800FC09E6B368C22E007B8';
wwv_flow_imp.g_varchar2_table(101) := 'E85CD21A363341B00BF52C5652DE717C072DC22743BF874A0D1E5B03C2B6FFA67BC284B4E8EB28D7AEC90050A00C3078EE5A31F820A373387FC0916D3D3FACF6E543BE00F0093EBA9E05BF81EDF1031A8E35FA63FB8F49D87DFB166D04E385BFA845FEED';
wwv_flow_imp.g_varchar2_table(102) := 'DAF49325896CCE8225FBEEEF6CCF5F9B01900B80D5A5F618409138EB390471038C15C948761256C9DAF453A1B2DBEE098E3CB61F67DDE71B9164252FA0D6B1B97B8E0802601002D47D89F6E1568440AC4582EEDA02F567D7B63926A09D02D666004400AC';
wwv_flow_imp.g_varchar2_table(103) := '3A4A70D50ACBEFE86025E60D6EA5E7BAEE4016CAF908075F0B3BD536CE3FE9AA2649EFC2B1FA8D83671FBE1E396A8B3802803A0BCBED436CDF9DDFC7147D55A90900E818CECA7DE8A2F9996B3300140005662263876D1159603E247050F4609242CE8A10';
wwv_flow_imp.g_varchar2_table(104) := 'F0EEDB66BE478937DB7A2A43D6227008761D6338085BDE33E7B5372C9459C29CADC2D1EA28807D778E6C3BDF2DA324D4D7425872B2DD28CBD53AE8958EAD55C7A3AE5FA301701EE407B0BAD6E6829F54DEEB0BFCD59140B2901AF232F63899AC32BCE23C';
wwv_flow_imp.g_varchar2_table(105) := 'F762F7FE5D833B38F97CDB4E596ACEAB4B58FD4FB6BD353BF0E4BDF4A85E0087A263D7584300DC23E2A3988748434DD8F7F4E460D8519D0B050B5B6E56D668000CA6B32087E0985A71273F061F07C62006C08786FC53B6DF140194B1FA4F21219DF2FE29';
wwv_flow_imp.g_varchar2_table(106) := 'F7D2EB65032EE0DA131EC2A8D2812423B903B5E9B7A211483EF95910A8BCDF88E3C8AED92F295B7FA1E04D71009E1EB7B51A00FD7204F0B13A12F4228C898FF8D5BD3468443BC06C21ED6A61B667BDC2999B517534600CE0376CC55F77AA7C3867AEB02E';
wwv_flow_imp.g_varchar2_table(107) := 'BC86EDBAE307828F563FC4C9363038FC3DC7022A8D50F9FE6E59AB01D8698CF71A30A71615B63F4D5F4E350555D723F34F4BBFF93F842FEF3971229EF54E7C7C76461CB38E572D35FE6AFA60B5C71BD1C27254F3DCC55EB376036060388A1ED208109A7B';
wwv_flow_imp.g_varchar2_table(108) := '40F9159C9FE5A8AF8174D2F65B2DBD96B0E7DC3A1DF33C3B4234F063FD0F63DED9F53D5B3000BCF618834CC063A0EE76E5C07F7C6525A8853FD5E09BE20F38E4E400F602F93D54B9F243F66DF4BBB6600028073847B148B1F79632D7A3155B6E842F103B';
wwv_flow_imp.g_varchar2_table(109) := '7FFE4A134D84425F3E32DA3255B72DF7F32F180739179B44FC9DA7ACAD18805DFF9D5F6DC3399578F36B517B2D1F9B732647931547F1CF257AFB5BFA2B342A65F8E34694456B79CF986B391BA55B43FBAD7D1CC6E827B6660028094EC02E40CEBA8F760C';
wwv_flow_imp.g_varchar2_table(110) := '82EC3C6573F4C10F4098A1F812FBDE82C81444C079D789D1813975C5EFA2B2B158FFA11292E66CFF419EB54503B0532CBA2B64A2AA09E3BE6BC91F383D38425A507D906EC25A1866B626D090CED8C835A7E8720EBD49F202B49291B869A0CF45CADCB201';
wwv_flow_imp.g_varchar2_table(111) := 'A01B283E0C325630BB02E83228BF5A79710933AA30AC8AAEDCF2CD914A9C5096DDD50DCA6E80E3B52537A256E7175DC7D32F42A1F4FAA628BE2F52CC59FF7DEB06E02C9D009B00110110F97174C111D8DEA3B9DAFD5E5A56FAD6E4A131E3B4B47BF85A84';
wwv_flow_imp.g_varchar2_table(112) := '0865025E63CF4E423E17A155677D0947E2FC29951A480350A9A8BC6C94061850E5D26131A412BFD7CC8E573E16C72D39064FDD539D87511D5FCA4D6900963252CB6DA7639689CF00F0B5A0EB92CC33D64F004E8D724C31550E5706C06E6CCB47AFD15F47';
wwv_flow_imp.g_varchar2_table(113) := '1A80D1AACB1B476800865F8626872198367F8B042306C24F68F6E437C97BFF9A923B217FE299E5C7B127D49A67FC118370F2963400131598B7CFAA819D43D6434DF84D95EA9E5593950F4B0350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9';
wwv_flow_imp.g_varchar2_table(114) := 'A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8';
wwv_flow_imp.g_varchar2_table(115) := '669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC';
wwv_flow_imp.g_varchar2_table(116) := '2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F';
wwv_flow_imp.g_varchar2_table(117) := '5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DA40158E3A8669F5203951A480350A9A8BC2C35B0460DFC7F77747C6AF8F86D9F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(56273569998644548272)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EED9D09D87653F5FFBFFF423253884C4924731409215399298AA2C89C1299A7CC630821992953549429651ECA';
wwv_flow_imp.g_varchar2_table(2) := '98104DC22F432A9439EA7FBE9EFDF43EEFF33EC339F77DF65E6B9FFD5DD7755FCF5BCED96BEDCF3AF7BDD7D9C35AFF0F12111001111001111081E208FCBFE27AAC0E8B8008888008888008400140B71E8229012C026026005303986AD887BD7D09C08BE1';
wwv_flow_imp.g_varchar2_table(3) := '33F8EFBF0078B05B28D41B118846604E00EF05F07600FCCEF1EFD00FFFBFD701BC1C3EAF0CF937FFBFBF02F863F80E4633520D8BC0780414008C47C8EF7FE78FD047002C1C067DFE9DAF0F73DF00707FF8FC26FCBD09C03FFB6853B78A40AE046604B04C';
wwv_flow_imp.g_varchar2_table(4) := '18E839D80FFDBCADA54E3D1502813F84BF0C0A1888DFDB52FB6A4604C624A000209F07648E30E02F076055000B2632FD56003F03705BF8282048045E6A92129807C087C3776C45008B27D53EB1B2E7005C0FE006007784CF6B86F6487547092800F0ED58';
wwv_flow_imp.g_varchar2_table(5) := 'BED5AF5BFD00AC197E98ACAD7D01C08D002E0B9F27AD0D927E11E89100A7E9D7AB9EE795017CC878C01FAF0B0C0818883318F8916608C6C3A5FF5E97800280BAA4D25D371B8075C2E793E9D436D6F47C08027E1CFEFEBB710BBA4104D213E0DB3D836A0E';
wwv_flow_imp.g_varchar2_table(6) := 'FE7CEBCF51AE02C0EF1D83012E234844A027020A007AC216E5A625016C0D606300D347D110AFD13F01F81E803300FC399E1AB52C023D11787F18F039F0735DBF2BC29901060183C14057FAA57E2422A0002011E831D40C0EFC1CFC7397674310C04040A7';
wwv_flow_imp.g_varchar2_table(7) := '0A72F766FEF67393EC96E1937F6FC6EEC13D004E0F1F9E3A9088C0B80414008C8B28DA054B54D377DB86B7FE684A8C1A7E350402A76ABDD2C80365AB5D290CFA9B16888181F76020C0653A89088C4A400140FA878367F377ABCE00EF1ACEE8A7B7209DC6';
wwv_flow_imp.g_varchar2_table(8) := '7F0138B43A2B7D783A95D254308135C2C0FFA982190C769DCB728381C0D3E221022311500090F6B9F84C18FCF9F65F92F0481303011E27948840DB043E1ABE57DC3C2B999800937C1D5FBD6C1C293022309C80028034CFC4A200F604C000A064F92680FD';
wwv_flow_imp.g_varchar2_table(9) := '4236C29239A8EFED1078679849E38C9A646C02B784208047782522F026010500F11F04EEEA3F06C0ECF15565A181D905BF06E0AE2CAC95915E096C11DEFA17F06AA053BBB84197B3010F3BB54F662524A000202EEC6F00D83FAE8A2C5BFF5B0802CECBD2';
wwv_flow_imp.g_varchar2_table(10) := '7A196D4940D3FDFDD3E7F7EF282D0BF40F32F7161400C4F12093F91C1BCEF4C7D1D08D56B92F60EF6E7445BD4840801B67B596DD1EE89F87EFDF2FDB6B522DE544400140FBDE5A1EC08900B8EE2F199FC0A5003607C034C31211188900EB6070E0FFACF0';
wwv_flow_imp.g_varchar2_table(11) := 'B44E80DF3B06E1DC2828298C800280761DCE1FA8EF0098B6DD663BDFDADD21F531772C4B44602881B5C3E0CF6C7E927804BE0F602F008FC653A196BD115000D09E4798D4E7E4F69A2BAEA5BF03584119048BF3FB581DDE17C08122928C00CB113308B828';
wwv_flow_imp.g_varchar2_table(12) := '9946293225A000A01DFC7B0038AC9DA68A6F859BBC58F94C522E81B7033817C086E52230EDF92100F631B540CA93105000D03FE66D009CD27F336A6108814500DC2F2245129819C00FABA4510C04257604BE0DE0CB76EAA53905010500FD515E15C035FD';
wwv_flow_imp.g_varchar2_table(13) := '35A1BB4721B09096038A7B36DE03E05A00F316D7739F1DE6BE8012EB29F8F44604AB1400F40E956F2837F77EBBEE1C87C0EBD59BE0620A028A794E1606C0E368AC9521F143E04A009FF4638E2C6993800280DE682E1EDEFC395D298947E00F0058C35DA5';
wwv_flow_imp.g_varchar2_table(14) := '85E331F6D0F232006EF360886C1891006B79B0C2A2A4630414003477E82C61F0E7DBA9243E815F03E052CB33F155498301810F2A2DB401F5E62AB934C3EFA1A4430414003477E69900BED0FC36DDD107019635FD521FF7EB569F04E6AEBE4B7FF6699AAC';
wwv_flow_imp.g_varchar2_table(15) := '1A81C0495520BE83C8748780028066BEFC0A806F35BB4557B744603B9DB66889A48F66DE1592CE4CE1C31C595193000B791D57F35A5DE69C800280FA0E628A5FD6B37F5BFD5B74658B049E0B539077B6D8A69AB2213003005685E4C63F497E0478F4F9D4';
wwv_flow_imp.g_varchar2_table(16) := 'FCCC96C5C3092800A8F74C4C13067F6E5692D811D03AA41DFBB6344F590DFC3F00B0665B0DAA1D1302ACDF718E8966296D8D8002807A288F06B04BBD4B75556402BBAB225C64C2719BBF04C0067155A8F544043656DAE044A423A95100303E5825FB199F';
wwv_flow_imp.g_varchar2_table(17) := '51CA2B58CB7CB9AA32DCC329954A572B0458D18F257D25DD20F05495B67BB52A65F36FBAD19DF27AA100607C9F5F0760C5F12FD31509099C0160CB84FAA4AA7F02AC94C9CC72926E1150A2A08CFDA900606CE7E554E4E771008F5503E3F0BFF4318F5BCD';
wwv_flow_imp.g_varchar2_table(18) := '35ECEFAC193FB7349D09822ECBBC0FA598CF52BEDC403B47C73AFC72F8BE0DFDCEF1DFFC4C0F60CE113E3CFDD03561213456119464464001C0E80E63B6BF1B014CEBD4A7CCCE7543353BC1BFFC3415EEC4E6CCC6C7C25FF63727B9252C05E46473A9B632';
wwv_flow_imp.g_varchar2_table(19) := '505BBB039DE726D44B01DC1E06792E473595C94330CEE0807B2158F170F6A68D38BC7E2300173BB44B268D414001C0E87098F48267CF3D098FDE5C1D02935E7E7CC6EACB7C0078D4713D00EB78EAF418B6701980CB0112BF040E04B0AF5FF3C6B5ECA7A1';
wwv_flow_imp.g_varchar2_table(20) := '3A21FF72CD3B86F07BC7EF1C03825C0B2131A113F74B317DB72413020A004676D407AA2FE4DD8ECEFC73E0E7E7AE44CF15BFC85B00F84C227DBDAAD12C40AFE4D2DCC741EDC76954B5AA85833D3F57846445AD363E4E63AB8423923C26F9BE948A5BD0C5';
wwv_flow_imp.g_varchar2_table(21) := '32CE3AE1D102C8544D28001899B497637FA907FEE13458F19081003F5E859BCB2EF06A5CE17671698A4B4CB9C845D5DAFDB1618ADF83CDCCBAB7535832F0604F1D1B3603706E9D0B758D3D01050093FA609EF0F63FA3A17B58F886B9EFBD6C72E39BDC69';
wwv_flow_imp.g_varchar2_table(22) := '003C563FE4E6321E4592F822F0650027F83269546B58D69BE96D99A3C09B707F0003017EDEEACDB811ECB9B7DAF0C917879732B0B5781315004CFA0858AF59B2F4EDA71D96C0E5B20837F9F0AF37D189005F1E99AD0ACA6E05C060DAB33C12DEF8730854';
wwv_flow_imp.g_varchar2_table(23) := '3E148200CE787917EEF938D8BB91B20F500030F153C01DBA0F196EC4E1A903EF53A63C79B082B32F0F970072F86174862D9A394701F87AB4D6FB6FF8D5F0C6CFE9FEA7FB6F2E690B0C76391BE0F977E2D9AA64FAB2E1B734291C296B464001C0C4BC7824';
wwv_flow_imp.g_varchar2_table(24) := '8779CA2DE4804AE9372C14F7A09376EEDFC37DB16EE17423CF9AF3FCB5C496C0D2E1EDFF2DB6668CAAFD57E1740F37F9E62C7B0238D47107BE0B606BC7F6C934680660F843C0E2169F37783272DC3DCBF3D0EB1BB01A4DE58E004E74644FA9A65C582D5F';
wwv_flow_imp.g_varchar2_table(25) := 'F14CB847E1CEFECF551BEB5859B20BC20D77DF01C0024B1E65F56A26E01A8F86C9A601029A0198F02470DDF2B7218357CAE7E38F0078063F47E199DFF73A315C9B01ED1DB10600A686F5286703F88247C3FAB489154ACF73F43D1CDA9DCB33CA29D2A71B';
wwv_flow_imp.g_varchar2_table(26) := 'F2BC5D01C004BFB1C6F529066EFC6095D6F61E03BD6DA85C229C9868A3AD36DAC899651BFDB76EE37CA7B9238E00C0B4DE5D16EE1F6242216FC20C903FF16694EC1920A00060C293C0E9C14F267E30B846C6B5B29C65AB90A4C8431F72DA47E181579B36';
wwv_flow_imp.g_varchar2_table(27) := 'F04DF4B6361B6CA92D26A6E1125B09727295AD705B671DD52C8033870C354701C0000DE6C5FF4B55677EAA84BEEAD217C34BAEF75F00F878421F4AD504021E071F161FE2F7BA2461F64ECEC47812CD0278F2C6105B14000CC060FEFBD46F095DFA52AC05';
wwv_flow_imp.g_varchar2_table(28) := '80018DB5FC1BC02C1DDAE465CDB3AE7E9EC0E03296A7CD683301E071B412C55BE9E52EBDEC74EA79520030E04E9E0766CACD54D2C52F849759009E4CF8512A474ACF9B04580ED6D31AFB92CEF6A6583C26D609CD86F7B94B2F3C16FE8CA25301C000D63B';
wwv_flow_imp.g_varchar2_table(29) := 'AB3758FE68A4922E7E19BCCC0230A52B13A548D210780780FBAB0DB45EEADC338BA6552E8F34C4EB6B61E6CE4FD5BF3CEA955D7CE9890A2C45E30A0006D6FF534E1576F98BE0611680B9C8793A419286C0171D9564DE0D00B3104A060830B32997661672';
wwv_flow_imp.g_varchar2_table(30) := '00E43FE1B833D32F4B9C10500030B0F39F27005209CF22F34C721765CB5034C8BA6FD30078D1DA8842F47B4908C523BCDB15C2BC4937170DCB211E0A09D13F1647AD9BF02AEA5A0500C0AED5EEFF2313799D51F09C558ACC2712E94BAD664127458C3E5C';
wwv_flow_imp.g_varchar2_table(31) := 'D554BF2375E70BD4C72450AC9D319971DF996D8E81FC1BC6767855BFB19392D9DC9BE3297BA8577F25B34B01007066C20C613F07B04A32EFDA28E27AB0F59423A7A5CFB2E97E515AB971961B682D85C7FC5602F07B4B2332D0EDA17E076B7630EBE99319';
wwv_flow_imp.g_varchar2_table(32) := 'F02AC2440500008B83B0D4660AE14E696625EBB29C5615E5E15280A5701D98EBC192B80418D0AE1C57C5B8ADEF154E218C7B61E1174C1F12357196CE52149C5BD21FA65B0100F042B57168EA443E5900C0EF12E9B252E361BAF18A6A09604D2B0085E865';
wwv_flow_imp.g_varchar2_table(33) := 'DAE5BB8CFBCAE5072EF7FCCBD88E5CD47BC8DAA9D2DD8E9E96D203807900A4DA95FA40753C696147BE8F65CA8C00FE11ABF19AEDFEB9DA68F99E9AD7EAB2DE08789852FE32806FF7667EB177B16896E532247F1BE6AD8EEA3E5FAC071C75BCF40080D397';
wwv_flow_imp.g_varchar2_table(34) := '9CC64C213C22B76E0A450E743C1D32F2599AC28D69DA1416CF03D6473EB974B774BCEE75B665CE8C5917E7E1864DAF55233BEBF8913A567A00C0843CFC214B216738581B4FD14FEA489D5869A47E4DA7A9E1A8EEE6E6BBD9A36A18BBF1CDAB37C9730CF5';
wwv_flow_imp.g_varchar2_table(35) := 'E7AC9AC7903733ECC02100F631D42FD58140E90140CAC2193C6AB87B214F9E87B3E1B35595D19E2A8477EA6E7229EB37A9950ED157C2699A9878170F1B02AD6A375CE760F3684CBED9B45D7A00B045752EFFF444DEE2E09F2ADF40A22E8DAAE65BD53E80';
wwv_flow_imp.g_varchar2_table(36) := 'AF181BC1E3467F34B6A1ABEAADB3FF9554E237D6337428803D63353E4EBBAF01E00CDDAB46FAA55633006F12D811C0F1899E061E8DE3324009B20B80A38D3BCA0C68966FA9C6DD8FAA9E1BEFB68FAA61F4C6B9BC94EAD8AE511793A89D1FC0C349348DAC';
wwv_flow_imp.g_varchar2_table(37) := '645500D71AEA976A00A5CF00F05C3E2B99A5106E004CB5DF20457FC6D2B111800B8D8DF80880DB8D6DE8AAFA94B9338633E4F79567FF25FD13B0CCE3701080FDFAEF825AE88740E90100A7C0381596425603C0233825C8EA00AE32EEE872006E31B6A1AB';
wwv_flow_imp.g_varchar2_table(38) := 'EAFF6BD83166FDBBDE507F9754A77C011ACE8D3EA42F2586044A0F00589887A98053C8679DE4E34ED1570F094798F18C896224ED1260FEFF3FB4DB64EDD63865FDFEDA57EBC2F1087C0000F39358C8E3D592E85C168AA5730281D20300BE955F9DE881E0';
wwv_flow_imp.g_varchar2_table(39) := '7E831313E9B256736075067F5F63236601F08CB10D5D549FF23B339CDF090E369776CDA7BF0CD9142DFAC55308DA0868413EE82C3D005804C07D89F81F50E961F6B412246581A5D178B2FC29AB2F4ADA25C0CD7F56D9F734FDDFAE2FD9DAFE86BF4B2C1A';
wwv_flow_imp.g_varchar2_table(40) := 'F660FB5D528B7509941E00BC03C0DFEAC2EAF33ABEFD7316A004B1DC5C44BE4C374ADF4ADA27F04D003BB7DFECB82D32F1D01CE35EA50B9A12B05C065807C0E54D0DD6F5ED11283D0020494E414DD11ED2515B2AA908060B1EBD2F01D3D154B0342C8F39';
wwv_flow_imp.g_varchar2_table(41) := '49DA27C09AEE1629AD4FAA96747668BF3B6A11805509EFAF01384E1EB023A00060A018108B02C5169E00E0FA6909F24A75BCF26D861DE5F13F1E0394B44F80B9152C8A5A69FABF7D5F0EB66855D8A9A459D178DEEBA3650500C0AD89060B0E8A6FEFC357';
wwv_flow_imp.g_varchar2_table(42) := 'B9DCCA34A3F7181BFBD3AA1EC15AC6367455FD4B46CFB1323BC67BA2ACF675B020100B03498C082800007E50658CDB30117F96E14C557D3051972651B3138063AD9407BD2C12C3623192760970A9CC6AD73675FFBBDDEEA8B540E053002E36A0711B8065';
wwv_flow_imp.g_varchar2_table(43) := '0DF44A6520A00000E0D122D6154F21C75415EA9826B7CBF24300EB1977900188C54635E36E47573F3D80E7A26B9954018B3AB1B893240E8115AAA43C37C4697ACC563953F84103BD52A900E07FCF40CA375626A661829AAECAE4558EF8BF561B7B6630EE';
wwv_flow_imp.g_varchar2_table(44) := 'E05713D67830EE6A52F5B31A5558BCC3F0AC7A52C046CA985CE9B706BABBFE7B6880B4994ACD0000A9D7AC39E5C5A9AF2ECACA4E9638F8836659E8A48BBE659FB859969B66530BCB4BA75AA64BDD370FFA66AA8E28FFDDC0903F03788F815EA9D40CC044';
wwv_flow_imp.g_varchar2_table(45) := 'CFC0B309DF5ABB9C10C832A9C8A043F5A312EFE7CDEA4D91E5A5395327894780FB2B268BD7FC882D3F0DE05D89754ADD10029A0118809172DDFA09004B0178B2634F22D76859AA7576E37E7DA79AA6DED6D886AEAA5F02C0DD069DFB3A00262092C423C0';
wwv_flow_imp.g_varchar2_table(46) := '444BA9BFBBCF277CF18A472EE39615000C382FE53E00EAE3B95BCE0474493CBCFD93E7C6002EEA1258477D616E051E9B4D2DF2697CE2F7562F428BC557339186D78CF38524EEAE3F750A00067CC275F994A563BB360BE0E5ED9FBE64BA58BECD48DA27B0';
wwv_flow_imp.g_varchar2_table(47) := '3C801BDB6F76DC16D74858B46B5C633A7A017FFF521FC963AD0ED6EC901811500030009E6B5FAC1C9772F77A97F6025865121BFEB5B9B9DA84C8414A128780D51200CB4B9F16A74B6A351060FA6C265B4A292F029826A542E99A98800280093C2E03B076';
wwv_flow_imp.g_varchar2_table(48) := 'C20784B3002B02E0172F6761CEFFEB0DD60F47627668952C66EF9C613AB79DF5152C4E57B0BC34979824F10830BF03F33CA41416629B39A542E9520030DA33B04F351D7550E207E4DA6AE961D5C43ADB56C71A07CC70E841D6ACCE8B5FE1C1908EDAC04D';
wwv_flow_imp.g_varchar2_table(49) := '6216CB2B2C2FBD4547997AE816EB763055796A791CC05CA9954ADF04029A0198C082857AAE367838CE00B0A581DE36549EEEE887990988F886CA9DC5923804A633E2CBF4D95E82CC38646D5B9DB3FA1E3F666082AA761A401FAA5201C0C40E48551868B8';
wwv_flow_imp.g_varchar2_table(50) := 'DB796C8DC7D772926DAA33BCA73832F87800CC00288947801BB65E8FD7FCA82DB3BCF402067A4B51B96438C29BBABFF7199C3C48DD47D7FA14004CEC9EAF0060D2110B99256C44B4D0DD5427D7EDF8C6ED49BA9C61D113678BF3E22F0398CA13848ED9F2';
wwv_flow_imp.g_varchar2_table(51) := '09A3A5B35F0258A6632CB3EA8E028089DDC54198F5CEF9D742E6354AB5DAA4AF4CDDF9A7263724B856E57F13400E2A780CD0E2A405834E6E1A93B44F809533CF6ABFD9715BE4E6E195C6BD4A174423A0006052B49C01E04C8095F024C24FAC948FA3772D';
wwv_flow_imp.g_varchar2_table(52) := '00973BB4EDF3D511A6F31CDAD54593B821EF0B061D63D538568F93B44F60D76A86E5C8F69B1DB745EE21FAD2B857E982680414004C8AD62ADBD9504BF600704434AFF7D6F0EE000EEFEDD6A877B1A2D822466BD3513BE6B4F17D01F0585E6AD91EC0C9A9';
wwv_flow_imp.g_varchar2_table(53) := '9516A2EF42001B19F475AF2A13E061067AA53210500030F2A3C037701E29B314BED11E57E526B8CBD28850867547009F33B66334F55D4CABEC14F59B666D02E07B060676E1C8AC01B671557263278F00A62E0444C394E2795CF7C4BD4001C0C87C39D89D';
wwv_flow_imp.g_varchar2_table(54) := '1B177DEDD64FAD92ECF0933A106092229EBDE6F4BA57E18E74BEFD7316409286000B59DD9146D5245A9872FA2923DD5D55BB2E801F19758ECF52EADF35A3AEFA54AB006064BF301AE66640963FF522A902814F86813F87FAEB9C25F11CA0787976DAB463';
wwv_flow_imp.g_varchar2_table(55) := '0A00AFB6D96083B6B85ECC7563497B04CEAE36F56ED65E738D5A62EA75E5ED6884ACDD8B15008CCED34B7EFBE116DE06E0760037016016BE17FA7C249804844990B8F781477216EAB3BD94B77353224F0048D2127810C0826955BEA94DA73DDA85CEA395';
wwv_flow_imp.g_varchar2_table(56) := '3CCE3B75BBCDD66A4D69806B618A7B910280D1F9920D8FA9AC10D7057DB7CEE4450C04F885E2E7EFC3FE4D053C42F5CEF019FC378FF37D3CB3017F282C25FEE9FBD1E9B9810BC2FA6DCF0DF471E33C001EEDE37EDD3A81C0A70D4B672B078083275101C0';
wwv_flow_imp.g_varchar2_table(57) := 'D84EE000C9CD47125F04EE0F859418EC48D213E0EEED43D2AB7D53A34E03B4079E67FF9903C0428E05B0B38562E99C404001C0F84F037FE8F88327F1438047962EF6634E7196F0848C55AE0A2D03B4F3B8CD182A91BEA39DE61AB7E239DF49E3CEE47A83';
wwv_flow_imp.g_varchar2_table(58) := '0280F13DC74A595C0A50CACAF159A5B882F507B64BA1483A4625C01AEEFF32E4B334805F19EAEF826ACEA47CDBB023CAEC68087F50B502807A4EB0CA955DCFBA72AE6251181E4F7CB29C2EBBEDE975C11716069E6338756DD1DFB675723F103713CFD776';
wwv_flow_imp.g_varchar2_table(59) := 'C335DBA36ED6EE901813500050DF0147553BEEBF5EFF725D198100F3335824A189D095EC9B64B64ACB2C6E2C0FCC32C192E6040E06B077F3DB5ABB836987995954624C4001407D074C1B960298935C929EC01900B64CAF561A4721C082402C0C64253F04';
wwv_flow_imp.g_varchar2_table(60) := 'B08195F28CF52E1ADEFE2DAB2B32C7C8A51933EC8CE90A009AB9D2326B56334BBB75F5C3D58FD6EA3AFEE5CAA96FA912463D06E0DD86563100602020A94FC0AA98D3500BE700C0B2D21263020A009A3B606B00DF697E9BEEE89100731B30F062BE03892F';
wwv_flow_imp.g_varchar2_table(61) := '0296C7C848824B005C0A90D423E0612FD3D55522B335EA99ABAB62135000D01BE13D011CDADBADBAAB0181FF0058CF6909E206DDE8ECA53CCA759971EF788E9D9B0225E313E0E0CBAC9F96B20B80632C0D90EE09041400F4FE341C5D1D85E2C32C894760';
wwv_flow_imp.g_varchar2_table(62) := '5300DF8FD7BC5A6E81C03D553199C55B68A7D726781C90C702256313E0FE99D31C405A18C0030EEC9009001400F4F71878584FEBAF077EEFDECAC90F965F423E2CDB07C041C6A66883E8D80EF8589845E346664BB9C1F0E8A865BFDDEA5600D0BF6BB89B';
wwv_flow_imp.g_varchar2_table(63) := '75FDFE9B510B43087C05C0092292050156CC647120EBDF121D2D1BF97161C53D9EBBF750D994470FB574EAE86B6DFDA57584A22F53AED4C696BEF80DBD99E783F9632EC987C045D5B42E0BCB588B9E9D493DC08D922B5B3B26E85F0AC05D4E6C91190EA2';
wwv_flow_imp.g_varchar2_table(64) := 'F62E39414140FFDE6409E603FA6F462D2426B071F586C90A811EE493D59E007E1725039B233FEF0484AAFF3971C450333403D0AE53B829909B0325CD0930B1CCCDCD6FD31D0E084C163676CDEFC0169A300B80679CD86265C64E005871CF8BA88AA3174F';
wwv_flow_imp.g_varchar2_table(65) := '0CB1430140FB4E590EC04DED37DBD9167F1B3606FDB5B33D2CA3635CDBE5F1580FC2DC112C3653AAF054064F67781196EF5EB2AAAAFA9A178364C700010500719E84B900FC00C087E234DF99564F04B063677A537647F8037FA72304A5169C618ADF171D';
wwv_flow_imp.g_varchar2_table(66) := 'F981A67C0DC071CE6C92390A00A23F0327A974EDA88CF5A310FDF14BAEE02700D64CAE7574857FA802719E3B7FD5914D314DF11684B1AFF401EBA758968F8EC93CEBB6350310DF7DD655D3E2F7B099064EF56FA76220CDA065723513379DE7CCD67F8744';
wwv_flow_imp.g_varchar2_table(67) := '453CAAD86561A5CC731D7690CB42873BB44B26690620D933B0492825BC44328D3E15FDB4328B3BFD3D4D15FB2495AF555CEF5DC8A1F9EB7438A5F421D5FAFA5E0E993F1ED6FE4BDF90E9D03503266906209D6BDE0A60DBF0F6EBF1073226896B009CA2CA';
wwv_flow_imp.g_varchar2_table(68) := '6D3111BB699B031107248FD2B565A7B9435E7DAF659175ACD7E3B760884D0A00D23BE8ED21106030E0E5D8542C0AD78781FFC2580AD4AE4B025CEF9DC6A5654057369EB23C368FF92DE894334F21F044D44B4EED93599A01307D06A60BB3010C04E631B5';
wwv_flow_imp.g_varchar2_table(69) := 'A47DE52CDDCB377E8F6B92EDF7562D0E27706A55EF9DB51CBCCAED61F06406C3DC84278C78C69FB3199EE5B38E924379E6646A9B66004CF1BFA9FC9D430281D9EDCDE9CB02AEED73E03FBDAF567473EE04F8F69FC3AEEF4BC2F1B41C1250710991833E3F';
wwv_flow_imp.g_varchar2_table(70) := 'DE7F279815920180C4390105007E1C3413804F0CF9F07FE7203CE6C3D4AB839F1C6C968DF10978A83D5FB7972C3CC5E9F447EADE90F83A0EA61CF873C82BC2297F4EFD7B4A4494D85DF9A85300E0D7579F02B05E0808BC05038383FEC5CA7AE8F70132B6';
wwv_flow_imp.g_varchar2_table(71) := '8C53D58F1ADBD044FDD3210860C21A2F790358C69703FFBA4D3A627C2D6B7970F39F2403020A0032705248A4B179955483677DAD828187019C1D3E4FE4814D561A13B81B406E475F6933131A7106837B59520BCBF7F2C82237F9F1F8704EA28D7F39794B';
wwv_flow_imp.g_varchar2_table(72) := '9B0033F3D680B9FF35B09ABBF95732D02B95F912581BC077AACF6CF97601F786408069BD63E6AE9812C0674216450EFCD366CA6CAD6A9982B93E249910D00C40268E1A62A60280FC7C569AC59C06DEAF639D6626C14BAB63773CD2CA64476D08077D9652';
wwv_flow_imp.g_varchar2_table(73) := '6609E329DA68D0B08D03AB9793FD0DF54B750F041400F400CDF8160500C60E90FA5109CC11DEFA39A075599E07C02C77237D1E0BFFFFF4D5699839877DB82F62E8FFD715465C2E59A32B9D29A91F0A00F2F3B60280FC7C5682C5DCB0CA29FF594AE8ACFA';
wwv_flow_imp.g_varchar2_table(74) := 'F83F02CF015805C05D62921F010500F9F94C01407E3EEBBAC50703D8BBEB9D54FF4624B04315F4B1EAA92443020A00F2739A0280FC7CD6558B998B9E6FFDDCB826298FC03955EE049E4E92644A4001407E8E5300909FCFBA68F18661F07F47173BA73E8D';
wwv_flow_imp.g_varchar2_table(75) := '4B40EBFEE322F27F810200FF3E1A6EA10280FC7CD6358B0F03B047D73AA5FED426F0AB2AF3E7D2B5AFD6856E09280070EB9A510D5300909FCFBA62F1BCE1AD9F9BBE246512F81D8005CAEC7AF77AAD00203F9F2A00C8CF675DB078A350E869C62E74467D';
wwv_flow_imp.g_varchar2_table(76) := 'E889C0333AE5D11337B737290070EB1ACD00E4E79ACE5A7C24805D3BDB3B75AC0E81D7014C5EE7425D930F010500F9F86AD052CD00E4E7B35C2D9E1FC0C90056CEB503B2BB15027F0F65CB5B694C8DF821A000C08F2FEA5AA200A02E295DD70F0196A03D';
wwv_flow_imp.g_varchar2_table(77) := '05C074FD34A27BB327F09B2A05F2A2D9F7421D1891800280FC1E0C0500F9F92C378B8F06B04B6E46CBDED6095CA31C0FAD3375D5A0020057EEA8658C02805A9874510F043E10B2BAB10EBDA46C021703E0C64F4987092800C8CFB90A00F2F3590E166F1A';
wwv_flow_imp.g_varchar2_table(78) := '8EF84D9D83B1B2312A010DFE51F1FA695C01801F5FD4B54401405D52BAAE0E81B702E094FF4E752ED6359D27C06741273E3AEFE6810E2A00C8CFD10A00F2F399578B17AB76779F086039AF068E63D71B0018C048FA27F07418F8CFEDBF29B5900B010500';
wwv_flow_imp.g_varchar2_table(79) := 'B9786A829D0A00F2F399478B370B53FE537A34AE864DC700B805C0993AA95083D6D89770B31FDFFAEFEBBB2535901501050059B9EB4D631500E4E7334F1673C067629F1D3D19D5C016BEA9EE07E0D470CF6A210898BD411BBA7402014DF917FC342800C8';
wwv_flow_imp.g_varchar2_table(80) := 'CFF90A00F2F399178B97047002808F7831A8A11D3702D8B74A4CC4BF4385FD391BC0FB1AB657F2E50F5799FD0E01A029FF829F020500F9395F01407E3EF360F117C3947FAEE95CBF1B067FCE008C240B577B9A0EA8A6B137F000DBB90D9C013A0AC0DF9C';
wwv_flow_imp.g_varchar2_table(81) := 'DB29F32213500010197084E615004480DAE126A701700480ED33EDE3CB61E0FF664DFBB703B04FB544A0258149815D16967FB8774222023A0590E133A0002043A71999BC0C806F01F8B091FE7ED5DE1B06FF9F346C884B010C02B8D1510270BA9F6FFD67';
wwv_flow_imp.g_varchar2_table(82) := '0886080C25A01980FC9E070500F9F9CCC2E22F8529FFB758286F41E78561F0FF7D1F6D6D08E0AB0096EFA38D9C6FFD43D81BC19A0E9AEECFD993916C570010096CC46615004484DB81A667007038806D32EE0BD7F2BFD1A2FD5C166020B0408B6D7A6EEA';
wwv_flow_imp.g_varchar2_table(83) := 'CE30F09F05E005CF86CA365B020A006CF9F7A25D01402FD4CAB887097D8E03C0DDFE39CA1FC35BFFF9118C9F3104C51BA8FC000020004944415401DC0C395784F63D34796D18F8CFF3608C6CF04F4001807F1F0DB75001407E3E4B61F1B6004E4EA12892';
wwv_flow_imp.g_varchar2_table(84) := '8E2BC2E07F77A4F6079B7D07802D0030105830B2AE14CDFFA50AF82E07C00D7E57A650281DDD21A000203F5F2A00C8CF67312D9E19C0A100B8E69FAB1C0B60CFEAF36AC20E30211203016E145C3AA1DE3654715A9F83FEE047D3FC6D502DB00D0500F939';
wwv_flow_imp.g_varchar2_table(85) := '5D01407E3E8B65F18A0038782E1E4B41E4769F096FFDDF89AC67BCE619007C02C01A8E83817F86D4C77CD3E7C0CF377F8908F4454001405FF84C6E56006082DD9DD22F87AC7EEE0CAB69D0CD61F0BFBEE6F5A92E1B0C067884921906A74BA578981E0EF8';
wwv_flow_imp.g_varchar2_table(86) := 'B75541C9ED006E0D83FF8B46B6486D47092800C8CFB10A00F2F3599B16CF1652B8720D3B57390DC05E003803E059586970D9219FF757A973DF1BA102E1A300B801929FDF02607074876730B2AD1B041400E4E7470500F9F9AC2D8B5705C08C788BB4D560';
wwv_flow_imp.g_varchar2_table(87) := 'E2765E096FFD2C4093B3CC1302817901F0DFB3027857F8CB7FF3C3FD0CFFA84E1E3C1BFE0EFDF71343067C9ED57F3D6718B23D5F020A00FCFB8ED3904B015822ACF5F26F6A790903D9C4063FF7873714BEB948D210D829ACF7A7D1D6BE965F87C19FEBD7';
wwv_flow_imp.g_varchar2_table(88) := '12111001070414003870C2301338E00FAE3F72B09FCF9F89FFB3E8F150439C89472E553DF1289E9A13C0C199A7B5BD284CF9738A5B220222E0848002007B47BCADDAECB3FA900FD71873154E673210B8A64ABFFAF35C3BE1C86EEE4C67D5B6851CD9D4D4';
wwv_flow_imp.g_varchar2_table(89) := '948300ECD7F4265D2F0222109F800280F88C47D2C09DC54307FD396CCC88AA95C7949898E417D50076B1D6391BB3DE351470697CA3931B1E0953FEDF73628FCC1001111846400140DA4782B5CAD70F833F13B89422DC33C0BCE467860D51A5F4BB977E72';
wwv_flow_imp.g_varchar2_table(90) := '63D9810036EDE56627F730F0DB1BC03D4EEC91192220022310500010FFB160EA51FE98F3936B59D6B6283D16020106037C43944C4C60EDF0D6CFE366B90A6B11EC524DFBFF27D70EC86E112885800280789E5E6CC8C03F7B3C3559B6FCFC90408035DF25';
wwv_flow_imp.g_varchar2_table(91) := '03A97099D2375761B9D97DABE3702C3D2B110111C880800280F69DB46618F83FDB7ED39D6CF14400DF06F050277B377EA7E6AF2E61E9DB9C9F975BC294FF0DE37757578880087821A000A03D4FAC068075C7D76BAFC9625A62DA530602FC3C594CAF01EE';
wwv_flow_imp.g_varchar2_table(92) := '09391CC0FB32EEF31961CAFFB98CFB20D345A048020A00FA77FBC7C2C0BF71FF4D15DF02F30A7036808140D7F39E73BA9C9BFD721566BAE3F1BE2373ED80EC1681D2092800E8FD0960B21EBEF1B39CA8A45D020F8420A08BEBC91F00B03F808DDA4596B4';
wwv_flow_imp.g_varchar2_table(93) := 'B5FBAA639DFB84AA7449154B990888407B0414003467C91DDA3B57E538B76A7EABEE6848E00761635957F60770D03F0C008FFAE52ACCE9F075003CD121110111C898800280FACE9B2CFCF03141CB4CF56FD3957D1260E1144E9773AD3957615539BEF5B3';
wwv_flow_imp.g_varchar2_table(94) := '1F390B5312E7DE879CF9CB761168958002807A383F15067FD60A97D8106000C069E7DC3609F23828D7CAB9E12F57F97360AFAC7EB97A50768BC0080414008CFD58F0C79B6FFC396765EBD283CFA500BE8172692007D9249CED9F3B076347B1F1EA10FC32';
wwv_flow_imp.g_varchar2_table(95) := '9BA3440444A0430414008CEE4C9ECDE65AE7D41DF27757BAC29DE7BB3BEECC94E1AD9FC97D7296E3AB7AF65FCDB903B25D04446074020A002665B320802300302DABC42F01561DDCD0A1794B86F5FE9C9F9FBF879996931DF295492220022D1150003031';
wwv_flow_imp.g_varchar2_table(96) := 'C8CF85C42CEF6E89AF9A894B80C7D138D07AD991BE39006E94CBB9BAE3AD61D98B7F252220021D26A00060C0B99387B7FEAF75D8D75DEDDACB00D60070A36107A70953FEDC2F92B3B05AE357AAA5AF1772EE846C170111A847400100C0843E4CC7CA8C7E';
wwv_flow_imp.g_varchar2_table(97) := '927C097C01C0D906E6F3F9E12EFF4F18E86E4BE5BFC3943F97BE242220028510283D00E094ED0900A62DC4DF5DEFE6015507B97933956C09E02000B3A55218410F77F7EF06E0CA086DAB49111001C7044A0E00F8A3A7371EC70F678FA61D1506B41E6FAF';
wwv_flow_imp.g_varchar2_table(98) := '75DB0C61A3DF4EB5AEF67BD12561CA9FC996242220028511283500F86648E75B98BB8BE9EE49007688D4DBE5C294FFAA91DA4FD5EC2121B94F2A7DD2230222E08C408901C0794AECE3EC298C630EF703705F409BB22D002E33CCD266A389DB7A34E450B8';
wwv_flow_imp.g_varchar2_table(99) := '30B15EA91301117046A0B400E0329DEF77F604C6358719033FDD828A99C35BFF975B68CBB2896B42629FAE1457B26429DD22903D819202805F0058297B8FA9034D097073DB279BDE34E4FA15C37A3FFFE62CDCECCA237E12111001117893402901004B98';
wwv_flow_imp.g_varchar2_table(100) := 'B2A08FA44C023F03B05A0F5DE71B3F4F15BCA3877BBDDCF26C98F2FFAE178364870888800F022504002746DC10E6C38BB2A20E013E073BD6B9301CEBE3D97EAEF9E72CB701E049855FE5DC09D92E0222108740D70300BEBDB10EBB4404488001000381B1';
wwv_flow_imp.g_varchar2_table(101) := '84BBFB39F873B77FCE725608605ECDB913B25D0444201E812E07001AFCE33D3739B7BC11002E098D247C5B66C0C873FEB9CAEB00F6A8925BF1A8AB44044440044625D0D500A0B4C1FF35008F84A2387F05F03400FE1DFCF001E0D1B5C1CFACE1DF7355E9';
wwv_flow_imp.g_varchar2_table(102) := '73DF53D5AC9FA2B0EFC8EA00B8237E50E60C033F33FBE52C0F8429FF6B73EE846C1701114843A08B0140D733FCDD0480271AFE14067D0EFCFFD7E7E3C2EA750C04F899B72AACB33280E5FB6CD3FBED4B87B571E6F0E7943F73FAE72C2C8FCC3D0BCFE4DC';
wwv_flow_imp.g_varchar2_table(103) := '09D92E0222908E40D70280F500FC301DBE249AEE05707D7584F186F0F7B9245A07A6C179F48D4592F877F1447A53A9793CD481E0E0CF6A7E39CB81DAEB92B3FB64BB08D810E85200F08150D084D3DAB90BB3B53190E15B1DDFF83D0867043600B03E80B9';
wwv_flow_imp.g_varchar2_table(104) := '3D18241BF0180096B0E6732211011110814604BA12004C06E00A00B9E767E70FF9E0C0FF52234FA6BB78AA2181000302890D01E636D80EC01F6DD44BAB088840EE04BA1200E47ED6FFFB008EAF6ACAFF32B3078AEBE8CC2EB7496676E76EEE71E1CD3FF7';
wwv_flow_imp.g_varchar2_table(105) := '7EC87E11100143025D080038007DCB90613FAAB9139D03FF4FFB69C4C1BD6B8640A0976C7B0ECCCFC604EEFFE0943FCFF84B44400444A02F02B90700DCADFEF3BE08D8DC7C4F085A58B1AE4BB2793886D6B50D831E7CC4D9214EF9F3D9918880088840DF';
wwv_flow_imp.g_varchar2_table(106) := '04720E00DE168EC32DDB3785740D705DFF28004702F0BAC6DF2F8D6901EC1592D1F4DB96EE1F20700680ADAAE38AFF111011100111688B40CE010007D15DDB0291A09D0BC2C05FCA1B1C8F0E3210C87D636682476354156F00D8392C1359DA21DD222002';
wwv_flow_imp.g_varchar2_table(107) := '1D24906B0090D379FF5F03381C00038012659770469D330392FA041EAC32396E1FF23FD4BF4B578A800888404D023906004C67CB75FF856BF6D1F2B2D301ECA9EC6CE06981C3AAC16C254B6764A4FB0761CA3F55D2A78CD0C854111081B608E418007C07';
wwv_flow_imp.g_varchar2_table(108) := 'C0D66D0188D40E7FB839F09F12A9FD1C9B7D6B0802725AB6B1E0BC2F80832D144BA70888405904720B00B8CBDCFB11281662E1E07F67598F52EDDEB21A1F6703587340328100EB3970CAFF724111011110811404720A00B8EB9F47A1164B01A6471D9755';
wwv_flow_imp.g_varchar2_table(109) := 'C7B4D6EDF1DE926E63DAE68BAAB2BC0B95D4E931FACA7C10DCE5CFD4BE1211100111484220A700809BC98E4E42A537257CF3D78EF7FAEC5881F02A05016F1E0B65054B89088880082425904B00C08D7F7CFB9F27299DFACA6EABEACBE7948FA07ECFE25F';
wwv_flow_imp.g_varchar2_table(110) := '797FA141C0F3D5E6D01D007C2F3E626910011110814909E412001C106AB67BF4E1AD003EEAD1B08C6CBA03C05219D9DBAFA9B787297F063F12111001113021904300305F78FB9FC984D0D84AAFD7D1B6D6BCC2199E0FB7D69ADF86788A655BBFE6C93211';
wwv_flow_imp.g_varchar2_table(111) := '10815208E41000B0F2D9571D3A44837FFB4E7908C002ED37EBA2C5FF8629FF935D5823234440048A27E03D00F86078FB9FCC99A738F8AF0280A95A25ED11783780BB00CCDA5E932E5A62563FEEF2E7729144044440045C10F01E001CE3B0EE39A7AA79D4';
wwv_flow_imp.g_varchar2_table(112) := 'EF69171EEC9E11DC4CC94C8F5376A46BE787C4552F74A43FEA860888404708780E00B8F3FF3E676F83CF84A37ECCEF2F8947E07300CE8DD77CB296F7007044326D5224022220020D08780E007602706C83BEA4B8F44B0098DF5F129FC021A19A607C4DED';
wwv_flow_imp.g_varchar2_table(113) := '6B60563FA6ABBEB2FDA6D5A208888008B443C07300F02B001F6AA79BADB4C2BCFEDBB5D2921AA94BE0926A166883BA173BB9EEA761F07FC2893D3243044440044624E03500E08F3E7FFCBD08F3FA33CB9FAAB3A5F5C8DCE12D7AC1B46A7BD6762880BD7B';
wwv_flow_imp.g_varchar2_table(114) := 'BE5B378A8008884042025E03009643DD302187F15471F067AA5F497A02AB8794C1E935D7D7F8CFF0D67F61FD5B74A508888008D812F0180030231C33C37911BDD5D97BC2F37E809BC2E0CF1C061211100111C88680C700E01B00F677429067D257A88AB5';
wwv_flow_imp.g_varchar2_table(115) := 'BCE4C49E52CD980AC08D55A9DC259D013811C08ECE6C923922200222508B80C7008079D297AE657DFC8BB80C71697C35D2508380B77D21DCE5FFDD1A76EB12111001117049C05B00C0819F0180073915C0361E0C910DFF23C03CFA1C783DC8E200940FC2';
wwv_flow_imp.g_varchar2_table(116) := '832764830888404F04BC05005EA6FF9F04F011008FF6445537C522C053012CBD3C5B2C050DDA6596CA5D1A5CAF4B45400444C015016F018097E97F6E3ADBC795A764CC2081839D1CB563564866AB94888008884096043C05005EA6FF9F07C022447FCAD2';
wwv_flow_imp.g_varchar2_table(117) := 'A3DD377A5E0077575922A777D055CE127959B272804326888008E444C05300E065FA9FE98777CEC98905DAEAA548D46119A72B2EF0B151974540048612F01400B0542ADFA82CE5DFE1EDFF7E4B23A47B5C020B875980C9C7BD32EE052CF3BB505C156A5D';
wwv_flow_imp.g_varchar2_table(118) := '04444004E210F01200CC08E0290053C4E966ED56B9CB7CDBDA57EB424B02ACCDE0E194C61A55E07AB52508E916011110815E08780900BCA47B5D1EC0CDBD80D43DC909AC0CE0E7C9B54EAAF02000FB39B04326888008884023025E0200EEB8E70FA9A5B0';
wwv_flow_imp.g_varchar2_table(119) := '8ADB5A9606487763023C12B84CE3BBDABD8141C82AED36A9D644400444203E012F01C08F00AC1BBFBB636AD814C0F78D6D90FA660476057064B35B5ABFFA1500330178B9F596D5A0088880084424E02500781CC01C11FB395ED3BFA952FE2E3ADE45FAEF';
wwv_flow_imp.g_varchar2_table(120) := 'EE08CC07801BF1AC37037209EB1A77746490088880088C41C04300F01E0767EEF70470B89E942C095C00606363CB9538CAD801522F0222D09C808700803FDEFC11B714BEFD731640921F812D009C6E6C362B157ECCD806A9170111108146043C04004754';
wwv_flow_imp.g_varchar2_table(121) := 'E576776B6475BB173F068039E6257912E032C0EF1D98EEE1BBE400834C100111C88580871FAD1F57495DD63104C60D88EB1BEA97EAFE093035F012FD37D3570B4B01B8ABAF1674B3088880082424E0210078B8DA7D3F7FC23E0F57B51700A67495E44BE0';
wwv_flow_imp.g_varchar2_table(122) := '78003B1A9BCFA4442C212D11011110812C085807006F01F08631A91500DC646C83D4F747E01300AEE8AF89BEEFE6E0EF213361DF1D51032220026510B00E003E00E00163D4D60C8CBBDF19F5FF35EE09A7FFB90C2011011110812C08580F7E1B00B8C490';
wwv_flow_imp.g_varchar2_table(123) := '148BFE2C62A85FAADB23C0531C2C126429D6DF27CBBE4BB70888406604AC7FB0B8FECE33D456723E804DAC944B6FAB0498C5F1B3ADB6D8BC316D046CCE4C778880081811B00E00CEAE92006D66D477AADDBBAA4078A8A17EA96E8F807530C99E6823607B';
wwv_flow_imp.g_varchar2_table(124) := 'FE544B22200291095807003700E0263C2B61FD81CBAC944B6FAB04789494474A2D85D9249955522202222002EE09580700BFAC766F7FD890D2BC001E31D42FD5ED11F09052FA6400DBB7D725B52402222002F108580700BF362CC2C3E38793C543AB960D';
wwv_flow_imp.g_varchar2_table(125) := '08BC5E95957EAB81DE4195DC87C0AA921211100111704FC03A007808C0024694FE09607A23DD521B87C0F300A68BD374AD567F0A60AD5A57EA22111001113026601D00FCD9300FFF9355E6B6D98DF94B7DBB049E00305BBB4D366AED6600CB37BA43178B';
wwv_flow_imp.g_varchar2_table(126) := '800888801101EB00E02900B31AF5FD0F00DE67A45B6AE3106051201607B212E6226065498908888008B827601D003C67380DCFFD078BBBF7900C6C42E05E008B35B9A1E56B5559B265A06A4E0444201E01EB00E0650053C6EBDE982DDF0AE0A346BAA536';
wwv_flow_imp.g_varchar2_table(127) := '0E815B002C1BA7E95AAD720FC20CB5AED44522200222604CC03A00B0CCDFAE00C0F8E18BA0DE3A006097ACBF5311B0AA491110812E12B0FEB1B29C01E074B1750DF92E3E53967DBAC7785947330096DE976E1110814604AC0300CB3D00DC30367F235ABA';
wwv_flow_imp.g_varchar2_table(128) := 'D83B81DF196FECD41E00EF4F88EC130111F81F01EB00C0F214C05F00CCA167A15304FE0FC0BB0D7BA4530086F0A55A0444A01901EB00C0320F00671F666C864B573B27F0ACF1263CE50170FE80C83C1110810904AC0300CB4C80FFAE2A014EA187A15304';
wwv_flow_imp.g_varchar2_table(129) := '5EABCA4B4F6ED823650234842FD5222002CD0858070096B50048EA5D009E6E864C573B25C084525C52B214D502B0A42FDD2220028D08580700D6D50057AFCE8D5FD388982EF64A603500571B1BA76A80C60E907A111081FA04AC03801B00AC50DFDCD6AF';
wwv_flow_imp.g_varchar2_table(130) := 'DC15C0D1ADB7AA062D087C1DC051168A87E83C1CC09EC63648BD08888008D422601D009C0D60B35A96C6B9E85C63FD717A5566ABE700F8BC71D7B7A90A4C9D6A6C83D48B800888402D02D601C05ED5A6AD436A591AE7A2FB8C73C7C7E95599AD5AEF2721';
wwv_flow_imp.g_varchar2_table(131) := 'F5A500DC55267EF55A0444203702D601C006002E318666CDC0B8FB9D516F99567A10A29EA5CE3C4EEA8808749F80F50FD607003C608C791900DC8C28C997C08A00AE33369F6FFE9C019088800888401604AC0380B70078C398D44E5542A06F19DB20F5FD';
wwv_flow_imp.g_varchar2_table(132) := '11F80680FDFB6BA2EFBBB9F6CF3D001211100111C88280750040480F1BE7E43F1FC02659784B468E46806FFF9C05B0146D00B4A42FDD2220028D097808007E0C609DC696B777C32300E66DAF39B59498C03B013C9358E748EAB401D0811364820888407D';
wwv_flow_imp.g_varchar2_table(133) := '021E02802300EC56DFE428572EEC602F42948E15D0A8878DA4C4ECE1BB5480BBD545111081B60878F8D1FA14808BDBEA508FEDEC0EE0C81EEFD56DB6044EAC660076B03501D70358C9D806A9170111108146043C0400730178B491D5ED5FAC1DDCED334D';
wwv_flow_imp.g_varchar2_table(134) := 'D1E2F4001EAC92EFCC9E42D9183A0EA8FE1B37224A44400444201B021E0200C2B22C0B3CE8ACF500703F82241F025F04708603735987E0670EEC900922200222509B809700803BF13F53DBEA3817EA34401CAE315BBDACCABCB7764C0535DB9E01C0F335';
wwv_flow_imp.g_varchar2_table(135) := 'AFD56522200222E082809700606700DF3426F21F00DC0CF85B633BA4BE1E81450130FDAFB568FDDFDA03D22F0222D013012F01003750FDA2A71EB47B93D672DBE519B3350FC97FD83F6E1EE5265289088880086445C04B00C029D4A7014C614CEF8990CE';
wwv_flow_imp.g_varchar2_table(136) := 'F549633BA47E6C02B301B8D3C1E63F5AF9E96AE6E807729808888008E446C04B00406EB70058D60140BE59722640E29700D3FE7AD875FF2F00EF759288C8AFB764990888804B029E02002F53BA9A0570F9A8FECF284F6FFF9702D8D0372E592702222002';
wwv_flow_imp.g_varchar2_table(137) := '2313F014002C0DE076278ED25E00278E18C10C2F81224DDB1EC0C97E51C93211100111189D80A700805632006020602D9C056099E0C7AD0D91FE8908CC199E11EBC43F834679FBFEE8711101111081DA04BCFD807959DB2540A698DDB136495D9882C009';
wwv_flow_imp.g_varchar2_table(138) := '00BE9C42510D1D3F07B04A8DEB748908888008B824E02D00F0B40C408729C39B9FC776D56A93E8357ECCD1EE7F47BE90292220023D10F01600B00B5E9601680BD3BB320890D813E0E0CF20C08B2C5995B1BEDB8B31B243044440049A12F01800785A0620';
wwv_flow_imp.g_varchar2_table(139) := '4F2E03703940624780D3FE9CFEF7246F00D80AC0999E8C922D22200222509780C70060290077D4ED4082EBB8117045007F4AA04B2A2625305FC812C90D801EE578005FF568986C1201111081B108780C00682F33AB793A5F7D51552360633D4A2604BC14';
wwv_flow_imp.g_varchar2_table(140) := 'FC19ABF33784D980DF9B10925211100111E88180D70060030097F4D09F98B7EC06E0A8980AD4F6240498677FD74CB83C07606B00176762AFCC140111289C80D700806EF915800F39F20FD77CB909ED3A473675D9942F023823C30E1E02609F0CED96C922';
wwv_flow_imp.g_varchar2_table(141) := '20028511F01C00EC04E05867FEF865080298035E128F0093305D55F97FFA782AA2B6FC93301BA0A2525131AB711110817E08780E006601705F956A75D67E3A18E15E4EF16E14A15D353940E03D007E0460D1CC8170F328970418C84844400444C01D01CF';
wwv_flow_imp.g_varchar2_table(142) := '0100611D03E06BEEA80DACF32A0888E398DB421AE638ADA76F750F0047A4572B8D22200222303601EF01C00701704098C2A1231504B4EF14A6D75DB9FD66CD5B3C1F00F734BC6A6E890C100111108140C07B004033B9F3FEEB4E3D760A80ED9CDA969B59';
wwv_flow_imp.g_varchar2_table(143) := 'DF03B0496E4637B0F7C1B024704B837B74A908888008442390430030479805E05F8FA2D2C1FD7BE5A08276CEEF00E0A4FE91A90511100111E88F400E01007BC81900CF67F01504F4FE1C7AAAF0D77B2F9ADD792A806D9ADDA2AB45400444A05D02B90400';
wwv_flow_imp.g_varchar2_table(144) := 'DC03C0BD00DC13E0550E05B0B757E31CDA353980D3017CDEA16D294CE291529E12E0491789088880082427904B0040309B5547C4CE4E4EA899C2D3424AD866779577F5FB007CDB59753F0B2FBC128280732D944BA7088840D904720A00E8A92BAB72C16B';
wwv_flow_imp.g_varchar2_table(145) := '3877D9D5E1E8E26F9DDB6965DE5A21C1138BFC4806087CD3F14657F9480444A0A304720B00560A95E1BCBBE351003B57C96C2EF56E6862FB98D79FF9FD259312B8361C15FC3FC111011110811404720B00C824A71DE3DC13C0BD01A50B53FA32AD33CFC2';
wwv_flow_imp.g_varchar2_table(146) := '4B4627F04C581260264489088880084425906300C00D81D703F8485432ED357E1E8083013CDC5E9359B5C4C43E2C90C3FCFE927A04BE0180274B2422200222108D408E010061701F00F703E4227F0BC7184B9AFEE65B3F67407229E7EBED59FA21804D01';
wwv_flow_imp.g_varchar2_table(147) := 'BCECCD30D9230222D00D02B90600A4EF3943E0684F07B3C03108B8AC1B8FCFA8BDD818C05E1D28E863EDA647C2A912A648968880088840AB04720E00A60D4B019E73038CE62CD6B96736B8BB5AF5A67D634B0260A63BADF5B7EB8B5D4261AC765B556B22';
wwv_flow_imp.g_varchar2_table(148) := '20024513C83900A0E3D60DA56373752233C2F1937B20C0819F496DF891C421700E80CDE334AD564540044A24907B00409FB1DCEA61993B2FD74040037FDA078F5903BF5005BEF7A4552B6D2220025D24D08500807EE1947A17A69D9937809BBFF8F725A7';
wwv_flow_imp.g_varchar2_table(149) := '0FDC5455FADA0D00AC1FFE3A357344B398796F3F000702983227C387D9CA9996EF666CBF4C1701117040A02B0100F703F054C0471D306DC30426121A0C046E6AA3C116DA587EC8C03F770BED5934B10E80CBAB2597B5C331BB252C8C684927F79070BF85';
wwv_flow_imp.g_varchar2_table(150) := '44044440047A22D09500809DE774348380997B22E1F7A6FBAB9CF93C3DC04080FDFB4722536702F009001CF819582D9C486F2C35FB867C0C83ED33153167023E1B4B618276F95CD0FEC713E8920A1110818E11E8520040D7F0C7F0FB1DF3D1F0EEB08ADC';
wwv_flow_imp.g_varchar2_table(151) := '55007E0380C1415B09861608833C077A0EFC4B7788E3C500361AA53F5C12C839E9CE0BE1A8E0051DF297BA220222908040D70200226316B5FD13B0F3A2E2B510083018F8439578E7C5F0E1C030F86FDA3A75F84C33E4DF7C0BE680CF0F332C765118207D';
wwv_flow_imp.g_varchar2_table(152) := '0CC0D36374EED36136E0FD190338226C88CDB80B325D04442025812E0600E4C7BCF33BA504295D6E09AC0EE09A1AD62D126602B8B93157E1CCD0868E3790E6CA55768B402709743500A0B3CE0C47A63AE93875AA1601A6213EBAD69503174D1E82803D1B';
wwv_flow_imp.g_varchar2_table(153) := 'DCE3EDD22743BE809F79334CF6888008F822D0E50080A4B9937E3D5FC8654D22021CF87BAD43F0F9B024304F225B63A8D92714618AD1B6DA140111E80081AE070074D17555CAE0153BE02B75A13E019E91EF372BE187C26C003744E62A636D7ECCB54FB2';
wwv_flow_imp.g_varchar2_table(154) := '5B0444A025022504000A025A7A583269E622002C46D4864C5735C24DA55F6BA331A3367E174EC7DC6DA45F6A4540049C12282500207E1E936A6B6070EACEE2CDE2663F6EFA6B5BB60A4B02EF6ABBE184ED7D05C00909F54995088880730225050074C541';
wwv_flow_imp.g_varchar2_table(155) := '00B8362AE91E81EB01AC14B15B4C88C4C441392F273165F6961119A9691110818C08941600D035DB57D902BF9D918F64EAF804AE06B0C6F897F57DC52C550B5C12D8AEEF96EC1A60E5491E1564BA6989088840C1044A0C00E8EE2D009C5EB0DFBBD4750E';
wwv_flow_imp.g_varchar2_table(156) := 'C8A933F9713A9D3A67C814E4EBE1A860D7B36666EA1E992D026908941A0090EE2600BE9706B3B44422C0A43D3F8AD4F678CDAE1A96049619EF42C7FFFD5B4A98E5D83B324D04221328390020DA8F03380C008F7C49F221F0CF50AFE056639359159169A7';
wwv_flow_imp.g_varchar2_table(157) := '732E45CDBD13AC8EC8D4D1121110818208941E00D0D5D3872020E775DD821E59DC08E04B007EEFA8D3BB852581291DD9D4C49467C35141EEA59088800814424001C00447F32D8EB301B316E2FB1CBB794918FC9F73683CDFA2794A607187B6D53589A764';
wwv_flow_imp.g_varchar2_table(158) := '581D512202225000010500133B9905611804AC5980EF73EA22077C6EBA3BCEB9D12CA9CC250196A5CE552E07B04EAEC6CB6E111081FA0414008CCC8A3BCB770790EB946EFD27C0FF95DCE4C7C1FF5EFFA6BE69E15B42AE89D42713DAC4F358382A78679B';
wwv_flow_imp.g_varchar2_table(159) := '8DAA2D1110015F0414008CEE8FA5427D759E9996A42790CB5BFF6864360A81CBFBD3A36B4D234B6AF3A480440444A0830414008CEF54EE0DD803C0FCE35FAA2B5A2290DB5BFF68DD5EACFA0F9C4DCAB9222573056CDA925FD58C08888023020A00EA3983';
wwv_flow_imp.g_varchar2_table(160) := '19E01804E45C14A65E4F6DAFFA238063009C646B46ABDAA706B037803D5B6D356D630F0258AB4A1EF4485AB5D22602221093800280667499378059E0B449AA19B7F1AE7EB53A8E796C18FC9F19EFE24CFFFB666149609E4CEDA7D99F07705EC6F6CB7411';
wwv_flow_imp.g_varchar2_table(161) := '108121041400F4F638AC168AAA709D57D21F010E281CFC4B2857CBAC813C2590A26E417F5E19FDEE5332AF85108B8BDA1581EC082800E8CF651F0B8100DF8C24CD0830031D07FECB9ADD96FDD5EF084B02392F27FD12008360666494888008644A400140';
wwv_flow_imp.g_varchar2_table(162) := '3B8E5B3A04029F01306D3B4D76B6952B005C0CE0ACCEF6B05EC7B60E4B02EFAA77B9BBAB5E01B001802BDD5926834440046A115000500B53ED8BE600C00235FCC4AC4D5FDB202717FE390CFA1CF8EF7062930733560C4B02FC9BAB1C12F21EE46ABFEC16';
wwv_flow_imp.g_varchar2_table(163) := '816209280088E7FA8F8437240603EF8DA7C675CB836FFB1CF85F746DA99D71EF0E03E8B67626F4ADF95A00AC8E28110111C888800280F8CE9A22CC0830BDF02A00668BAFD25403D787AFAA2A2CFE546FFB8DFCC0D325AC25C0E254390A4F6FF0A8E0AF72';
wwv_flow_imp.g_varchar2_table(164) := '345E368B4089041400A4F53AD3C47E12C0EA2118C8394BDC507283833E13F8E492B237ADE7EB69E3E9009E12E069815C65E7B0B93357FB65B7081443400180ADAB170A0101830256919BC1D69CDADA593EF6D7007E5CD9CD419F6BFC927608CC174E097C';
wwv_flow_imp.g_varchar2_table(165) := 'A19DE64C5A61D5C64F99689652111081DA041400D44695E4C2F7016045C24501308D2C8302EBC431BFADF632DC173EF70378933F10AC0000200049444154A04A08C38C7D92B804760B4B026F8BAB265AEB7F0A4705F5AC4443AC8645A03F020A00FAE317';
wwv_flow_imp.g_varchar2_table(166) := 'FB6EFEF83320B0D839CF73FA3B00601A58890D016E20DD2F04823616F4AF757300E7F4DF8C5A100111689B800280B689C669EFBF719A1DB35506003ACA68007E98CA85C39200734CE42AA702D82657E365B70874958002803C3CAB00200F3FC5B2923341';
wwv_flow_imp.g_varchar2_table(167) := 'BB87C441B174C46E977B4698EF80659E252220020E08280070E0841A262800A801A9804B3E1B4E092C90715F795490474425222002C6041400183BA0A67A050035411570D952614960BD8CFB7A1880BD32B65FA68B4027082800C8C38D0A00F2F0532A2B';
wwv_flow_imp.g_varchar2_table(168) := '795C944B027BA4521841CF8D00584C4B220222604440018011F8866A1500340456C8E55B8453027367DADF7F85A382B7676ABFCC1681AC092800C8C37D0A00F2F0938595CB87E9746611CC55BE5E55D1FC66AEC6CB6E11C8958002803C3CA700200F3F59';
wwv_flow_imp.g_varchar2_table(169) := '59C992C25C12D8C9CA8016F4FE3014CF6AA1293521022250878002803A94ECAF510060EF831C2CD83E2C09CC9A83B123D8F844382AF8FB0CED67C54F7EE60D7FF96FFA611A00530FFBFB7215B0F1F34AF83BF8BFF9979913997173F04326121188424001';
wwv_flow_imp.g_varchar2_table(170) := '4014ACAD37AA00A075A49D6D906579B9C39E67EE73952F5629B0CF726C3C07F665877D6299FB8F21C100338272F324D32C4B44A06F020A00FA4698A401050049307746C97B00B096C0B619F7E834005B39B19F259AB9D7626D001F0F6FF896A6B1F81633';
wwv_flow_imp.g_varchar2_table(171) := '7572F324CB2FDF63698C74E74B4001401EBE530090879FBC59C9D2BCAC25C0012C476121AAE500F02D38B57C28CCA20C0EFCA9F537D1F758555EFC66005757B312D75481DF534D6ED6B5E51250009087EF1500E4E1278F56AE13960496F6685C4D9BD887';
wwv_flow_imp.g_varchar2_table(172) := 'CB6B5EDBCF653302D8307C723D55F1420802180CF0F3683F40746FB7092800C8C3BF0A00F2F093572B170C4B025FF06A600DBB8E8898F888FB250607FED96AD892CB25AF8720E032002CC824118189082800C8E381500090879F3C5B3959382AB82F0016';
wwv_flow_imp.g_varchar2_table(173) := '17CA5138CDCD29F936E4DDD5E6BA4F8581BFAD36DBB02B561B7785204081402CC219B6AB00200FA72900C8C34F3958B9515812582C076347B0916FB54C217C6B8FF67F320CFA1CFCA7EBB18D9C6F532090B3F75AB65D0140CB402335A7002012D8429B5D';
wwv_flow_imp.g_varchar2_table(174) := '22CC066C9C71FF79CAE1A806F66F0D6053002B34B8A7CB972A10E8B2776BF64D01404D50C697290030764007D54F1BF605EC9371DF7E0C60ACAA88DCD4C7EC881CF89998473229819F85408A7F25851150009087C31500E4E1A71CADDC2C2C092C90A3F1';
wwv_flow_imp.g_varchar2_table(175) := '00FE168E0A3E3CC4FEF901EC0AE07300A6CCB45FA9CD3E11C091001E4FAD58FAEC082800B063DF44B3028026B4746D5302CC6AC729F5759BDEE8E8FA2D013008E0C09F733F2C9172F06710C06040520001050079385901401E7ECAD9CA994310C0CA7C92';
wwv_flow_imp.g_varchar2_table(176) := 'B2097039E0A02AEBE14D6563E87EEF1500E4E163050079F8A90B566E03604F007377A133EA43CF045E03B07755C4E8E89E5BD08DEE09280070EFA2370D540090879FBA62E5CA613660F5AE7448FDE899C00FC21E911C2B34F6DCE9526E54009087A71500';
wwv_flow_imp.g_varchar2_table(177) := 'E4E1A72E593967382AB843973AA5BEF444807B035861F2BC9EEED64D6E09280070EB9A890C530090879FBA68E557C392004BE04ACA26C0CD813B968DA05BBD570090873F1500E4E1A7AE5AC9EC79BB2B894E57DDDBA85F3F05B056A33B74B15B020A00DC';
wwv_flow_imp.g_varchar2_table(178) := 'BA46330079B8A6182B79B69E470579DC4E5236815B42EE85B22974A0F70A00F270A26600F2F053D7ADE4EF0583009E1298BEEB9D55FFC624F0208085C4286F020A00F2F09F02803CFC548A952C9DCB40E0C3A57458FD1C91C0935585C1D9C5265F020A00';
wwv_flow_imp.g_varchar2_table(179) := 'F2F09D02803CFC5492958B86208079F625E5127805C0DBCBED7EDE3D57009087FF1400E4E1A7D2ACE40F3F37077249608AD23AAFFEFE8FC0DFABF4C1EF148FFC082800C8C3670A00F2F053A9567216804B029C15909449E076001F29B3EBF9F65A01805F';
wwv_flow_imp.g_varchar2_table(180) := 'DFCD0B8095DAB6325C671BAC19CE6C60FFF08B4A963920C0FD009C0DD8C0812D32C186C0B9E137CB46BBB43626A000A031B2A837B02ADB6AC683FE681D643070567516FC1700B803582202C309CC146602180848CA24700C805DCAEC7A7EBD560060EBB3';
wwv_flow_imp.g_varchar2_table(181) := '190030EF3A3FEB1BBEE937A5C060E0AA100C30209088C050025F0A81C0FB84A548028786424245763EA74E2B00B0F1D664007602C034AB73D898D09AD65F01384179C25BE3D995863E168200661194944780B3009C0D903826A00020BD733E1706FF25D3';
wwv_flow_imp.g_varchar2_table(182) := 'AB8EAA9133020C04AE88AA458DE7448067C4B91CF0959C8C96ADAD10E0F1C05500306BA0C429010500E91CB36A78E35F339D4A134DE78740E03613ED52EA91C097C36C002B0C4ACA21704308025E2FA7CB79F55401407C7F2D12DEF8B788AFCA95869342';
wwv_flow_imp.g_varchar2_table(183) := '20F0902BAB648C1581D5C36CC04A560624D2FBD7AA5E02CBE70EFD3C36EC7F33101AFCCC35E4DF83FFDF2C896C4DA1E6C8E0F714BAA4A3210105000D8135B87CBAF0E073AD7FAA06F775E9D27F8620E070002F74A963EA4B4F04DE1B6602B6EEE96E9F37';
wwv_flow_imp.g_varchar2_table(184) := 'F1EDF6F2F0B9AC2A97CBA438FDCA3B0070A670F03375BF0D1ADFCFD4D1971ADB20F52310500010E7B1E0DA1777C27E284EF3D9B5CA24215C0BBE313BCB65700C025F0FCF43AED9E3FE02E02755E29BAB015C03E0C51890429B6FADD6D1B97CC8CF27002C';
wwv_flow_imp.g_varchar2_table(185) := '185157ACA61F06F0F1EA7833B9491C115000D0BE33F6067070FBCD66DFE26BE147FFB8EC7BA20EF44BE05D00787A24B73D01A701F86118F4ADD6B53F1A82811D0130EF422E72864A49FB73950280767DC229C0B5DB6DB273AD295B58E75CDAB8437B0038';
wwv_flow_imp.g_varchar2_table(186) := 'ACF15D763770D0E70997EBEC4C984433732CF074053758E622EB02E06FA4C409010500ED388253FD5C079CB59DE63ADFCAFD00F826C33D0292B2084C5BAD6DDF0160810CBA7D53F5967D3C00A6C2F62ACB8440E0B35E0D1C62178F042E97819DC598A800';
wwv_flow_imp.g_varchar2_table(187) := 'A07F57B308CA11FD3753640B6B8475D4223B5F68A7F9D6FA2DE77D67AA6B0EFCDF716EE750F3D60A8100F70A7816EE05E2C9008903020A00FA73C295003888497A27704075EB377ABF5D77664480BF374C23BD84539BDF00B07F18FCFFE5D4C6F1CCDABC';
wwv_flow_imp.g_varchar2_table(188) := '3A71C34D960B8F77A1D17FFF5B9805E0C6408931010500BD3BE0FB00729876EBBD87E9EE64EEF8D3D3A9932623025B56A9AFB991CEA33C0B80832797F27217EE0F38DB71795E6D0874F2842900E8CD119CF2E7D4BFA43D023CE2C474C292EE12B839ECFD';
wwv_flow_imp.g_varchar2_table(189) := 'F0D64326EAE1E07FBD37C3FAB067F2705491D5453D0A374BF328A5C490800280E6F079FC86EB8392F609F0ACB0AA0BB6CFD5438B1B03B8C08321C36CE0865456E37CC6A16D6D987431804FB5D150CB6D70A6659D96DB54730D09280068066C1B00A734BB';
wwv_flow_imp.g_varchar2_table(190) := '45573724B07C953F9C6F8A926E1160D21C6F6FA3AC57B16CB7308FD89B53AB243C5B39ECA766018C9DA200A0BE03BE08806B5792B804FE13D62E992846D20D022C09FC53675DE19BF146CE6C8A690E53921F1B53410F6D6B16A007686DDEA200A01ECD4D';
wwv_flow_imp.g_varchar2_table(191) := '55EFBE1EA896AE7A14C07AD5E7DE96DA5333B604386BC6D9332FC253273C7D529AF0882053177B12CD02187A4301C0F8F099BDEA47E35FA62B5A26F0DB90FB9CC180245F023300A02F99FED7839C0580B379A58AB79719CD02183E890A00C686FF7600AC';
wwv_flow_imp.g_varchar2_table(192) := '69ADA23E360FE9770174A9729C0D455BADDC5DCF41D78330952F37FC952E7B0138C41104CD0218394301C0D8E059D487C57D2476043EED3C15AB1D993C345F02600307A6FEA93A85F0FEEAFBFC6F07B67830C1D3C6C0F3007CDE0394D26C500030BAC757';
wwv_flow_imp.g_varchar2_table(193) := '086FFFA53D13DEFACB7D00F445AE99D9BCF14C690F13D270FA9F256D2D8519FE9819EF214B231CEAF67232E3AF00F8ACA83648E2874401C0E8C0BD7C39123F122ED531F1122BC849F222C094B44739309979F2BD9D4270800573854D811E0A3369A6CFE0';
wwv_flow_imp.g_varchar2_table(194) := '8950003032F49D017CD3C01F52393A012509CAEFE960353DEBEA6F5F55E2AE311F9C95005C01604AE3C78B29A23DE62A30C61257BD028049F972AA901BFF668A8B5EAD3724C00C810C0224791060821D967FB5944B016C68694026BAB9CF89FB9D2CE5F1';
wwv_flow_imp.g_varchar2_table(195) := 'EAA8F57C005EB334A234DD0A0026F5F8F9D55AE1674A7B1032E92F9701547A390F6779A897B1A2F6F1D47A58A6ADAA9ADE0EE003B5AE8E77914E03C4633B62CB0A0026C6A26C7F891FC086EAB811901B029520A8213883CBB9E1CE726D99BBDC3D251F32';
wwv_flow_imp.g_varchar2_table(196) := '704123951ED29C9F0880B55624890828009818B48735CB44AECF560DD399728F86C42F012ED55C6B68DE8B5565C965AA22382CF423A94FE04600ACC561250F84D31A56FA8BD3AB006082CBD7CCB43CE51D6113CFDF00F0F3F7F077F0DFECE1CC00DE193E';
wwv_flow_imp.g_varchar2_table(197) := '83FF9E170073B4BF37B3A7FE69008B02E0D121894F024C32C36433567298B17EAB7EF7AB9755035923C15216D471CD74F815004C60FD3D009BA443DFB326BEDD70D72E737AF3C35AE6FDC862A14ADB1A196549FB1A80E3FAE9B4EE8D4A80EBC94B47D530';
wwv_flow_imp.g_varchar2_table(198) := '7AE34C1DCDB7FFA78CF4E7AE961B27D737ECC497009C6EA8BF28D50A0006DCBD4895ADEC3EE79EBF0B00D735F905E5DB7D0C61320E6E80DCA24ADF3A4F0C052DB5C9598F0FB7D4969A6997C0ACC6832F730FE8086FEF3EE5B1409EB8B1120EFE0C022409';
wwv_flow_imp.g_varchar2_table(199) := '0828001880CC2943AF896606077E0EFEA964C610043010B0DE193C5A9F79BC8BC190C41701A6743DC7C8A4BBC3DBBFD2FDF6E700D6E0B01A84B50FA03FDF35BA5B0100307D78FB67562C4FC20D4C2784B77E2BBBDE160281ED1D6ECE618E79AE594A7C11';
wwv_flow_imp.g_varchar2_table(200) := '38B99A01D8D6C8A40301EC6FA4BB4B6AB937C83273222B4772AF8F2432010500C076004E8ACCB969F3AC5AC6089C054C3C08370C325317A7073D09AB34DEE9C920D9F266F21F2601B2908F56FB596EB550DC419D8F182E0332B067802F894C400100E0ED';
wwv_flow_imp.g_varchar2_table(201) := 'E8DF455501958D23FBBDD7E62F04B051AF3747B84F47022340EDB349E66A98A6CF367AB99DB92196E8E546DD332281530CF328A8F647A287B2F40060F56ACDF0AA44ACEBA8D9C7599DEE916CF6903674D02E4E1332D9CCF375E0EA9AE80478A4F40FD1B5';
wwv_flow_imp.g_varchar2_table(202) := '8CAC408346BBE05940E9F2769BACDDDA0F00B03890243281D20380FD001C109971DDE657354E9E52D74E5EB70A809F35B921E2B54A1F1A116EC3A6797CCC6A63A696831A3AABC6E57FA9F620CD5EE3BAB62FD16C4EDB444769AFF400801B5DB8E1C55A58';
wwv_flow_imp.g_varchar2_table(203) := '058B6BEC3909F72870B7B0B51C0960776B23A4FF4D02DF30DA84F76095C06621F9A0750256A701B88C345DEBBD51839310283D0060D63CEBAA7F8702E0B47A8E629DF18DCCB8E98B9BBF24F604CEAE36AE6E6660062BD9ED6BA0B7EB2A2D67FA984F42D9';
wwv_flow_imp.g_varchar2_table(204) := '3E233F612507001C346E8ECC77BCE67F5C15B6596FBC8B9CFFF71F0158D7D8461D1B327640506F954B9E89BC94F73FCE33F04C48211EA7F5D15BE54992DB522B2D4D5FC901C06EC6A5659F0C8537FE98F943C78D5F3C49319B613F3E0BE00243FD523D40';
wwv_flow_imp.g_varchar2_table(205) := '8035DDE7480C831B406748ACB324753F01C03A29A98509A5CE4BADB4347D2507003F347EFBE6F43977FD774138056BB98CC1B5CAADBB0032E33E4C01E05503FBF9E6CF1900491C0267006099F4D4C2CDD9DC53228948A0E400E009C3B756BEB57CD051A2';
wwv_flow_imp.g_varchar2_table(206) := '9F7E1F31260A621A566655B49087AB1980F75B2896CEFF11E071CC870C785CE96423AF41D793A8E4F14ACE96A6161DEB4C40BCD400C0EAC76AD0A55D4C60734C751E9F55FAAC84A99C39052DB121B01A80AB0D54B346C636067A4B51B94B95D8E96883CE';
wwv_flow_imp.g_varchar2_table(207) := '1E0FE0AB067A8B52596A00C0223756252759A8846FFF5DDBB4B470980598DCE81BF40500DC852EB12160550488BBFFB904258943C0CAAF5AD68BE3CF895A2D350060B9D09D13F01D49C5770C8BA5C4EEB265FA50E50388EDDDB1DB6719DEA30C4C50E017';
wwv_flow_imp.g_varchar2_table(208) := '17BA55B6546E0064F0218948A0D400E0FC50F73E22DA519BE6B13F1EFFEBA2307D276B195808372B6D69A1583ADF24C0C19F41406AF9B871FDFAD4FD4DAD8FF515B8BF27B5281D7002E2A5060037543F1A2B24E03B5C05130F31B5E66B06BA53A864F28E';
wwv_flow_imp.g_varchar2_table(209) := 'A752281A41C7650EF2111875DD85DA738CDED8DE67587FC005F8C846BCBBAA4CFA7F91758CD43CB3B4B21E81242281520380DF57674CE78BC875B4A64BA861CFCC7C1F3160CB32B4CB19E895CA0102DC00C88D80A9654AA3E387A9FB69A58F7B7A2C5E58';
wwv_flow_imp.g_varchar2_table(210) := '7E51E517E1EC8E24228152038017014C1591EB684D337FBED5E6C354DDB59A0AD651C0541E1E590F2BC759BCB129656C5CBF33C9D2B371558CD8FA35552640EE3F90442450620060F540D38DAC3B60F1658AF8084DD2B4D571B0BF0198396547A56B2202';
wwv_flow_imp.g_varchar2_table(211) := '564B004B01B84BBE8846607E000CAE534B17D2A4A766D6585F8901C007AA5AD30F3426D5FF0DD70358A9FF66B268E1BF465696F83C1BA19E442DCF6DEF68600C4B10B31E85240E012EAB31D5776A616A6FA6F896442450E20FE6AA0038BD945A4ADAD5FA';
wwv_flow_imp.g_varchar2_table(212) := '670073A7061C6600381320494FE040A38A7C5F017042FAEE16A371832AD532F72EA5963301305F8B242281120380CD019C1591E9684D9F5C95B7DCDE40AF854AABAA704C076C315D69C1D89B4E66816436C8D4C23D2716A96A53F7D34ADFB600F8DB955A';
wwv_flow_imp.g_varchar2_table(213) := '4E02B0436AA5A5E92B3100D813C0A1068E3E08C07E067A2D549E5B1DCDFA9C81624E57F23480243D01168C612E86D472A1614E8FD47DB5D0C7DF2C16E6492D0C269986581291408901C01E000E8BC874B4A699D79AEBA425082B1DEE65D0511E3FBCDD40';
wwv_flow_imp.g_varchar2_table(214) := 'AF54024C70C50A9BA985C74E3F9A5A6941FA4E347A13EF52B554B78F4B890100D70CBF65E0914D0030036109C2D2BC4C799C5A1603705F6AA5D2F7268115015C67C08205A058084A1287006758368AD3F498AD96F4C26480774065890100D3C59E66409C';
wwv_flow_imp.g_varchar2_table(215) := 'C7E37E66A0D742A555FE706585B3F0F6804E0EC28F1AA92FF1772C156A06750CEE520B734A301BA024228112BF383C5AF2FD884C476B7ADDAA0A20D3D596207C63E09B436A619AE527532B95BEFF1160A5CBC90C78E828601CE8CC5BC2F4E516B260B5B7';
wwv_flow_imp.g_varchar2_table(216) := 'E3210BC525E92C3100E0406C716E98330F169BA42C9E67AB1AE24CF2F4BC4587A5F34D023C81C1C431A98565A0591550D22E01AB8D9DEC055310BFDE6E77D4DA700225060056790076AFD20FB3646D09C23D16DC6B915AA600C0B750890D812BAB4D986B';
wwv_flow_imp.g_varchar2_table(217) := '18A866D0C7E04FD22E0166E35BA7DD266BB5C6A5A4796A5DA98BFA22506200609509B0A47AF59702E0B46C4AF96B755E9979E1257604BE6D98EBE29300188048DA216039FDAF4240EDF870DC564A0C000885534B6F1D974EBB179454AFFE4E004BB68B6F';
wwv_flow_imp.g_varchar2_table(218) := 'DCD67E0E609571AFD2053109582DFDB04FCC066831EB1493A765DB9B561553CF3332E0BB00789248129940A901C0BDD599651E194B2925D5AB7F1AC02C29E186A39D3B25D629751313E0AC0F677F2C44C701DBA5CEC19F41808530ABE471168A4BD3596A';
wwv_flow_imp.g_varchar2_table(219) := '0060F170FFA6FA715CB48007CCAADAE25646C73B0B7069ED2EBE1BC0FFD5BEBAFD0BB50CD00E534EFFB39EC7B4ED34D7B8952500F0254D129940A9010037E41D1E99ED48CDBF277CB10C5427536995116E1900BF4CD64B291A8DC0AF0D035D2D03B4F35C';
wwv_flow_imp.g_varchar2_table(220) := '5A4EFF3F57CDE6CDD84E37D4CA78044A0D00D604F093F1E044F8EFDB01382542BB9E9A3C1680C554FC34005EF404A2505B8E302CCEC38DA0CB02F863A1ECDBEAF6550098CCCB4278443BF506628B7EBAD0596A00309DD179F1CB8D8ED5A47CD8EEA9F22C';
wwv_flow_imp.g_varchar2_table(221) := '2C9E52218007002C9C58A7D48D4CC02A0BE4A035CC5DBFA39CD3330196E03DBDE7BBFBBF71570047F7DF8C5AA843A0D400806C58358E6F0B29E50D00CC56C737952ECA7CD5C6A1DF1B744CBB860DA08FA272EAAA78CC3300DE6E68D20A006E32D49FAB6A';
wwv_flow_imp.g_varchar2_table(222) := 'CEA2B1B8D222861D60DAE11B0CF517A5BAE40060FFCAD3DF30F0F6E70D8FD7C4EEAE55E6B02F19BFB5C4E69A5BFB9CC665C64D2B6155C20DAC9467AC779FEA7834CB965B09D7FFB991F4252B034AD35B7200603555D9E5E3805699C396027057695F5EC7';
wwv_flow_imp.g_varchar2_table(223) := 'FDFD3A80A38CED63CD8F0B8C6DC8493D5338DF56952CE709002B6122279EE4902422507200C07D007FA9D69B38ED955ABA5819D02AC5F2DF4206C0FFA476A2F48D4A60E92A25F0EDC67C7822844B7C7A2EEA39E26400DBD6BB34DA553AFF1F0DEDC80D97';
wwv_flow_imp.g_varchar2_table(224) := '1C009008CB4D5A449C7C33E11B4A97E4FCAA7AD7670C3A441FB274A8C4170106000C042C8599098FB1342013DD2B0160FA5D6B619AF6DF5A1B5192FED203806D0C8FE52D17362276E179FB689586F766A38E6C0EE01C23DD523B3A01EEAFE13E1B4B6152';
wwv_flow_imp.g_varchar2_table(225) := 'A28F03F89DA51119E8B65ABA1B8AE63A002B67C0AA5326961E00CC1622CEE90DBCDAA5DA003C36C4E343A9E50FE1F8DFABA9154BDFB8043C2C03D0480D2C63BBEA7827C726F7344ACE36EE83DCE50B4A0F00E85BBE3D7267BE8570A7343705E62C2C17CA';
wwv_flow_imp.g_varchar2_table(226) := '37080B39A42AECC49DCB129F043C2C0390CCF7007CCE272253ABAC32A28ED4E90F562747984344929080020060C3EA2DF20709990F55C5F3D23CF7FAA091FE7ED572CDEE7A0033F7DB508FF7B3A0D37D3DDEABDBE213B03A6A3B52CF4A2AC75DC7B35629';
wwv_flow_imp.g_varchar2_table(227) := 'BB47B28DA70F52E764A9C3A8F3D728000026AF36AF3D54CD04CC6BE46D0EFE0B19E9EE572D33F03108B010066D9FB6502C9DB50978590618345847030748B060174F404D55DB93712FE47E9103E2AA50EB231150003040E54000FB1A3E2237566B951F33';
wwv_flow_imp.g_varchar2_table(228) := 'D4DF8B6A66EB62C6352BE9C2F28915BB947AAD4EDA8CD647EEFB792A250087BA98AD93593B3DC813555D16E6F178D28331A5D9A00060C0E3F35439FAEF36AE42C508D82233612FCFBCF50EEF9F55294B994B41E29F0033F25DE2C8CC7F007887237B529B';
wwv_flow_imp.g_varchar2_table(229) := 'C22C899CFEF72239FDEE7961D69A1D0A0026A064010A9E1BB694B300309DAE6739B32A69FC05630335956BEC8086EAAF0DC7F11ADE16ED721E595D3E5AEB7E1BE63E0816DBF1227AFB37F6840280090EE05A366701DE66EC136EAAE38E65AED17912E6E8';
wwv_flow_imp.g_varchar2_table(230) := '3E2F6C5AB4B48B459C984341920F01066CDF7766EEE30016AD4A5733FF7C09C2D3466B3BEBA8DEFE8D1DA2006062079C04603B639F50FD9F435ACEAB1DD842135837E194B054626DD29600984341921701BE7533619437E97A1D89B9AB809933305ED6FC';
wwv_flow_imp.g_varchar2_table(231) := '07FDAFB77F07DF040500133B618990D1CECBEE5826E9E0E78F46CF0A4F276C1F3E46264CA496F9DD97F160886C684CC0AA52641D4337AE4EB35C54E7C2CCAEB12A78560793DEFEEB508A7C8D028049015B6F701B6E118BDD0C0602CF477E1E069BE79148';
wwv_flow_imp.g_varchar2_table(232) := '0EFC9C0DF1120CD1B64D1D4E2527724927D4DC096049A73DD9AB5AFE3BCCA96DBD98B51380637BB931C13D0F87653CFEB6490C09280098143E073C4E577236C0933057010381CB0130C7790CE13E0816F4E1E0EF6DA7B48AFEC4F078DA3699B7C1F39BF6';
wwv_flow_imp.g_varchar2_table(233) := '6900F6AE9EFFBFA6C5D2AAB659001C0460EB565B6DB7312DE3B5CBB3E7D614008C8C8E8320ABDB791566CE629AD59F57EBAA3C12F75A8F86CE1A8ED3310701A7D63D2724E274E6353DF653B7F921C0FD1B9E4FBA70B9ED380027FA4156DB922F579B1AF9';
wwv_flow_imp.g_varchar2_table(234) := 'E6FFDEDA77A4BF909B1199C343E280800280D19D6055DEB697C7822707FE0E80536AFC0CFE9B7F29EF0CE97A87FE7D4FD805DD8BBED4F79CEDE0E861EA3E77551F37A3DD546D2A7D97F30ED2464EA1F3DCBC77591FC0D73239DAD8A52AA8DE9F8B71ED53';
wwv_flow_imp.g_varchar2_table(235) := '00303A221E11BA12C0ECE352D405310970B7F02794F33F26E2E46DEF1896B3922BEE41E1056146801B50BD09532DF38D9F33963988EA3138F3920280B11DC2DDC1FC0190D811E08FDB8576EAA53912812B426017A9F9569BFD4F08023823106BFF4D1383';
wwv_flow_imp.g_varchar2_table(236) := 'E7086FFC1CFCDFD2E446C36BB5F1CF10FE68AA15008CEF144F15CDC6B7B65B57A84848B7FC39B437CCC4C71A183909D3083337073F5C1AF86742E3A703C0A97EEE85E167A684BADB50B57928BDDE465B6AA325020A00EA81E42C00670324E908F0AD3F97';
wwv_flow_imp.g_varchar2_table(237) := 'A9CD7454BAA5893BEE0FCEB44B2F8640E0C76196B0D78DB863757F8AF01DE0A6390EFA5367CA8A09D676C8D4F64E9BAD00A09E7B5941ECAA8C36CDD5EB95DFABEEAB4E39ACA10A617E1DD4A265DEAA05F6D2B57F87E3B90C5AEF07C034C3FFEAA1A16901';
wwv_flow_imp.g_varchar2_table(238) := 'CC0960E1F0C2C1D4BD2C579EB3DC551DAB5EA5A094CB59F94A01407D7771CA923F56FC924AE211783A1C13F2B8E92A5EAFCB6D99F9367E116AD47789026B0C3C1682010604433F1CE4877FE6EA2003FA9381BC9794E65D7ABE5AE98B028066183D163569';
wwv_flow_imp.g_varchar2_table(239) := 'D603DF57BF11DE1678AC51520E014E0FE778EEBE1C0FF5D653EE9F3AB0B75B75570A020A009A53DE16C0C9CD6FD31D3508AC54551BD4E05F0354072FF91E804D3AD8AF52BBA4CC9D19785E01406F4EDAA36379C37BA3D0EE5D1AFCDBE5995B6B4C4CC5A3';
wwv_flow_imp.g_varchar2_table(240) := '81EFCFCD70D93B090156335D07C06FC4C637010500BDFBC773B18DDE7B657327CBC4DE6AA35A5A1D11603AEA1F55336C4C512DC993C02B61F0678A728973020A00FA7390F7E226FDF52ECDDDCB56479C58DB40220224B062D834C6237092FC087019C773';
wwv_flow_imp.g_varchar2_table(241) := '1D95FC8846B4580140FF701504F4CE70D5AA2CE8B5BDDFAE3B3B4A8041C0751DED5B97BBC50A84DFED7207BBD6370500ED78544140738E4C6EC2CA6012111889808280BC9E8B9D43F1A4BCAC2EDC5A0500ED3D00CCD4C55CE10BB6D764275BBA07C0EEA1';
wwv_flow_imp.g_varchar2_table(242) := '8C71273BA84EB5464041406B28A336B41F8083A26A50E3510828006817EBDC008EA92AD76DD06EB39D698DB5E039F8B364B14404EA1058A04A87FB509D0B758D09015676540E0713F4FD2B5500D03FC3915A3804C05E719ACEB2D597C2C0AF1F8A2CDD67';
wwv_flow_imp.g_varchar2_table(243) := '6E34B3E6DD5D0D34EF34B744060C25B011808B85245F020A00E2F9EE7300F6A976C4F20DA664619A574E11DE523204F5BD6F0233870A7C3C322AB127A0C1DFDE077D5BA000A06F846336C037965D01EC16578DCBD69FAF0A997026E42897D6C9A81C094C';
wwv_flow_imp.g_varchar2_table(244) := '0380190399644662474083BF1DFB56352B006815E7A88DF1AD854140293F5CAC8A7668B5178255FD2422D02681C9009C0980336C92B404FE09E04B9AF64F0B3DA636050031E94EDAF61600B6AF4A872E99566D326DBF02704AF8814EA6548A8A24B06708';
wwv_flow_imp.g_varchar2_table(245) := '328BECBC41A799D96F6F007718E896CA4804140044023B4EB34C98C14F57020116F0E10EFF736D704A6BA104984B82476F594740128FC0C100F68DD7BC5AB622A000C08AFC80DEDC0301166FE1C07F892D46692F98C0FCE1E8ED9A053388D57516F3E169';
wwv_flow_imp.g_varchar2_table(246) := 'A69FC452A0766D092800B0E53FA89D7B03F836C3BFDE8F3A3D0CE0C7218B9F76F6FB787E64057064D8702B16ED10382D4CF9FFB59DE6D48A47020A007C798583FFD060C08B754CDCC3B4BD8303BF17BB6487080C25C0DA123C75C3BF92DE0830532783A9';
wwv_flow_imp.g_varchar2_table(247) := '0B7ABB5D77E5444001805F6F31ABE0F2433EA9530CDF0EE026003786BF3CD62711811C087C399CBA610221493D024CD6C523BB1CFCF93FD6CCFE00000335494441546F4901041400E4E3E47942A9D4C5C3A6A779C3DFA9FBECC2DF01FC09C023E1C3819F';
wwv_flow_imp.g_varchar2_table(248) := '9BFA9EEBB35DDD2E02960438F8F3E82D8301C9D804F8B6CF819F6FFF9282082800C8DFD9B3844060862A82673030D5B00F7BC888FEC5F019FC37D7F638E8F36CAF4404BA4A80CB01CC57BF76573BD847BFEE0270B4A6FBFB2098F9AD0A003277A0CC1701';
wwv_flow_imp.g_varchar2_table(249) := '11A84560AD70EA468100C081FFD4F0A9054F1775938002806EFA55BD120111189940C98180067E7D2B2622A000400F8408884089044A0A0434F097F884D7E8B302801A90748908884067092C0A60BD9087E3831DEAE50300AE06704DF8DBA1AEA92B6D11';
wwv_flow_imp.g_varchar2_table(250) := '5000D01649B5230222903B81D54220C08060F60C3BC337FDC141FF860CED97C989092800480C5CEA444004DC13980EC0EAD560FA1100CB84BF1E8D7EBA4A7AC46C9CB702B819C02F3D1A299BFC125000E0D737B24C0444C007811901B0A4F77243FE5A58';
wwv_flow_imp.g_varchar2_table(251) := 'C6645C8389B9F85703BE85173AA4530140879CA9AE8880082423C0445CA37D1830F423FF0170FF081FE6ED9088406B041400B486520D89800888C09B04A604C02060A4CF4C005E0E9F5746F8FB048007C55104521050009082B274888008888008888033';
wwv_flow_imp.g_varchar2_table(252) := '020A009C3944E688800888800888400A020A005250960E1110011110011170464001803387C81C1110011110011148414001400ACAD22102222002222002CE08280070E610992302222002222002290828004841593A44400444400444C019010500CE1C';
wwv_flow_imp.g_varchar2_table(253) := '227344400444400444200501050029284B87088880088880083823A000C09943648E08888008888008A420A000200565E9100111100111100167041400387388CC110111100111108114041400A4A02C1D22200222200222E08C800200670E9139222002';
wwv_flow_imp.g_varchar2_table(254) := '2220022290828002801494A543044440044440049C115000E0CC21324704444004444004521050009082B274888008888008888033020A009C3944E688800888800888400A020A005250960E1110011110011170464001803387C81C1110011110011148';
wwv_flow_imp.g_varchar2_table(255) := '414001400ACAD22102222002222002CE08280070E610992302222002222002290828004841593A44400444400444C019010500CE1C227344400444400444200501050029284B87088880088880083823F0FF014521B9B5DD948AEC0000000049454E44AE';
wwv_flow_imp.g_varchar2_table(256) := '426082';
null;
end;
/
begin
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(56273570253657548273)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/files/apex_data_pkg_villes_41499_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800319F3D58985C5286B50E0000055000000B00000056494C4C45532E6A736F6EC55CDB72DB38127D9FAFD0EA75578E7827F3663BC98CA7624713A7B2B5BBD99A822844428624149054A24CEDBF6F83A4D8A400D00AE58C1F92C88E';
wwv_flow_imp.g_varchar2_table(2) := '9AEA06D07D4E5FA03F7F9AB282A6F9F4F97F7EFA135EAFA6CF2DDBFAE91F5341B2F5F479562609FC90F1B47DBDE5DB322105E359FBAB5224EDEB986731DD16B414F82BF9F8E6B5A0F9966739DBD1DF5734676B7C888067B61FF9BF9FFE71D0A6D5C53A28';
wwv_flow_imp.g_varchar2_table(3) := '325D10C1F2E9912EB6ED3AA1E31CD4996E8A62FBFCC3B30FCFBE7CF972B19512171FC58767D3231DFBEFFB035488797AB164DF9AB74ADDA7BFDA2F5F4EF5DA4FEFA61DE5A77F9F7674B75BDDED56F75B2272CA92841EEB1F7AF3C0F6F5EAA707A1CA841C';
wwv_flow_imp.g_varchar2_table(4) := '766CB74A3F3CFB946FEB9F3E3C5B705190E4027EA318F8664532F2C728637AD638AD354E6BCDEB3DA87E64881BBA8EEBEA0D49E0FD950D5BB206AD491C9760D7C5A6481345EF174CD0583E7202EA4DEEF779F1A19CCF5F8629FCB4922FEDE026FBC8455A';
wwv_flow_imp.g_varchar2_table(5) := '7DEE8416D5FBDE556F8A92FA1FD8CBB4CC585CBD253F7F0DDC760DDC760DDEF132E165AE6CA8EB5AE1DCD6AF43D1C89C702497948B6C56D07893F184AF19CD2FC0AAEEE97CCD3E5241F663ECF15A7BBCD69E3B162BB638AEE3CC0D7B0ACB7B8A1D248961';
wwv_flow_imp.g_varchar2_table(6) := 'F32B2F44D5E9BFAB8D95016884F67EABBD8FDA93ACA06A7008DD28981BF4AF242A0B363CA5FAC3D893C85396744C7EF044BD19B021686D085A1BEE0B41F2252FC55AB123B082D070A6F256EA82960FED06DFD26CB616BCDCD2338F53CF9AB0B526C488C7';
wwv_flow_imp.g_varchar2_table(7) := 'B3624B938451A198E3058E6719621E8A9DE22565CE329AE72B1AB31C9E3DA33C218AA72C7E598C3967516B55D45A75C5C58A92F2AB629213595EA03769D9C8E8EDC178B7AE835756FF23484221B44D923AE6B12CE3BB3AE46565DABC857D2EE92102E6BA';
wwv_flow_imp.g_varchar2_table(8) := '48C930529E0D6BD61C31798E50A00335DB0E3CDFE077296182D159D2E25A5C4781DEA2A0BBC1569E1FBFAD0E9D403EF19666992666CCA5B3A9BAA7B4107CCB412551C9E977B3423B92D1228F79495647FABFFBD7E28D3366E991525876477F962AEA5B41';
wwv_flow_imp.g_varchar2_table(9) := '1445865021A480596F220AF61140B317AA47AB8CBCC1EA10073AF985EC847260ACC08348AD6A9DD08D7CBB5EE77B2A760042935BBEA20220A62504BF952461B53344930FA53DB79C4997564C1232B9EE520434F78528B7241975C6902458C812EE09CB8A';
wwv_flow_imp.g_varchar2_table(10) := '9954E53A2A983C38AAE9966DF295BC92A6B5E043E1A3B62B7E04BB7A662157B0902C54E447A18096EF7ACE10F5C9F436BC6619597341C66E435F61A40716F2839FC169F9528D5496E7F98E216EAF1B9927C0A19E41C8152C240B2FD827CD067890C51936';
wwv_flow_imp.g_varchar2_table(11) := '6025054E3085CD6426D40D0123E1D3425660212DB8CCD654A851CB0DBCC0C00848255169CEB215FD3ACB0B908AF584ED0EDCFFBAFEC58931ECCDC0CA2303B09002BC97C8558A25D139B3EB599EC199771DB913F60176C19F81FB032903FFDE1D13CF7167';
wwv_flow_imp.g_varchar2_table(12) := 'C9460CB711C3EB20F582666A7A0D06CD6D13F394622B2905C87242683284DCFBC5CD285310D36DC47400985B9269CCB07D53969DD01424F43B72B9DD262C66E5C81CB2AF70A72E80207E57C1D4CB542522A0B33DF70CC90B4B4D0CA4EF3B45957B8D2621';
wwv_flow_imp.g_varchar2_table(13) := '7D0310D26D84F44BF6750649C542F01DCDD414D2722DD7D1D0A94A3BF69566DB46F02497C8A462F2DD4A6CFD8E53746415E2B68DB87D05CF2934B6387343A96929051E82E89E0748AFA83E66D2D0F9865F4E785CFF4CEAF872EEAE2180DB08E0D7091532';
wwv_flow_imp.g_varchar2_table(14) := 'D59ABDA202FE73A598EA44A18995C407D98FB5ACD6EA6E1170707306E2AF8D506E2394BF66295F6BDC45666043A117528E4A50BF49707EBFB274C23AB0F12BE76942FE3626362164DB08D9409A34C8E7B8A16520208514787875474201C2B3DD81E714B8';
wwv_flow_imp.g_varchar2_table(15) := 'A64649C7754D4E5C493CC0D0CBA460CD295F3122B35320E551FD6193DBDEF13F3FF5B011B66D84ED5B5A7C53EC82644F179C20D7FBA6B7286F2C523C19F06D774885CFD9160711DA41845E50B10551A2323E2B702B6E62CEB4B707D9874FD219B4DB4138';
wwv_flow_imp.g_varchar2_table(16) := '76108EAF684EEA7A46A061AB961F5986EAE2520AC626C25AB18FCF09EB03DB489EEA202E3B88CB57325F5967747605BB2A5529858A0700D126845E36F24B14AF210B746D88ECC576A396EDFB016043129296F9AC97D5F5AC363758868DEE94F511CBDF88';
wwv_flow_imp.g_varchar2_table(17) := 'E4003D6A0C00F4F30D818A8B841E3854A7B8FF0023544A5475296B208B1D1B111CC4780731FE2D2FA9E650CE23533B494801FD89AC9202A97CFBD0533C6AA842EC206E3B88DB104937BAAE0368ED8586089D3632DF11D1CE772A846E07A1FB9A68167C1E';
wwv_flow_imp.g_varchar2_table(18) := '469E210AC4C4B4DE27E61697F78B8BBB97EFC61C198470A753A21FC894E67E106A8241CD3DEA4A4E9D2C49833E5561A0F9FB77BF759BC1F0FC2B49181FD5327110EC1D04FB3B084C7BD50ECFB5F5A9B8259B26F17E18EBAB6E5CA76DD57175A56F37B073';
wwv_flow_imp.g_varchar2_table(19) := 'A3F9AE83E8EF44471BB72065A2DA0BE4C6D880AD10B4DABC2DC89EC774073B8C08FB2EC2FEA58064073E85E9B4B66C03F49056EAA93B282E9202174981EC0C09BD5176606AD7A507A1136CA2B394ACC12AC99E8F0C198B202E920417490204FB2524B1C7';
wwv_flow_imp.g_varchar2_table(20) := '76446E601920A48E06A29633931B96F192158F52887711E95D44FA1765F607159F4B0548227B6EA234B5EEAB83E488C0AC27CAA35DDDEDF4E57B8D791173F9FE63D3ACC8366C4B719039E17489657E548B7B7B753FB9DEC83AE5282B10E8DD4E822E9AAC';
wwv_flow_imp.g_varchar2_table(21) := '88AA7E1246910E69708F6241A59C21D3950F7EE5269AB4ECBC34A66F1512001709C0E50E24D54C208CFCD0B033A496A84C79786F3E97A41010AD1F2B7E210970910454B306426D62859165DA96AC1179F2808C3CC0451EB0E0AC609AAA7C18F8BAA65C35';
wwv_flow_imp.g_varchar2_table(22) := '59D5889843D8364E4676117A0A239ABB88E6D7E0AE4BBAE34CDD83C0F50DE970E31AADE80F6C84F6876D10DA3D84F6575C483E387B05FFA3564DC3C0B60C9C042854B1A21F2B31B30919FD5AEC18FDF2085BE021887B08E2EF61F3895C51F5D4F89635DC';
wwv_flow_imp.g_varchar2_table(23) := 'FBDFB5B20F13AAF1CB8E88ED2162BF6785D8CFF252CCEE2953FB37A1E79A911B2423F72F3B3508DB9ED339F8094F979A35F79CC890FDC58DC809A1478E1215EC18DDC69B80F0EC213C5FE619ABE754E079033B613BB621F61078023D08E752F894B6A61C';
wwv_flow_imp.g_varchar2_table(24) := '9F914D66708DA26BDE79B3685E67940EC1FBB24C3202C70CB2EED9155773C5D0B66C838B908EE8929F34BDDA39788FB36F08DD1E4237E44E8A1996E51BA214644B4FDC36F710BB3DC4EEB732C99EDD92044251AE12912072CDC3B855EC12F201E9417E38';
wwv_flow_imp.g_varchar2_table(25) := '157EEC590C0FD1DB43F46E525BA6A3244164DB86B8D0A94B6C59CB4D4E2C4C7EE35CB0A6A0F965DBDDAC5B922EF918DB10E8BDA8E3484BB996D538A0E245813F0F4D21A22B77C2414C9A099433BA8ABD0955847C1F211F52845456E26BFCB925428D7A81';
wwv_flow_imp.g_varchar2_table(26) := 'E799B0333E481B30687C21BFA73982BDDFE9AA93C95B1E6FA866D42FF02C53CADE74DD8868440DE948B9942DF6BC1AE37A8459391F71DFB78F9CE496C0C2C34366AF789ED7798F7AAADCD044BDEA225E0A0FE99C13F399E23149283F8ACA634F14D201BF';
wwv_flow_imp.g_varchar2_table(27) := 'D37BCF0AA66103816B86975A62F6A92419F0AF2DCB72BD2DFDC2E3E84EA88F1CC0470E704D12A2A262E0F88E61E5E34AE00147065B5821272EF976E48AF7554768F711DA5FD3C93B70440D74388E6FC8FE125A5422A3D06264A6E777A6E4BB0578DDC86B';
wwv_flow_imp.g_varchar2_table(28) := 'E0D88EB1025FCDBA564704F1E1AFBFB8F15D07B0BF10C8037CE40157F5E77DD3E2CA3CF206CB2B4BFACD882B67F4537B5A23D4FB08F540FF53A28CD3FB816F19F48D2B81938B5A8F55D2F211CCFDE31AFC1DF9064C4AC1113F983BA62B019D2A7C564B9F';
wwv_flow_imp.g_varchar2_table(29) := '02E9E95E9C53FDED5FD740400F10D05F085D03C5F75D1386AF2A814E063290AED0AF75627352241818A20910D1834E635E5E18512381EF3BA161179AA35FCBFDA8A19400C13B40F0BE3D5C775867245655B6AA8ABCEEE0D05AC480D6C3B3FAE37D3740AC';
wwv_flow_imp.g_varchar2_table(30) := '0E3A58FD89C431E38AFA9E67529FD412C3A8A16F9F8D9C0A0810AD0344EB9B3CDFCF802CCC6E7909445977FDC5771D53C864206DD8803BF6893DCA822352075DA4DE912481147AB690E98D32BDE1BBB637D8A5490E0F182872E6F166B3E91F9C7F72B15A';
wwv_flow_imp.g_varchar2_table(31) := '8009A3EA0901C27680B05D4D1764B4DCD15983A49779FC5931C8F102C351DAB50F5811907CAAF1E3A073ED0DB1F8B792A55BF5961898639AE7FB5C4B3C718521408C0E10A3DF03E9D754747DC735F6D56A8907064B3ACF3D2F410A109C0304E73B38E7D2';
wwv_flow_imp.g_varchar2_table(32) := 'CB673FEBC6417D3BF24DF740A56042D7ED246833C9F0A39AB4035017224A879D1B6A64724FF719ADB36ECD39B3E7A6BB950999E552B41ED9A838E85089A4AEE54F6EC03060B60BC157657C74F56E3C8F0D11C743C471C80079A652102B8806431BA9C44E';
wwv_flow_imp.g_varchar2_table(33) := 'F01F2E2849F68FD57E0A11DE4384F73BD9D64F06AAF2BEBC1E66387DB52C889E5A0836587493CB51D4973B9E94872DFBFE6BB008FC2102FF3BC1F71AA635B7C3C1BA4951893D75C330444610222378DFDC54056C675465035E140E27503B7A107D28E8A9';
wwv_flow_imp.g_varchar2_table(34) := '1F34B26ADF330AF942D81D8967F14671252F8C4CE5A0A6A158893DF93E216F089137DC1311535D8FCE0B7DD3E46D7E90F9511C3F4412102209780D11F372B9D7DC83F142CF549D68825925A6DF81DB2A779447A9FF016715E3C2CE7DF74E171DF6564D4F';
wwv_flow_imp.g_varchar2_table(35) := 'BC706E9AD3DA5602E3C7685A2FC14F3EB3FA1B223508911ADCEC865AA65E1098EE7CB29DB963FA433B58111281A85F7F5F36A9A4EAE78163CAC364E57D49C553F878CF2824001112803BC6D5C17430C674E876B029E032B34CCA19F2B20564C51777F4D4';
wwv_flow_imp.g_varchar2_table(36) := '1B94833B81881F21E2BFE6E09499466DDBF46D23492D31908981CE33C8E51FE7C27D84481E75BAEF54ACD583E347A6C1EB0620A49459F1231E3C8E051F2D3A827684A02DC72E49B954EF9078BE6DBA7B9B1E64EA9352515F5BCB7DAF6EDF3FC20879DF0C';
wwv_flow_imp.g_varchar2_table(37) := '84E90861BAAE22FE565279175031C58B74DFDD80CD9BCFB5DC53C37584701D75ABF37BDD3704785E305CA8886BB9A169A082546892CB9767072204F00801BC42A34F25FBA8AAEF46834C777790FC2BCB127D8B10D02304F42B4ACA9DA64FE5B98165F097';
wwv_flow_imp.g_varchar2_table(38) := '6523F298DCA9AF69E74B6910A17FD9B71335AAB2FE7C70F5377B394BF35415216BDEFD5619C4EAFA1B33B6AC9A8531520FD7B30CDE4E51F4D4C4F001FB2E3392F963B6CC9A5B5D13D1464196045218F5AA5538EF6CD9CDCD8DA2370715BB33BAF8F3A9B7';
wwv_flow_imp.g_varchar2_table(39) := '8CFE0B7FFE0F504B0304140000080800319F3D58B53F63DD7E010000520600001300000056494C4C45535F70726F66696C652E6A736F6EBD94D16AC2301486EF7D8AD26B33B44E18BB13EDA4A06D69ED6EB621214D35234D4A922A43F6EE4B5351C6EC86';
wwv_flow_imp.g_varchar2_table(40) := '6178D140FF93FFF09DE4E41C7A8EE3168462A03E2AEC3A8FCE7DBF9124611B2D0ABE6FB4025289FBA7AD98219EEB0D4DC89D2C465EB67A7A704D5C1B80C41423C5850913854BD9C6B618362E090803051152FD4C8FE4AEC94EB9C4B9B1BFBAADB7E00269';
wwv_flow_imp.g_varchar2_table(41) := '46414AB0DFEA9CB282C8E02A511FAD9CD625935AD37F2FFA739C8359758CC1D26C7683994967C41C2A78AADA3BCB1891125280B6B0ADE0EE820550CC8CEDECFB5E757E361109DE2567A7428DFED9EF204C26E1FC368C02EA1BB4A40CA36507E4B01B6434';
wwv_flow_imp.g_varchar2_table(42) := 'B80CC27869CB114771B698AC8228BCCD9955BCAA295444035A1267C9E2FA93F3C6E3CB3CB5A0B620D3289CFAF1CACF92EB79868341C75D22CE10AE14AE8535D732FD57A0E3F4B12049FC348EC23478F6D7333F0DE65D3DF61B57C7D3D3F38B334976789D';
wwv_flow_imp.g_varchar2_table(43) := '634936D6DD94E8DEEF9C17164F51E8DEFE7B2AE8F5CDCCDC0A0A3DA89B312EDB5BF07A9F5F504B01021400140000080800319F3D58985C5286B50E0000055000000B0000000000000000002000B6810000000056494C4C45532E6A736F6E504B01021400';
wwv_flow_imp.g_varchar2_table(44) := '140000080800319F3D58B53F63DD7E01000052060000130000000000000000002000B681DE0E000056494C4C45535F70726F66696C652E6A736F6E504B050600000000020002007A0000008D1000002000496D706C656D656E746174696F6E2062792041';
wwv_flow_imp.g_varchar2_table(45) := '6E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(57416651123974089433)
,p_file_name=>'APEX$DATA$PKG/VILLES$41499.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/apex_data_pkg_kafka_sample_cities_529084_zip
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B0304140000080800207742587493E9D6CA06000084190000180000004B41464B415F53414D504C455F4349544945532E6A736F6E7DD84D6FDB381006E07B7E4590730D88DF646E76D2B405926C362972D9DD03ED701D766529952CA36EB1FF7D474E';
wwv_flow_imp.g_varchar2_table(2) := '10BE0AB93914680B0F250E1F0D87FC757412B761D39F9CFE71F48BFEFE7072CA8E3E9C347E134E4E4F6E7C17FB13FAF753FB34D47E1BDBE6E4947329AC10F4BF9D6FD6E3EFFF3DFAF012CB53EC95EFFA10EB3ABC8DB7AA325CBF8673081729FC724FBF7D';
wwv_flow_imp.g_varchar2_table(3) := '1329AD1452BE460A889429F26B3BD4EDD067CF9592D98ABF464B885629FA3AAEB2482185A8D27315446A88F4CD36E4D9B2D299EA355643AC49B177DBCEF7CB76E8D659BC61C6A6B736106F21D96DB37D0A751D43970DA08C50EC75000B03B834C0A2ED1E';
wwv_flow_imp.g_varchar2_table(4) := '821F7E64D1C231655EA31D44B30A56ABB4D09C1BA5D3D4E9F7100CCA6E43D31412578D334FD1C88C718C8E9B2C9819E75CCA1A43640C9585E3CF7ED765AFCE8CA2654BF1488D81B53B1F9BEDECCFA1AACEDC368EF3C847621C9380EC18B83BA8CDC4332D';
wwv_flow_imp.g_varchar2_table(5) := '958079203D06F63E75A16997F91230A5B48079203F06FECEE3B7C2C315E30C1E8EF618E09B37EBD0E54B208D32C91D43780CE4DD8F74866EE94BC9938A29481EF2E3D5DB65380F4D5EAD68888AA7497044C8D944C2956F0AE15C63B19A143B50783D1AF8';
wwv_flow_imp.g_varchar2_table(6) := 'F871933BA61178A5D208489103C579FC310BCDECA66B77A1C96B10938CCA6E1A06457210B9E842BF2D048B2A556C8E0839203CAB43B7A15232BB081DFDF4211B47380B983972E4C0F1326EDA75211563318170D4C841237D0B054F425A962873D4C851E3';
wwv_flow_imp.g_varchar2_table(7) := '86BEC34234ED1C903ED4C841E355D8FECC62A91461EA51A1008537A17B8AEBC6E71F1233F240FE65DF4283020C2E42EF9B032453F81A99760C363F942840E2622C24EB26CC16F461F96645B9CC3D104A3029267B3098FCADAB0FAFE34A5F06A1D2693D04';
wwv_flow_imp.g_varchar2_table(8) := '821400F2B61D4261329583164220480120AF86FAB1B49753B8B2694904421400F1CC179E5D59A72091A850E09EFC4E51A9B4B1903FB428C022B504AB7D1EAC244F85512045E1DE3EFFC60F753E02694E454920480920E7DD3A504F32C4D2088CA7094814';
wwv_flow_imp.g_varchar2_table(9) := '2941E4D85774E501B881B646A246C927ABBFF4316B2B9C342C2DBF447F12FC9D0FCD3FA1FB3E64EBEF78057EE5A4139CB682DDAA8D4DD65539E6383C1FF949AC87DD33FF6DC833609D030212054A1038DF5149C8BF66EBB485174083D24C006DA914E73D';
wwv_flow_imp.g_varchar2_table(10) := 'B463F870F427C1DF4D1BA92BC96BA9351ABA1B890225083CA3F42DC3AE8DF9F38DD4A9A04904A800E045DB6D670F617641BFCBB7346B384B8A151A5460F09E26E0C726219F86662C1954685081C1FBB8EDF6B37EE8667721E64D8655122C2AB4A80426A3';
wwv_flow_imp.g_varchar2_table(11) := '6E37CBC24B28DA14533852544071DE37F180C9D206FDCECB70C1D3CAA8C9210560CE87BAF13427AA8DB3459B17284B8D1B6406712AC049C5258BA47D061605612A80793BD02731BBF2F5C6C73EE76D9C84AE49A14F053E5F4A5C2C11378E73C82B1A550E';
wwv_flow_imp.g_varchar2_table(12) := '33B10CDD2E1E8E3E591A8CAE2C6413996A607AF6E837E3CEFD8C840EAEF9BA18A5809A46AB1ABB487F7CDBAE1E43E1346414C3732062D5FC6D4AAE3CBDC80341B968FBFEB906E593A37E28E558A35B8D7D65B38D05B6D49180108D6C35B03DF3B5CF7919';
wwv_flow_imp.g_varchar2_table(13) := 'A1053C1A956A504A3DF557CA6C8187103A952F3D39504F76EFD2C1D0082ED2F6AD51A806A18BE7B4FD2CBAA0F6019E8F3C35F0A44F7EE3B303B5369A4130C2D4D9F67DED7FFA98E3D6A612A905D008D300CCF3AED440682DC1A2418B06BBC9F13A214F9F';
wwv_flow_imp.g_varchar2_table(14) := 'D6C2A6471B7468F0FAE6397DDDD8D0AEF23198843B09A46790DE37BF5AC5368B560AA3919E017A5FFA7E3FA3AA3FBBA28E964A65E176424B01EB68D0A19938DCF9BAA63239BB192B4DD60E6BC955DA010C7234C0F170526DC2B00BB387313BDCCCFBD5F7';
wwv_flow_imp.g_varchar2_table(15) := '6C30A10CCC6E72E1033C7F1FE2E629BFADA168382119946940E6BDAF4B87442D24B44506691AA0794DA918533BFB543AE469EE74FABE0CDAB478E5E38FEFC29ECE19879A599809AFE0DECAA2520B4AA93CB54D4E9C199756C422528BA7EEB135ADDFD9DB';
wwv_flow_imp.g_varchar2_table(16) := 'F5789193C641A816A07EEDDA7DE14BA9B84D6B61D1A905A7F7CF5F0A1D13FA1872A38ADAC4B426168DDAC9D13BAE1EB33C286AF452A1B528D382CC3BDFAD42A94352D422C1FC11A3058C97A13F9E2FF785DB0B45ED0D0C30B97EC44633F47D5E2694ADE0';
wwv_flow_imp.g_varchar2_table(17) := '906191A3058E5F76EFB567CA18B801B3C8D1BDD9C3972F352B4FA31150711C5A7460F13AB6F959996261120E293AA078D976910E5B7934879B6387001D3697A15BE76FAD1D9C711DFA73E06F3CA3793A6565BBACD21C2EE01CCA73EAE8CD46F53B9DD2B7';
wwv_flow_imp.g_varchar2_table(18) := '311F4339B8847508D04D76EA7DE9F253290385D5213F07FC0E85F5DB10FFCEE3A54B5FA0437D0EF42D686FD815DA1445A74C48C0E4EA1BFC7DDEBF36E6F908BA8217985E7F83BEE71BE0A77868CAFF57B2540C2EB4AB91E15FF4E73F504B030414000008';
wwv_flow_imp.g_varchar2_table(19) := '080020774258216ADF461C01000078030000200000004B41464B415F53414D504C455F4349544945535F70726F66696C652E6A736F6EBD92CD6AC3301084EF790AA1B355D2B485D29BA13F04522794E4D4F62064B9569125A3951B4AC8BB77BD2E362531';
wwv_flow_imp.g_varchar2_table(20) := '851C72B0C0B33BC3B7D2EE268CF1C2582DE277AD39BB63D7492B81711F2806BF6DB5425AD049DFAA9DF23936B4259E2EAE669BF5E32DA73A1A0468AB55F481CA26EA0ABA5AA965EB02619C284C807818AFE0AB4DB71E744EF637DE790B1F14320653896D';
wwv_flow_imp.g_varchar2_table(21) := '8999504B45B83134BF566F9BCA016AF8F78A1F633B3AB1E66445CD7C7E4F7124E632CA7EEAD9206B652A69852A6537C1C5118BB0DA916DF0FD9D3A1F4C06C42778D70F4AFA3E1921CCD2E78711C6CB718E9BE9710E8A3D9164B55C6D16E97ABECCCE7367';
wwv_flow_imp.g_varchar2_table(22) := 'B5AF1B2BA341C013895FD2ECE93CAC41E2F6FF4389E73B6D662D03AE73BBEC40CF389D4EF63F504B01021400140000080800207742587493E9D6CA06000084190000180000000000000000002000B681000000004B41464B415F53414D504C455F434954';
wwv_flow_imp.g_varchar2_table(23) := '4945532E6A736F6E504B0102140014000008080020774258216ADF461C01000078030000200000000000000000002000B681000700004B41464B415F53414D504C455F4349544945535F70726F66696C652E6A736F6E504B050600000000020002009400';
wwv_flow_imp.g_varchar2_table(24) := '00005A0800002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(59639830597243846059)
,p_file_name=>'APEX$DATA$PKG/KAFKA_SAMPLE_CITIES$529084.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273074913547548064)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>15504256940285
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273075241370548064)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>15504256940288
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273075584746548064)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>15504256940290
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273075834193548064)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>15504256940294
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273076107209548064)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>15504256940297
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273076461147548065)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>15504256940298
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273076722973548065)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
,p_version_scn=>15504256940299
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273077063451548065)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
,p_version_scn=>15504256940299
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273077331420548065)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attribute_01=>'Y'
,p_version_scn=>15504256940299
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(56273077675688548065)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15504256940299
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(56273571602801548274)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/init
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(59178478323286300953)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P0_CLUSTER := KAFKA_PKG.getClusterId;',
'    :P0_MSG := 0;',
'    :P0_LOGGED := ''N'';',
'exception',
'    when others then',
'        :P0_MSG := 1;',
'        NULL;    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>15506173703991
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(59048708926128724331)
,p_name=>'CONSUMER_GROUP'
,p_value=>'test'
,p_is_required=>'Y'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(56273077951131548065)
,p_version_scn=>15505266688681
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(59048719527493727514)
,p_name=>'INSTANCE_NAME'
,p_is_required=>'N'
,p_required_patch=>wwv_flow_imp.id(56273077951131548065)
,p_version_scn=>15505266696398
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/dept_dname
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(56283114314070081495)
,p_lov_name=>'DEPT.DNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPT'
,p_return_column_name=>'DEPTNO'
,p_display_column_name=>'DNAME'
,p_default_sort_column_name=>'DNAME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/emp_ename
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(56283114102040081494)
,p_lov_name=>'EMP.ENAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EMP'
,p_return_column_name=>'EMPNO'
,p_display_column_name=>'ENAME'
,p_default_sort_column_name=>'ENAME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/topics
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(56294279115157009905)
,p_lov_name=>'TOPICS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TOPIC, TOPIC ID',
'  from #APEX$SOURCE_DATA#'))
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(56294442557214315639)
,p_use_local_sync_table=>false
,p_source_post_processing=>'SQL'
,p_return_column_name=>'ID'
,p_display_column_name=>'TOPIC'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(56273571968744548275)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(56273078520827548066)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(56273078723988548066)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(56273581307401548285)
,p_short_name=>'Subscribe'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(56277592044814632410)
,p_short_name=>'Records'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(56283110718415081398)
,p_short_name=>'Producer'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(56337732667900017005)
,p_short_name=>'Topics'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(56659427709764374901)
,p_short_name=>'Setup'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(59241598802190202995)
,p_short_name=>'Topics V3'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(59243215162114923799)
,p_short_name=>'New Topic'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(59543903642066584793)
,p_short_name=>'NB Points'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(62780979416028710680)
,p_short_name=>'Lags'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/drawer
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273079336459548067)
,p_theme_id=>42
,p_name=>'Drawer'
,p_internal_name=>'DRAWER'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Drawer-page t-PageTemplate--drawer #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Drawer" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Drawer-header">#REGION_POSITION_01#</div>',
'  <div class="t-Drawer-bodyWrapperOut">',
'    <div class="t-Drawer-bodyWrapperIn">',
'      <div class="t-Drawer-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Drawer-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>11
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Drawer-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1659739787629394056
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273079638860548067)
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273079961099548067)
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273080244722548067)
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273082241296548069)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim t-PageTemplate--leftCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main class="t-Body-mainContent" id="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273082586525548069)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273082837377548069)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273083186742548069)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273083488128548069)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273083756895548069)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273084043233548069)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273084340345548070)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273084625024548070)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273084988202548070)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273085221661548070)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273085556430548070)
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273085945210548070)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim t-PageTemplate--leftRightCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273086265841548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273086501018548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273086821955548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273087112803548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273087438222548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273087751599548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273088044937548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273088301240548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273088695867548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273088970651548071)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273089232388548072)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273089571636548072)
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273089915235548072)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#',
'<div class="t-Login-bg">',
'  #BACKGROUND_IMAGE#',
'  <div class="t-Login-bgImg"></div>',
'</div>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273090275075548072)
,p_page_template_id=>wwv_flow_imp.id(56273089915235548072)
,p_name=>'Background Image'
,p_placeholder=>'BACKGROUND_IMAGE'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273090542845548072)
,p_page_template_id=>wwv_flow_imp.id(56273089915235548072)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273090857181548072)
,p_page_template_id=>wwv_flow_imp.id(56273089915235548072)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273091110611548073)
,p_page_template_id=>wwv_flow_imp.id(56273089915235548072)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273092598529548073)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim t-PageTemplate--marquee #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273092854722548073)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273093134305548074)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273093443423548074)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273093762219548074)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273094019834548074)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273094365994548074)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273094619054548074)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273094942832548074)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273095287442548074)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273095543287548075)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273095862658548075)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273096186903548075)
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273096548430548075)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav t-PageTemplate--minimal" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273096861741548075)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273097140596548075)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273097440715548075)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273097784798548076)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273098098478548076)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273098341371548076)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273098676275548076)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273098962336548076)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273099298800548076)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273099555675548076)
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273099929198548076)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard t-PageTemplate--dialog #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMEN'
||'T#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273100219582548077)
,p_page_template_id=>wwv_flow_imp.id(56273099929198548076)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273100595244548077)
,p_page_template_id=>wwv_flow_imp.id(56273099929198548076)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273100889088548077)
,p_page_template_id=>wwv_flow_imp.id(56273099929198548076)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273101466936548077)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim t-PageTemplate--rightSideCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273101762715548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273102064453548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273102340446548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273102676204548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273102978278548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273103215238548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273103524097548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273103848894548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273104174971548078)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273104470069548079)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273104704444548079)
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273105163819548079)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273105421674548079)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273105758180548079)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273106038431548079)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273106337261548079)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273106620582548080)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273106949481548080)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273107210726548080)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273107593877548080)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273107806042548080)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273108127029548080)
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(56273108522446548080)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard t-PageTemplate--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#'
||')'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273108853608548081)
,p_page_template_id=>wwv_flow_imp.id(56273108522446548080)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273109153887548081)
,p_page_template_id=>wwv_flow_imp.id(56273108522446548080)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273109477627548081)
,p_page_template_id=>wwv_flow_imp.id(56273108522446548080)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(56273454321915548144)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel  t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidd'
||'en="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSE'
||'S#" aria-hidden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(56273455087577548145)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(56273455118421548145)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconLeft'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273110054207548081)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY##SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273110376616548081)
,p_plug_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273110673284548082)
,p_plug_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273110904425548082)
,p_plug_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273111234882548082)
,p_plug_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273111546056548082)
,p_plug_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273111885474548082)
,p_plug_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273115244624548084)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273115531491548084)
,p_plug_template_id=>wwv_flow_imp.id(56273115244624548084)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273115803393548084)
,p_plug_template_id=>wwv_flow_imp.id(56273115244624548084)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273116127289548084)
,p_plug_template_id=>wwv_flow_imp.id(56273115244624548084)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273116457363548084)
,p_plug_template_id=>wwv_flow_imp.id(56273115244624548084)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273116639078548084)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273116987469548084)
,p_plug_template_id=>wwv_flow_imp.id(56273116639078548084)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273117200320548085)
,p_plug_template_id=>wwv_flow_imp.id(56273116639078548084)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273117574157548085)
,p_plug_template_id=>wwv_flow_imp.id(56273116639078548084)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273117884833548085)
,p_plug_template_id=>wwv_flow_imp.id(56273116639078548084)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273118077847548085)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'      #SUB_REGIONS#',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273118361762548085)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273118627514548085)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273118938686548085)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273119241029548085)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273119577237548086)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273119858280548086)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273120127857548086)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273120465900548086)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273120709541548086)
,p_plug_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273122367178548087)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273122678018548087)
,p_plug_template_id=>wwv_flow_imp.id(56273122367178548087)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273122947284548087)
,p_plug_template_id=>wwv_flow_imp.id(56273122367178548087)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273123272331548087)
,p_plug_template_id=>wwv_flow_imp.id(56273122367178548087)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273124205599548087)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-header">',
'    <div class="t-Region-headerItems t-Region-headerItems--title">',
'      <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'  </div>',
'  <div role="region" aria-label="#TITLE#" class="t-Region-bodyWrap">',
'    <div class="t-Region-buttons t-Region-buttons--top">',
'      <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'      <div class="t-Region-buttons-right">#NEXT#</div>',
'    </div>',
'    <div class="t-Region-body">',
'      #BODY#',
'      <div class="t-Region-carouselRegions">#SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Region-buttons t-Region-buttons--bottom">',
'      <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'      <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273124533401548088)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273124893693548088)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273125144472548088)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273125461560548088)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273125769383548088)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273126005120548088)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273126348984548088)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273126677763548088)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273126952765548089)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273127285633548089)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273127542119548089)
,p_plug_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273134161375548092)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" data-region-id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><span class="t-Button t-Button--icon t-Button--hideShow"><span class="a-Icon _a-Collapsible-icon" aria-hidden="true"></span></span></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 id="#REGION_STATIC_ID#_heading" class="t-Region-title" data-apex-heading><button class="t-Region-titleButton" type="button">#TITLE#</button></h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>',
'<script>',
'    (() => {',
'        const region = document.getElementById(''#REGION_STATIC_ID#'').classList;',
'        const pref = sessionStorage.getItem(''ORA_WWV_apex.toggleCore.a_Collapsible_#REGION_ID#.&APP_ID..&APP_PAGE_ID..preferenceForExpanded'');',
'        if (region.contains(''js-useLocalStorage'')) { region.toggle(''is-collapsed'', pref === ''false'' || region.contains(''is-collapsed'')); }',
'    })();',
'</script>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273134478506548092)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273134717480548092)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273135004021548092)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273135331086548092)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273135630397548092)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273135958124548092)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273136234780548093)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273136532926548093)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273136801935548093)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273137169694548093)
,p_plug_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273143911632548096)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY##SUB_REGIONS#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273144237919548096)
,p_plug_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273144543024548096)
,p_plug_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273144820657548096)
,p_plug_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273145184725548096)
,p_plug_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273145450025548096)
,p_plug_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273145717227548096)
,p_plug_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273148539847548098)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-top">',
'    <div class="t-HeroRegion-wrap">',
'      <div class="t-HeroRegion-col t-HeroRegion-col--beforeIcon">#UP#</div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--left">#REGION_IMAGE#<span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-HeroRegion-title" data-apex-heading>#TITLE#</h1>',
'        #BODY#',
'      </div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'    </div>',
'  </div>',
'  <div class="t-HeroRegion-bottom">#SMART_FILTERS#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_image_template=>'<img class="t-HeroRegion-icon" src="#REGION_IMAGE_URL#" alt="" />'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273148888269548098)
,p_plug_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273149124879548098)
,p_plug_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273149430546548098)
,p_plug_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273149792667548098)
,p_plug_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273150048001548098)
,p_plug_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/image
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273152023585548099)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="t-ImageRegion #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#><img src="#REGION_IMAGE_URL#" alt="#REGION_IMAGE_ALT_TEXT#" #REGION_IMAGE_ATTRIBUTES# /></div>'
,p_page_plug_template_name=>'Image'
,p_internal_name=>'IMAGE'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1673953645642781634
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273152310599548099)
,p_plug_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273152688853548099)
,p_plug_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273157418412548102)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273157710946548102)
,p_plug_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273158089462548102)
,p_plug_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273158380600548102)
,p_plug_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273158693851548102)
,p_plug_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273158944856548102)
,p_plug_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273159214769548102)
,p_plug_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273159574428548102)
,p_plug_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273159896498548102)
,p_plug_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_drawer
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273162090929548103)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'  <div id="#REGION_STATIC_ID#" class="t-DrawerRegion js-dialog-class-ui-dialog--drawer #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'    <div class="t-DrawerRegion-wrap">',
'      <div class="t-DrawerRegion-bodyWrapperOut">',
'        <div class="t-DrawerRegion-bodyWrapperIn">',
'          <div class="t-DrawerRegion-body">#BODY##SUB_REGIONS#</div>',
'        </div>',
'      </div>',
'      <div class="t-DrawerRegion-buttons">',
'        <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'          <div class="t-ButtonRegion-wrap">',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--left">',
'              <div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div>',
'            </div>',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--right">',
'              <div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Inline Drawer'
,p_internal_name=>'INLINE_DRAWER'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal'
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1659526333647509386
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273162348817548104)
,p_plug_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273162607958548104)
,p_plug_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273162922315548104)
,p_plug_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273163273977548104)
,p_plug_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273163558930548104)
,p_plug_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273163859962548104)
,p_plug_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273164144540548104)
,p_plug_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273164432733548104)
,p_plug_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273166645138548105)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273166970221548105)
,p_plug_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273167215700548105)
,p_plug_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273167549963548105)
,p_plug_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273167876055548106)
,p_plug_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273168165023548106)
,p_plug_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273168440811548106)
,p_plug_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273168775698548106)
,p_plug_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273169047369548106)
,p_plug_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273172050697548107)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'    <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'    #PREVIOUS#',
'    #BODY#',
'    #SUB_REGIONS#',
'    #NEXT#',
'</div>',
''))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273172344877548107)
,p_plug_template_id=>wwv_flow_imp.id(56273172050697548107)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273172666229548108)
,p_plug_template_id=>wwv_flow_imp.id(56273172050697548107)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273172928083548108)
,p_plug_template_id=>wwv_flow_imp.id(56273172050697548107)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273173270629548108)
,p_plug_template_id=>wwv_flow_imp.id(56273172050697548107)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273173586285548108)
,p_plug_template_id=>wwv_flow_imp.id(56273172050697548107)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/item_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273174132358548108)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ItemContainer #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ItemContainer-start">#BUTTON_START#</div>',
'  <div class="t-ItemContainer-item">#BODY#</div>',
'  <div class="t-ItemContainer-end">#BUTTON_END#</div>',
'</div>'))
,p_page_plug_template_name=>'Item Container'
,p_internal_name=>'ITEM_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1568547778806319863
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273174448140548108)
,p_plug_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_name=>'Item'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273174713434548108)
,p_plug_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_name=>'Button End'
,p_placeholder=>'BUTTON_END'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273175062060548109)
,p_plug_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_name=>'Button Start'
,p_placeholder=>'BUTTON_START'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273176698548548109)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    #REGION_IMAGE#',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <h2 class="t-Login-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_image_template=>'<img class="t-Login-logo" src="#REGION_IMAGE_URL#" alt="" data-app-icon />'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273176991120548109)
,p_plug_template_id=>wwv_flow_imp.id(56273176698548548109)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273177243457548109)
,p_plug_template_id=>wwv_flow_imp.id(56273176698548548109)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273177548593548110)
,p_plug_template_id=>wwv_flow_imp.id(56273176698548548109)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273177860958548110)
,p_plug_template_id=>wwv_flow_imp.id(56273176698548548109)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273178170133548110)
,p_plug_template_id=>wwv_flow_imp.id(56273176698548548109)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/search_results_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273179134010548110)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ResultsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ResultsRegion-search">#SEARCH_FIELD#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>',
''))
,p_page_plug_template_name=>'Search Results Container'
,p_internal_name=>'SEARCH_RESULTS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>11
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>1554292095258992441
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273179437392548110)
,p_plug_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_name=>'Search Results'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273179746924548110)
,p_plug_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_name=>'Search Field'
,p_placeholder=>'SEARCH_FIELD'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273180023731548111)
,p_plug_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273181817394548111)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273182110651548111)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273182402351548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273182700267548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273183002103548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273183323199548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273183675127548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273183999508548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273184279509548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273184565465548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273184801377548112)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273185122579548113)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273185436584548113)
,p_plug_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273191644227548115)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">#SUB_REGIONS#</div>',
'</div>'))
,p_sub_plug_template=>'<div data-label="#SUB_REGION_TITLE!ATTR#" id="SR_#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273191992269548115)
,p_plug_template_id=>wwv_flow_imp.id(56273191644227548115)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273192277929548116)
,p_plug_template_id=>wwv_flow_imp.id(56273191644227548115)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273194258671548116)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#">',
'  <div class="t-BreadcrumbRegion-top">',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--start">#UP#</div>',
'    <div class="t-BreadcrumbRegion-body">',
'      <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'        <div class="t-BreadcrumbRegion-title">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'      </div>',
'    </div>',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--end">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-bottom">#SMART_FILTERS#</div>',
'</nav>',
''))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'navigation'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273194534245548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273194885238548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273195115591548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273195404182548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273195787072548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273196091930548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273196311741548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273196640580548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273196922851548117)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273197290092548118)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273197547879548118)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273197887616548118)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273198190905548118)
,p_plug_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(56273199396393548118)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">#BODY#</div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273199664186548118)
,p_plug_template_id=>wwv_flow_imp.id(56273199396393548118)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273199913038548119)
,p_plug_template_id=>wwv_flow_imp.id(56273199396393548118)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273400275290548119)
,p_plug_template_id=>wwv_flow_imp.id(56273199396393548118)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273400521301548119)
,p_plug_template_id=>wwv_flow_imp.id(56273199396393548118)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(56273400840835548119)
,p_plug_template_id=>wwv_flow_imp.id(56273199396393548118)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273426807005548131)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02# is-current" aria-current="page">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273430806435548132)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#" aria-current="page">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273436475353548135)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'  #SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273438075199548136)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title" aria-current="page">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273440878718548137)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273441822640548138)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273442459821548138)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_a06_label=>'Link Target'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273442854993548138)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>'))
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'t-TreeNav--styleA:js-navCollapsed--hidden'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&"APP_TEXT$APEX.TEMPLATE.APPLICATION".">',
'  <div class="a-TreeView t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL".">',
'    <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </ul>',
'  </div>',
'</div>',
'<script>',
'(() => {',
'  const pref = "ORA_WWV_apex.toggleCore.nav.&APP_ID..preferenceForExpanded",',
'        nav  = document.getElementById(''t_TreeNav'').classList,',
'        body = document.getElementById(''t_PageBody'');',
'  if ( !sessionStorage.getItem( pref ) ) { sessionStorage.setItem( pref, !nav.contains(''js-defaultCollapsed'') ); }',
'  if ( nav.contains(''js-navCollapsed--default'') ) {',
'      body?.classList.add(''js-navCollapsed--icons'');',
'      if ( sessionStorage.getItem( pref ) === "false" ) { body?.classList.add(''js-navCollapsed''); }',
'  }',
'  if ( sessionStorage.getItem( pref ) === "true" && window.matchMedia("(min-width: " + getComputedStyle(document.documentElement).getPropertyValue("--js-mq-lg") + ")").matches) { body?.classList.add(''js-navExpanded''); }',
'  for (const label of document.querySelectorAll(".a-TreeView .a-TreeView-label")) {',
'      label.textContent = label.textContent.replaceAll(/\[(.*?)\]/ig, '''');',
'  }',
'})();',
'</script>'))
,p_before_sub_list=>'<ul style="display:none">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273444678028548139)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item is-active #A03#" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273446207439548140)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273448252725548141)
,p_list_template_current=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a></li>'
,p_list_template_noncurrent=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul style="display: none">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273449213198548141)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03# is-active" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(56273450825315548142)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" aria-current="step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>'<ul aria-label="#CURRENT_PROGRESS#" class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273401847218548120)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273402002157548120)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-wrap u-color">',
'    <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'    <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273406005159548122)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273411412350548124)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'  <div class="t-Comments-icon">',
'    <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'  </div>',
'  <div class="t-Comments-body">',
'    <div class="t-Comments-info">',
'      #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'    </div>',
'    <div class="t-Comments-comment">',
'      #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273412652268548125)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/contextual_info
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273415828809548126)
,p_row_template_name=>'Contextual Info'
,p_internal_name=>'CONTEXTUAL_INFO'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContextualInfo-item">',
'  <span class="t-ContextualInfo-label">#COLUMN_HEADER#</span>',
'  <span class="t-ContextualInfo-value">#COLUMN_VALUE#</span>',
'</div>'))
,p_row_template_before_rows=>' <div class="t-ContextualInfo #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_reference_id=>2114325881116323585
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273416823680548126)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </a>',
'</li>',
''))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273419841678548127)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273420010742548128)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# #ACCESSIBLE_HEADERS#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ARIA_SORT# #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273422683362548129)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273423011437548129)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(56273425090461548130)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(56273452235922548143)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(56273452304215548143)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(56273452410780548143)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(56273452599903548143)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(56273452637098548143)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(56273453307424548144)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT#</div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>',
''))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(56273453825002548144)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemRequired-marker" aria-hidden="true"></div>',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(56273456608995548145)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active" aria-current="page"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_imp_shared.create_popup_lov_template(
 p_id=>wwv_flow_imp.id(56273456889186548146)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(56273456722361548145)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(56273545125506548255)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(56273105163819548079)
,p_default_dialog_template=>wwv_flow_imp.id(56273099929198548076)
,p_error_template=>wwv_flow_imp.id(56273089915235548072)
,p_printer_friendly_template=>wwv_flow_imp.id(56273105163819548079)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(56273089915235548072)
,p_default_button_template=>wwv_flow_imp.id(56273455087577548145)
,p_default_region_template=>wwv_flow_imp.id(56273181817394548111)
,p_default_chart_template=>wwv_flow_imp.id(56273181817394548111)
,p_default_form_template=>wwv_flow_imp.id(56273181817394548111)
,p_default_reportr_template=>wwv_flow_imp.id(56273181817394548111)
,p_default_tabform_template=>wwv_flow_imp.id(56273181817394548111)
,p_default_wizard_template=>wwv_flow_imp.id(56273181817394548111)
,p_default_menur_template=>wwv_flow_imp.id(56273194258671548116)
,p_default_listr_template=>wwv_flow_imp.id(56273181817394548111)
,p_default_irr_template=>wwv_flow_imp.id(56273172050697548107)
,p_default_report_template=>wwv_flow_imp.id(56273420010742548128)
,p_default_label_template=>wwv_flow_imp.id(56273452599903548143)
,p_default_menu_template=>wwv_flow_imp.id(56273456608995548145)
,p_default_calendar_template=>wwv_flow_imp.id(56273456722361548145)
,p_default_list_template=>wwv_flow_imp.id(56273436475353548135)
,p_default_nav_list_template=>wwv_flow_imp.id(56273448252725548141)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(56273448252725548141)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(56273442854993548138)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(56273118077847548085)
,p_default_dialogr_template=>wwv_flow_imp.id(56273115244624548084)
,p_default_option_label=>wwv_flow_imp.id(56273452599903548143)
,p_default_required_label=>wwv_flow_imp.id(56273453825002548144)
,p_default_navbar_list_template=>wwv_flow_imp.id(56273442459821548138)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(56273544178556548255)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(56273544391098548255)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(56273544513740548255)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(56273544766689548255)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(56273544915976548255)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273080504901548067)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273081514962548068)
,p_theme_id=>42
,p_name=>'PAGE_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the position of the page.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273091416707548073)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273092288013548073)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273112325914548082)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273112710343548083)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273113319333548083)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273113732950548083)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273121063602548086)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273121463316548086)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273127850094548089)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273128673215548089)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273129895396548090)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273131082756548090)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273131407545548091)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273133452969548091)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273141205463548095)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273141656999548095)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273142459411548095)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273146215952548097)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273147072856548097)
,p_theme_id=>42
,p_name=>'HEADING_FONT'
,p_display_name=>'Heading Font'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the font-family of the heading for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273147885988548097)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273150314594548098)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273151142843548099)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273152949526548099)
,p_theme_id=>42
,p_name=>'IMAGE_FILTER'
,p_display_name=>'Filter'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273154573025548100)
,p_theme_id=>42
,p_name=>'IMAGE_RATIO'
,p_display_name=>'Ratio'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273155707266548101)
,p_theme_id=>42
,p_name=>'IMAGE_SCALE'
,p_display_name=>'Scale'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273156767822548101)
,p_theme_id=>42
,p_name=>'IMAGE_SHAPE'
,p_display_name=>'Shape'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273160505286548103)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273165938643548105)
,p_theme_id=>42
,p_name=>'REGION_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273169303803548106)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273175328790548109)
,p_theme_id=>42
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'This sets the vertical alignment of the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273178444572548110)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273180565598548111)
,p_theme_id=>42
,p_name=>'ICON_SIZE'
,p_display_name=>'Icon Size'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_null_text=>'Initial'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273181320841548111)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE'
,p_display_name=>'Result Appearance'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273192583611548116)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273192939738548116)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273193746918548116)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273401116839548119)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273402371469548120)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273402708496548120)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273404757830548121)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273406504749548122)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273408328789548123)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273409136802548123)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273410599807548124)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273411778132548124)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273412977854548125)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273413367876548125)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273413773967548125)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273414197325548125)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273414579053548125)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273414962327548126)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273415586169548126)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273416187241548126)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS'
,p_display_name=>'Display Items'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273416529017548126)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS'
,p_display_name=>'Display Labels'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273418562566548127)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273420376442548128)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273420980590548128)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273421381574548128)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273423393862548129)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273427130802548131)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273428355784548131)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273429510878548132)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273431385619548133)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273433333456548134)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273433995606548134)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273435354169548134)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273437535393548136)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273439798523548137)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273443501811548139)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273449569857548142)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273450122015548142)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273451120767548142)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273452896760548143)
,p_theme_id=>42
,p_name=>'REQUIRED_INDICATOR'
,p_display_name=>'Required Indicator'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273454548768548144)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273455798086548145)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273545300891548256)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273546730928548256)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273547118586548257)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273548708636548257)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273549126660548258)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273550701860548258)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273551196085548258)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273552704963548259)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273553178626548259)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273554779121548260)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273555161630548260)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273555504477548260)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273555965443548260)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273556316488548261)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273556769966548261)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273557193597548261)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273558585916548261)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273559914529548262)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273561189643548262)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273561515431548263)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273561940092548263)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273562319099548263)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Spacing'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273563113019548263)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273563748707548263)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE'
,p_display_name=>'Display Text Style'
,p_display_sequence=>400
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for Display Only & Read Only display items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273564124397548264)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273564777905548264)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273565130245548264)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273565560704548264)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273566356270548265)
,p_theme_id=>42
,p_name=>'CONTENT_PADDING'
,p_display_name=>'Content Padding'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the Content Body padding for the page.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273566766895548265)
,p_theme_id=>42
,p_name=>'SORT_ORDER_ALIGNMENT'
,p_display_name=>'Sort Order Alignment'
,p_display_sequence=>145
,p_template_types=>'REGION'
,p_help_text=>'Sets the alignment of the sort order item.'
,p_null_text=>'Default (Start)'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(56273567348951548265)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273080761751548068)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(56273080504901548067)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273080934837548068)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(56273080504901548067)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273081193158548068)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(56273080504901548067)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273081348269548068)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(56273080504901548067)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273081766234548068)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(56273081514962548068)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273081989644548069)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(56273081514962548068)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273082180283548069)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(56273079336459548067)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273085887515548070)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(56273082241296548069)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273089838707548072)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(56273085945210548070)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273091641852548073)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(56273089915235548072)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_imp.id(56273091416707548073)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273091814734548073)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(56273089915235548072)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_imp.id(56273091416707548073)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273092067255548073)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(56273089915235548072)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_imp.id(56273091416707548073)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273092482076548073)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(56273089915235548072)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_imp.id(56273092288013548073)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273096453195548075)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(56273092598529548073)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273099851607548076)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(56273096548430548075)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273101192790548077)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(56273099929198548076)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273101399931548077)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(56273099929198548076)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273105012111548079)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(56273101466936548077)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273108442262548080)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(56273105163819548079)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273109790288548081)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(56273108522446548080)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273109902733548081)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(56273108522446548080)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273112173573548082)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273112571577548082)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_imp.id(56273112325914548082)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273112970865548083)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_imp.id(56273112710343548083)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273113121618548083)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(56273112710343548083)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273113547216548083)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_imp.id(56273113319333548083)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273113903975548083)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(56273113732950548083)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273114174557548083)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_imp.id(56273112325914548082)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273114338277548083)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_imp.id(56273113319333548083)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273114525552548083)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_imp.id(56273112325914548082)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273114721724548083)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_imp.id(56273113319333548083)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273114967753548083)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_imp.id(56273112325914548082)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273115187617548083)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273110054207548081)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(56273113732950548083)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273121273317548086)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273121612774548086)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(56273121463316548086)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273121881627548087)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273122078713548087)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(56273121463316548086)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273122242688548087)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273118077847548085)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273123554183548087)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273122367178548087)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273123796768548087)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273122367178548087)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273123984765548087)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273122367178548087)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273124140650548087)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273122367178548087)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273128059202548089)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_imp.id(56273127850094548089)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273128228530548089)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_imp.id(56273127850094548089)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273128435068548089)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_imp.id(56273127850094548089)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273128854713548089)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273129038642548090)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273129236354548090)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273129468757548090)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_imp.id(56273127850094548089)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273129658219548090)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273130051972548090)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273130276706548090)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273130488462548090)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273130621903548090)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273130852090548090)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273131231760548091)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_imp.id(56273131082756548090)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273131631368548091)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(56273131407545548091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273131804631548091)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(56273131082756548090)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273132000707548091)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273132241282548091)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273132415175548091)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273132654798548091)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(56273131407545548091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273132805273548091)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273133006859548091)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273133254505548091)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273133692810548091)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_imp.id(56273133452969548091)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273133815551548092)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_imp.id(56273133452969548091)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273134080745548092)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273124205599548087)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273137438835548093)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273137636830548093)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273137804744548093)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273138040260548093)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273138253383548093)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273138488443548093)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273138662950548094)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273138868297548094)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273139039216548094)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273139274814548094)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273139480030548094)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273139680524548094)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273139867157548094)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273140033283548094)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273140249943548094)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273140470907548094)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273140636431548094)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273140855202548094)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273141068966548094)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273141472891548095)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(56273141205463548095)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273141850865548095)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_imp.id(56273141656999548095)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273142037600548095)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(56273141205463548095)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273142298512548095)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(56273131407545548091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273142608516548095)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_imp.id(56273142459411548095)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273142812871548095)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273143028450548095)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273143279825548095)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273143452818548095)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273143610777548096)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(56273131407545548091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273143865591548096)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273134161375548092)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273146050117548097)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273146442330548097)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_imp.id(56273146215952548097)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273146633316548097)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_imp.id(56273146215952548097)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273146869930548097)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Small'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_imp.id(56273146215952548097)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273147269839548097)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(56273147072856548097)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273147447466548097)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(56273131082756548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273147607160548097)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--hideHeader'
,p_group_id=>wwv_flow_imp.id(56273131082756548090)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273148045814548097)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_imp.id(56273147885988548097)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273148270304548097)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_imp.id(56273147885988548097)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273148423409548098)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273143911632548096)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273150587067548098)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_imp.id(56273150314594548098)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273150759928548099)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273150920463548099)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_css_classes=>'t-HeroRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(56273147072856548097)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273151305521548099)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_imp.id(56273151142843548099)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273151500407548099)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_imp.id(56273151142843548099)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273151788786548099)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273151985062548099)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273148539847548098)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273153100875548100)
,p_theme_id=>42
,p_name=>'FILTER_BLUR'
,p_display_name=>'Blur'
,p_display_sequence=>430
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--blur'
,p_group_id=>wwv_flow_imp.id(56273152949526548099)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273153394964548100)
,p_theme_id=>42
,p_name=>'FILTER_GRAYSCALE'
,p_display_name=>'Grayscale'
,p_display_sequence=>410
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--grayscale'
,p_group_id=>wwv_flow_imp.id(56273152949526548099)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273153507135548100)
,p_theme_id=>42
,p_name=>'FILTER_INVERT'
,p_display_name=>'Invert'
,p_display_sequence=>440
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--invert'
,p_group_id=>wwv_flow_imp.id(56273152949526548099)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273153703326548100)
,p_theme_id=>42
,p_name=>'FILTER_NONE'
,p_display_name=>'None'
,p_display_sequence=>400
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--noFilter'
,p_group_id=>wwv_flow_imp.id(56273152949526548099)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273153928595548100)
,p_theme_id=>42
,p_name=>'FILTER_SATURATE'
,p_display_name=>'Saturate'
,p_display_sequence=>450
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--saturate'
,p_group_id=>wwv_flow_imp.id(56273152949526548099)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273154122686548100)
,p_theme_id=>42
,p_name=>'FILTER_SEPIA'
,p_display_name=>'Sepia'
,p_display_sequence=>420
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--sepia'
,p_group_id=>wwv_flow_imp.id(56273152949526548099)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273154340513548100)
,p_theme_id=>42
,p_name=>'IMAGE_STRETCH'
,p_display_name=>'Image Stretch'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--stretch'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273154756692548100)
,p_theme_id=>42
,p_name=>'RATIO_16_9'
,p_display_name=>'16:9 (Widescreen)'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--16x9'
,p_group_id=>wwv_flow_imp.id(56273154573025548100)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273154939586548100)
,p_theme_id=>42
,p_name=>'RATIO_1_1'
,p_display_name=>'1:1 (Square)'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--1x1'
,p_group_id=>wwv_flow_imp.id(56273154573025548100)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273155112193548101)
,p_theme_id=>42
,p_name=>'RATIO_2_1'
,p_display_name=>'2:1 (Univisium)'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--2x1'
,p_group_id=>wwv_flow_imp.id(56273154573025548100)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273155311089548101)
,p_theme_id=>42
,p_name=>'RATIO_4_3'
,p_display_name=>'4:3 (Standard)'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--4x3'
,p_group_id=>wwv_flow_imp.id(56273154573025548100)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273155515004548101)
,p_theme_id=>42
,p_name=>'RATIO_AUTO'
,p_display_name=>'Auto'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--auto'
,p_group_id=>wwv_flow_imp.id(56273154573025548100)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273155943381548101)
,p_theme_id=>42
,p_name=>'SCALE_CONTAIN'
,p_display_name=>'Contain'
,p_display_sequence=>200
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--contain'
,p_group_id=>wwv_flow_imp.id(56273155707266548101)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273156185298548101)
,p_theme_id=>42
,p_name=>'SCALE_COVER'
,p_display_name=>'Cover'
,p_display_sequence=>210
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--cover'
,p_group_id=>wwv_flow_imp.id(56273155707266548101)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273156323339548101)
,p_theme_id=>42
,p_name=>'SCALE_DOWN'
,p_display_name=>'Scale Down'
,p_display_sequence=>230
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--scale-down'
,p_group_id=>wwv_flow_imp.id(56273155707266548101)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273156578299548101)
,p_theme_id=>42
,p_name=>'SCALE_FILL'
,p_display_name=>'Fill'
,p_display_sequence=>220
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--fill'
,p_group_id=>wwv_flow_imp.id(56273155707266548101)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273156993314548101)
,p_theme_id=>42
,p_name=>'SHAPE_CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>320
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--circle'
,p_group_id=>wwv_flow_imp.id(56273156767822548101)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273157136460548101)
,p_theme_id=>42
,p_name=>'SHAPE_ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>310
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--rounded'
,p_group_id=>wwv_flow_imp.id(56273156767822548101)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273157332446548102)
,p_theme_id=>42
,p_name=>'SHAPE_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>300
,p_region_template_id=>wwv_flow_imp.id(56273152023585548099)
,p_css_classes=>'t-ImageRegion--square'
,p_group_id=>wwv_flow_imp.id(56273156767822548101)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273160128929548103)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273160329754548103)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273160786159548103)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273160962832548103)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273161165999548103)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273161379356548103)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273161520995548103)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273161710113548103)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273161990070548103)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273157418412548102)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273164728487548104)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273164953052548105)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273165120519548105)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273165362008548105)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273165517208548105)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273165733675548105)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None (Auto)'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273166137804548105)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(56273165938643548105)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273166369176548105)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(56273165938643548105)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273166509758548105)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(56273162090929548103)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273169549512548106)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_imp.id(56273169303803548106)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273169794639548106)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_imp.id(56273169303803548106)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273169980711548106)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273170128226548106)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_imp.id(56273169303803548106)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273170389283548107)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_imp.id(56273169303803548106)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273170515109548107)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273170736039548107)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_imp.id(56273169303803548106)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273170939860548107)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273171141367548107)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273171386617548107)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273171508162548107)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273171773848548107)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273171949536548107)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273166645138548105)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(56273160505286548103)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273173864734548108)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273172050697548107)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273174003289548108)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273172050697548107)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273175517035548109)
,p_theme_id=>42
,p_name=>'ALIGNMENT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>11
,p_region_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_css_classes=>'t-ItemContainer--alignCenter'
,p_group_id=>wwv_flow_imp.id(56273175328790548109)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273175749025548109)
,p_theme_id=>42
,p_name=>'ALIGNMENT_END'
,p_display_name=>'End'
,p_display_sequence=>12
,p_region_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_css_classes=>'t-ItemContainer--alignEnd'
,p_group_id=>wwv_flow_imp.id(56273175328790548109)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273175929578548109)
,p_theme_id=>42
,p_name=>'ALIGNMENT_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_css_classes=>'t-ItemContainer--alignStart'
,p_group_id=>wwv_flow_imp.id(56273175328790548109)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273176131030548109)
,p_theme_id=>42
,p_name=>'ALIGNMENT_STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>13
,p_region_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_css_classes=>'t-ItemContainer--alignStretch'
,p_group_id=>wwv_flow_imp.id(56273175328790548109)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273176315847548109)
,p_theme_id=>42
,p_name=>'STACK_MOBILE'
,p_display_name=>'Stack on Mobile'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_css_classes=>'t-ItemContainer--stackMobile'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273176540586548109)
,p_theme_id=>42
,p_name=>'WRAP_ITEMS'
,p_display_name=>'Wrap Items'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(56273174132358548108)
,p_css_classes=>'t-ItemContainer--wrap'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273178667272548110)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273176698548548109)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_imp.id(56273178444572548110)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273178858345548110)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273176698548548109)
,p_css_classes=>'t-Login-region--headerTitle js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(56273178444572548110)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273179080069548110)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273176698548548109)
,p_css_classes=>'t-Login-region--headerHidden js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(56273178444572548110)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273180331719548111)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within search results.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273180782715548111)
,p_theme_id=>42
,p_name=>'ICON_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_css_classes=>'t-ResultsRegion--iconLg'
,p_group_id=>wwv_flow_imp.id(56273180565598548111)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to large (64px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273180931765548111)
,p_theme_id=>42
,p_name=>'ICON_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_css_classes=>'t-ResultsRegion--iconMd'
,p_group_id=>wwv_flow_imp.id(56273180565598548111)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to medium (32px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273181153361548111)
,p_theme_id=>42
,p_name=>'ICON_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_css_classes=>'t-ResultsRegion--iconSm'
,p_group_id=>wwv_flow_imp.id(56273180565598548111)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to small (16px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273181507031548111)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_BOXED'
,p_display_name=>'Boxed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_css_classes=>'t-ResultsRegion--boxed'
,p_group_id=>wwv_flow_imp.id(56273181320841548111)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273181768447548111)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_FLAT'
,p_display_name=>'Flat'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(56273179134010548110)
,p_css_classes=>'t-ResultsRegion--flat'
,p_group_id=>wwv_flow_imp.id(56273181320841548111)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273185785231548113)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273185953137548113)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273186149102548113)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273186361730548113)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(56273128673215548089)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273186551812548113)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273186760168548113)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273186909440548113)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273187157085548113)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273187315727548114)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273187594034548114)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273187777981548114)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273187901754548114)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273188161333548114)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273188336614548114)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273188504229548114)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273188752214548114)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273188999753548114)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273189132998548114)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273189390278548114)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(56273129895396548090)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273189542628548114)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(56273131082756548090)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273189776390548115)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(56273131407545548091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273189917171548115)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(56273131082756548090)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273190173424548115)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273190322550548115)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273190599180548115)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273190710946548115)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(56273131407545548091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273190939500548115)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273191124892548115)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273191348341548115)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273191516360548115)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(56273181817394548111)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_imp.id(56273121063602548086)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273192766363548116)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273191644227548115)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_imp.id(56273192583611548116)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273193105338548116)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273191644227548115)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_imp.id(56273192939738548116)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273193320846548116)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273191644227548115)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273193517112548116)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273191644227548115)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_imp.id(56273192939738548116)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273193907898548116)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273191644227548115)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_imp.id(56273193746918548116)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273194146192548116)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273191644227548115)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_imp.id(56273193746918548116)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273198441271548118)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_imp.id(56273146215952548097)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273198601257548118)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_css_classes=>'t-BreadcrumbRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(56273147072856548097)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273198858849548118)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273199014069548118)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_imp.id(56273146215952548097)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273199244301548118)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273194258671548116)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273401377625548119)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(56273199396393548118)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_imp.id(56273401116839548119)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273401536946548120)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273199396393548118)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_imp.id(56273401116839548119)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273401793209548120)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(56273199396393548118)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273402577827548120)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(56273402371469548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273402912624548120)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273403190646548121)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(56273402371469548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273403348799548121)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273403567859548121)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(56273402371469548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273403769449548121)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273403959766548121)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273404116482548121)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(56273402371469548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273404352710548121)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(56273402371469548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273404547748548121)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273404916911548121)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(56273404757830548121)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273405159189548121)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273405306875548121)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273405584998548122)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273405732062548122)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(56273404757830548121)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273405917962548122)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273402002157548120)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273406357129548122)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273406765484548122)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(56273406504749548122)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273406906238548122)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273407147799548122)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(56273406504749548122)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273407361310548122)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273407562054548122)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(56273406504749548122)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273407700942548123)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273407967797548123)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(56273404757830548121)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273408183422548123)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(56273404757830548121)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273408551951548123)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(56273408328789548123)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273408731423548123)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(56273408328789548123)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273408967182548123)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(56273404757830548121)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273409366596548123)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(56273409136802548123)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273409590504548123)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(56273409136802548123)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273409759802548123)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273409973443548123)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(56273404757830548121)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273410150534548123)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273410362961548124)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(56273406504749548122)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273410713962548124)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(56273410599807548124)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273410917284548124)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(56273410599807548124)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273411109952548124)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273411326803548124)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273406005159548122)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273411951652548124)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273411412350548124)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_imp.id(56273411778132548124)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273412133544548124)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273411412350548124)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_imp.id(56273410599807548124)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273412396691548124)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273411412350548124)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_imp.id(56273410599807548124)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273412512266548124)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273411412350548124)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_imp.id(56273411778132548124)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273413196158548125)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(56273412652268548125)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_imp.id(56273412977854548125)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273413596783548125)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_imp.id(56273412652268548125)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_imp.id(56273413367876548125)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273413977846548125)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273412652268548125)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_imp.id(56273413773967548125)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273414386350548125)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273412652268548125)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_imp.id(56273414197325548125)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273414781345548125)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(56273412652268548125)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_imp.id(56273414579053548125)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273415105598548126)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273412652268548125)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_imp.id(56273414962327548126)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273415367045548126)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(56273412652268548125)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_imp.id(56273404757830548121)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273415729340548126)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273412652268548125)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_imp.id(56273415586169548126)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273416322741548126)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(56273415828809548126)
,p_css_classes=>'t-ContextualInfo-item--stacked'
,p_group_id=>wwv_flow_imp.id(56273416187241548126)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273416766513548126)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(56273415828809548126)
,p_css_classes=>'t-ContextualInfo-label--stacked'
,p_group_id=>wwv_flow_imp.id(56273416529017548126)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273417134337548126)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273417302580548127)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273417571241548127)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273417705996548127)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273417971682548127)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273418138681548127)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(56273410599807548124)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273418331669548127)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(56273410599807548124)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273418722383548127)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(56273418562566548127)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273418902722548127)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273419178203548127)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273419318628548127)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273419585910548127)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273419752218548127)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_imp.id(56273416823680548126)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273420534415548128)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(56273420376442548128)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273420706174548128)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_imp.id(56273420376442548128)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273421113911548128)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(56273420980590548128)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273421551951548128)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(56273421381574548128)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273421776220548128)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(56273421381574548128)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273421901229548128)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_imp.id(56273421381574548128)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273422113780548129)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_imp.id(56273420980590548128)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273422306390548129)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273422511585548129)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273420010742548128)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(56273421381574548128)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273422908049548129)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(56273422683362548129)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_imp.id(56273404757830548121)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273423578807548129)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273423011437548129)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273423712596548129)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273423011437548129)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273423985679548129)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273423011437548129)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273424104082548129)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273423011437548129)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273424368207548130)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273423011437548129)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273424540124548130)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(56273423011437548129)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273424715415548130)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(56273423011437548129)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273424976763548130)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273423011437548129)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273425349258548130)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(56273425090461548130)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273425508575548130)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273425090461548130)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273425750689548130)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273425090461548130)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273425953702548130)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(56273425090461548130)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273426132193548130)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(56273425090461548130)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(56273402708496548120)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273426351694548130)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(56273425090461548130)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273426578043548131)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(56273425090461548130)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273426742596548131)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(56273425090461548130)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(56273423393862548129)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273427381214548131)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273427582775548131)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273427719666548131)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273427915465548131)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273428136048548131)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273428576473548132)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273428785505548132)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273428907694548132)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273429107410548132)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273429369687548132)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273429707869548132)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(56273429510878548132)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273429914849548132)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(56273429510878548132)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273430189400548132)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(56273429510878548132)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273430368420548132)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273430570636548132)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(56273429510878548132)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273430775793548132)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(56273426807005548131)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(56273429510878548132)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273431175513548133)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273431526266548133)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(56273431385619548133)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273431743571548133)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273431928271548133)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(56273431385619548133)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273432169837548133)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273432373386548133)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(56273431385619548133)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273432552138548133)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273432721325548133)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273432933787548133)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273433109286548133)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273433560436548134)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(56273433333456548134)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273433775343548134)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273434132501548134)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(56273433995606548134)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273434378304548134)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(56273433995606548134)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273434598039548134)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273434739483548134)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273434978975548134)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273435125587548134)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(56273431385619548133)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273435527324548135)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(56273435354169548134)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273435793807548135)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(56273435354169548134)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273435933436548135)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(56273433333456548134)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273436108261548135)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273436330025548135)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273436739403548135)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273436475353548135)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273436951229548135)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273436475353548135)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273437140179548135)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273436475353548135)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273437329982548135)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273436475353548135)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273437717788548136)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273436475353548135)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(56273437535393548136)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273437967095548136)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273436475353548135)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(56273437535393548136)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273438331839548136)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273438546940548136)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273438724964548136)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273438917008548136)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273439104013548136)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273439369193548136)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(56273435354169548134)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273439527168548137)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(56273435354169548134)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273439913285548137)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(56273439798523548137)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273440197649548137)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273440306489548137)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273440555092548137)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273440782671548137)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(56273438075199548136)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273441149999548137)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273440878718548137)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273441361422548137)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273440878718548137)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273441574758548138)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(56273440878718548137)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273441781120548138)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273440878718548137)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273442155484548138)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273441822640548138)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273442353685548138)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273441822640548138)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273442711759548138)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273442459821548138)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273443143558548138)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(56273442854993548138)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273443332634548139)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273442854993548138)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273443786394548139)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273442854993548138)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_imp.id(56273443501811548139)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273443981289548139)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273442854993548138)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_imp.id(56273443501811548139)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273444194004548139)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273442854993548138)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273444385632548139)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273442854993548138)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273444511753548139)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273442854993548138)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273444975255548139)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273444678028548139)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_imp.id(56273433995606548134)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273445175861548139)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(56273444678028548139)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273445334852548139)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273444678028548139)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_imp.id(56273433995606548134)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273445563479548140)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273444678028548139)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_imp.id(56273439798523548137)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273445777826548140)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273444678028548139)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273445949047548140)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273444678028548139)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_imp.id(56273428355784548131)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273446144884548140)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(56273444678028548139)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_imp.id(56273439798523548137)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273446516002548140)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273446779589548140)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273446947077548140)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273447168243548140)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273447349027548140)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273447534720548141)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273447761364548141)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273447938758548141)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273448194187548141)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(56273446207439548140)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_imp.id(56273427130802548131)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273448538922548141)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(56273448252725548141)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273448752026548141)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(56273448252725548141)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273448926590548141)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(56273448252725548141)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273449106583548141)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(56273448252725548141)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273449704000548142)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273449213198548141)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_imp.id(56273449569857548142)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273449933570548142)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(56273449213198548141)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_imp.id(56273449569857548142)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273450310545548142)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273449213198548141)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_imp.id(56273450122015548142)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273450500406548142)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273449213198548141)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_imp.id(56273450122015548142)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273450715459548142)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273449213198548141)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_imp.id(56273450122015548142)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273451340067548142)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273450825315548142)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_imp.id(56273451120767548142)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273451522770548143)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(56273450825315548142)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_imp.id(56273451120767548142)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273451722885548143)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(56273450825315548142)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_imp.id(56273451120767548142)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273451923835548143)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(56273450825315548142)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273452140480548143)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(56273450825315548142)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273453069369548143)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(56273452637098548143)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(56273452896760548143)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273453296880548144)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(56273452637098548143)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(56273452896760548143)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273453511201548144)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(56273453307424548144)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(56273452896760548143)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273453729792548144)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(56273453307424548144)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(56273452896760548143)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273454063611548144)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(56273453825002548144)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(56273452896760548143)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273454272294548144)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(56273453825002548144)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(56273452896760548143)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273454759167548144)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(56273454321915548144)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(56273454548768548144)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273454900219548145)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(56273454321915548144)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(56273454548768548144)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273455372689548145)
,p_theme_id=>42
,p_name=>'HIDE_ICON_ON_DESKTOP'
,p_display_name=>'Hide Icon on Desktop'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(56273455118421548145)
,p_css_classes=>'t-Button--desktopHideIcon'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button icon on large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273455522256548145)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(56273455118421548145)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273455943676548145)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(56273455118421548145)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(56273455798086548145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273456173776548145)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(56273455118421548145)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(56273454548768548144)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273456308954548145)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(56273455118421548145)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_imp.id(56273455798086548145)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273456559610548145)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(56273455118421548145)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(56273454548768548144)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273545550674548256)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(56273545300891548256)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273545744995548256)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(56273545300891548256)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273545983919548256)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(56273545300891548256)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273546172207548256)
,p_theme_id=>42
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(56273545300891548256)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273546300088548256)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(56273545300891548256)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273546520986548256)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(56273545300891548256)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273546990835548257)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(56273546730928548256)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273547393417548257)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(56273547118586548257)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273547583116548257)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(56273546730928548256)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273547777272548257)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(56273547118586548257)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273547919523548257)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(56273546730928548256)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273548138166548257)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(56273547118586548257)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273548337381548257)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(56273546730928548256)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273548519187548257)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(56273547118586548257)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273548902651548257)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(56273548708636548257)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273549309193548258)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(56273549126660548258)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273549513009548258)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(56273548708636548257)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273549729413548258)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(56273549126660548258)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273549951490548258)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(56273548708636548257)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273550177407548258)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(56273549126660548258)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273550315012548258)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(56273548708636548257)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273550540917548258)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(56273549126660548258)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273550984785548258)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(56273550701860548258)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273551359606548259)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(56273551196085548258)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273551542307548259)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(56273550701860548258)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273551707221548259)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(56273551196085548258)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273551906369548259)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(56273550701860548258)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273552114872548259)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(56273551196085548258)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273552367795548259)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(56273550701860548258)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273552591948548259)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(56273551196085548258)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273552949586548259)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(56273552704963548259)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273553329953548259)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(56273553178626548259)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273553508835548259)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(56273552704963548259)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273553728562548260)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(56273553178626548259)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273553962023548260)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(56273552704963548259)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273554111464548260)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(56273553178626548259)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273554390367548260)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(56273552704963548259)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273554523235548260)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(56273553178626548259)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273554913780548260)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_imp.id(56273554779121548260)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273555350907548260)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_imp.id(56273555161630548260)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273555768792548260)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(56273555504477548260)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273556194725548260)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(56273555965443548260)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273556524910548261)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_imp.id(56273556316488548261)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273556905954548261)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_imp.id(56273556769966548261)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273557375270548261)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_imp.id(56273557193597548261)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273557562706548261)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_imp.id(56273557193597548261)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273557743041548261)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_imp.id(56273555161630548260)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273557948703548261)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(56273555504477548260)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273558161081548261)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_imp.id(56273555965443548260)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273558322034548261)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_imp.id(56273556316488548261)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273558769925548261)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_imp.id(56273558585916548261)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273558946336548262)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(56273558585916548261)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273559103348548262)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(56273558585916548261)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273559321409548262)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_imp.id(56273554779121548260)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273559598975548262)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_imp.id(56273557193597548261)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273559704313548262)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_imp.id(56273556769966548261)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273560170040548262)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_imp.id(56273559914529548262)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273560380749548262)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_imp.id(56273554779121548260)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273560550426548262)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_imp.id(56273556769966548261)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273560714004548262)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_imp.id(56273554779121548260)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273560900534548262)
,p_theme_id=>42
,p_name=>'DEFERRED_PAGE_RENDERING'
,p_display_name=>'Deferred Page Rendering'
,p_display_sequence=>1
,p_css_classes=>'t-DeferredRendering'
,p_template_types=>'PAGE'
,p_help_text=>'Defer page rendering until all page components have finished loading.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273561392324548263)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(56273561189643548262)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273561798477548263)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_imp.id(56273561515431548263)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273562132307548263)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(56273561940092548263)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273562507261548263)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'None'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_imp.id(56273562319099548263)
,p_template_types=>'REGION'
,p_help_text=>'Removes spacing between items.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273562722354548263)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_imp.id(56273562319099548263)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item spacing.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273562961463548263)
,p_theme_id=>42
,p_name=>'FORMSTANDARDPADDING'
,p_display_name=>'Standard'
,p_display_sequence=>5
,p_css_classes=>'t-Form--standardPadding'
,p_group_id=>wwv_flow_imp.id(56273562319099548263)
,p_template_types=>'REGION'
,p_help_text=>'Uses the standard spacing between items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273563313759548263)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_imp.id(56273563113019548263)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273563528326548263)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_imp.id(56273561515431548263)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273563989288548264)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_BOLD'
,p_display_name=>'Bold'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--boldDisplay'
,p_group_id=>wwv_flow_imp.id(56273563748707548263)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273564317100548264)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_imp.id(56273564124397548264)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273564588956548264)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_NORMAL'
,p_display_name=>'Normal'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--normalDisplay'
,p_group_id=>wwv_flow_imp.id(56273563748707548263)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273564955275548264)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_imp.id(56273564777905548264)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273565341743548264)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_imp.id(56273565130245548264)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273565775858548264)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_imp.id(56273565560704548264)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273565957222548264)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273566120884548264)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_imp.id(56273564124397548264)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273566596045548265)
,p_theme_id=>42
,p_name=>'REMOVE_PADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-PageBody--noContentPadding'
,p_group_id=>wwv_flow_imp.id(56273566356270548265)
,p_template_types=>'PAGE'
,p_help_text=>'Removes padding from the content region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273566927543548265)
,p_theme_id=>42
,p_name=>'SORT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>10
,p_css_classes=>'t-Region-orderBy--center'
,p_group_id=>wwv_flow_imp.id(56273566766895548265)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273567128832548265)
,p_theme_id=>42
,p_name=>'SORT_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_css_classes=>'t-Region-orderBy--end'
,p_group_id=>wwv_flow_imp.id(56273566766895548265)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(56273567551324548265)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_imp.id(56273567348951548265)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(56273077951131548065)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15504256940299
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(56273078285429548066)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_avatar
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(56273457068956548146)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$AVATAR'
,p_display_name=>'Avatar'
,p_supported_component_types=>'PARTIAL'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$AVATAR'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Avatar is-placeholder{if ?SHAPE/} #SHAPE!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES!ATTR#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK!ATTR#" #LINK_ATTR!RAW#{else/}<span{endif/} class="t-Avatar{if ?TYPE/} t-Avatar--{if ?IMAGE/}image{else/}{if ?INITIALS/}initials{else/}icon{endif/}{endif/}{endif/}{if ?SHAPE/} #SHAPE!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{end'
||'if/}{if ?ICON/} #ICON!ATTR#{else/} fa fa-user{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES!ATTR#{endif/} u-color" {if !IMAGE/}{if DESCRIPTION/} role="img" aria-label="#DESCRIPTION!ATTR#" title="#DESCRIPTION!ATTR#"{else/} role="presentation"{endif/}{endif/}'
||'>{if IMAGE/}<img src="#IMAGE!ATTR#" alt="#DESCRIPTION!ATTR#"{if ?DESCRIPTION/} title="#DESCRIPTION!ATTR#"{endif/} loading="lazy" />{else/}{if ?INITIALS/}#INITIALS!RAW#{endif/}{endif/}{if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_reference_id=>1564363394689414260
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display an image, icon, or initials. Available as a partial template to display a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273457396753548148)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'IMAGE'
,p_demo_value=>'IMAGE'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273457613438548149)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273457396753548148)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'IMAGE'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273458024791548150)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273457396753548148)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'INITIALS'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273458449982548150)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273457396753548148)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'ICON'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273458861022548150)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_demo_value=>'#APEX_FILES#apex_ui/img/favicons/app-artwork-catalog.png'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273457396753548148)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'IMAGE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273459147698548151)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>55
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273459424710548151)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273457396753548148)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'INITIALS'
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273459718841548151)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273457396753548148)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ICON'
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273460026856548151)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273460359403548152)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273460026856548151)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273460749188548152)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273460026856548151)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273461172257548152)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273460026856548151)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273461590395548153)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273460026856548151)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273461950569548153)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273462222391548153)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273461950569548153)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273462602687548154)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273461950569548153)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273463024436548154)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273461950569548153)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273463488488548154)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273461950569548153)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273463854088548155)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273461950569548153)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273464228334548155)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273461950569548153)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273464647152548155)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273461950569548153)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273465038996548156)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter classes to add to this component. You may add multiple classes by separating them with a space.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58073507899903661900)
,p_plugin_id=>wwv_flow_imp.id(56273457068956548146)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_is_quick_pick=>true
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_badge
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(56273466126367548160)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BADGE'
,p_display_name=>'Badge'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BADGE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Badge is-placeholder{if ?SIZE/} #SIZE!ATTR#{endif/}{if ?SHAPE/} #SHAPE!ATTR#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK!ATTR#" #LINK_ATTR!RAW#{else/}<span{endif/} class="t-Badge {if ?STATE/}t-Badge--#STATE!ATTR#{endif/} {if ?STYLE/}#STYLE!ATTR#{endif/} {if ?SIZE/}#SIZE!ATTR#{endif/} {if ?SHAPE/}#SHAPE!ATTR#{endif/}" role="status" aria-label'
||'="#LABEL!ATTR# #VALUE!ATTR#" title="#LABEL!ATTR# #VALUE!ATTR#">',
'    {if ?ICON/}<span class="t-Badge-icon #ICON!ATTR#" aria-hidden="true"></span>{endif/}',
'    {if LABEL_DISPLAY/}<span class="t-Badge-label">#LABEL!RAW#</span>{endif/}',
'    <span class="t-Badge-value">#VALUE!RAW#</span>',
'  {if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>true
,p_api_version=>2
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if !APEX$HAS_MESSAGE/}',
'  <ul class="t-Badges #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
'{endif/}'))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Badges-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>1
,p_substitute_attributes=>true
,p_reference_id=>1564377533892414278
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display content within a badge. Available for multiple report rows or a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273466424482548162)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>true
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273466709447548162)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273467080120548162)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273467310874548162)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273467684588548163)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273467941849548163)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273468248459548163)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273467941849548163)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273468665922548163)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273467941849548163)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273469058363548164)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273469311167548164)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273469058363548164)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273469703978548164)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273469058363548164)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273470120384548165)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273469058363548164)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273470579537548165)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273470816725548165)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273470579537548165)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273471201538548165)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273470579537548165)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273471636176548166)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273470579537548165)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(57784948438933650350)
,p_plugin_id=>wwv_flow_imp.id(56273466126367548160)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_button
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(56273472245147548167)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BUTTON'
,p_display_name=>'Button'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BUTTON'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if MENU_ID/}<button type="button" data-menu="#MENU_ID!ATTR#"{else/}<a href="#LINK_URL!ATTR#" #LINK_ATTR!RAW#{endif/} class="t-Button{if IS_HOT/} t-Button--hot{endif/}{if IS_ICON_ONLY/} t-Button--noLabel t-Button--icon{else/}{if ICON_CLASSES/} t-Butt'
||'on--iconLeft{endif/}{endif/} #CSS_CLASSES!ATTR#" title="#LABEL!ATTR#" {if IS_DISABLED/} disabled{endif/}>',
'  {if ?ICON_CLASSES/}<span class="t-Icon t-Icon--left #ICON_CLASSES!ATTR#" aria-hidden="true"></span>{endif/}<span class="t-Button-label">#LABEL!RAW#</span>',
'{if MENU_ID/}</button>{else/}</a>{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_substitute_attributes=>true
,p_reference_id=>1568467215199837453
,p_subscribe_plugin_settings=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273472506585548168)
,p_plugin_id=>wwv_flow_imp.id(56273472245147548167)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273472863778548168)
,p_plugin_id=>wwv_flow_imp.id(56273472245147548167)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'LINK_URL'
,p_prompt=>'Link URL'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273473162451548169)
,p_plugin_id=>wwv_flow_imp.id(56273472245147548167)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'LINK_ATTR'
,p_prompt=>'Link Attribute'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273473449424548169)
,p_plugin_id=>wwv_flow_imp.id(56273472245147548167)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON_CLASSES'
,p_prompt=>'Icon Classes'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273473750626548169)
,p_plugin_id=>wwv_flow_imp.id(56273472245147548167)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273474093923548169)
,p_plugin_id=>wwv_flow_imp.id(56273472245147548167)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'IS_DISABLED'
,p_prompt=>'Is Disabled'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273474307838548170)
,p_plugin_id=>wwv_flow_imp.id(56273472245147548167)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'IS_HOT'
,p_prompt=>'Is Hot'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273474665019548170)
,p_plugin_id=>wwv_flow_imp.id(56273472245147548167)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'IS_ICON_ONLY'
,p_prompt=>'Is Icon Only'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_comments
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(56273474980133548171)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$COMMENTS'
,p_display_name=>'Comments'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$COMMENTS'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-Comments-item{if ?COMMENT_CLASS/} #COMMENT_CLASS!ATTR#{endif/}">',
'    {if DISPLAY_AVATAR%assigned/}',
'      <div class="t-Comments-icon">',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user is-placeholder"></span>',
'      </div>',
'      <div class="t-Comments-comment is-placeholder"></div>',
'    </div>',
'  </div>',
'{else/}',
'  <div class="t-Comments-item{if ?COMMENT_CLASS/} #COMMENT_CLASS!ATTR#{endif/}">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-Comments-icon">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'          CSS_CLASSES:=u-color',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR!RAW#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user">{if USER_NAME_LINK/}<a href="#USER_NAME_LINK!ATTR#" #USER_NAME_LINK_ATTR!RAW#>{endif/}#USER_NAME!RAW#{if USER_NAME_LINK/}</a>{endif/}</span>',
'        {if COMMENT_DATE/}<span class="t-Comments-date">#COMMENT_DATE!RAW#</span>{endif/}',
'        {if ACTIONS/}<span class="t-Comments-actions">#ACTIONS!RAW#</span>{endif/}',
'      </div>',
'      <div class="t-Comments-comment">',
'        #COMMENT_TEXT!RAW#',
'        {if ATTRIBUTES/}<div class="t-Comments-attributes">#ATTRIBUTES!RAW#</div>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Comments{if ?STYLE/} #STYLE!ATTR#{endif/} {if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_reference_id=>1564386865908414285
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display user comments and status updates. Supports avatars. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(58073360441202579891)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_title=>'Avatar'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273475464060548176)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'COMMENT_TEXT'
,p_prompt=>'Comment Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Praesent vel felis rutrum erat elementum viverra sit amet non odio. Cras vel auctor eros, in malesuada dolor. Nulla tellus magna, ornare consectetur purus id, volutpat egestas felis. Proin lobortis risus massa, nec faucibus arcu malesuada a. Nunc sed'
||' gravida urna. Fusce at ligula sed erat consequat pharetra.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing text for user comments.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273475730637548176)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Joel'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a comment.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273476015666548177)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'COMMENT_DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'5 minutes ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:DATE'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273476397329548177)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ATTRIBUTES'
,p_prompt=>'Attributes'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the comment attributes.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273476664984548177)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'initials'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273481375542548181)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58073360441202579891)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273477000963548177)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273476664984548177)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273477413522548178)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273476664984548177)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273477879693548178)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273476664984548177)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273478237017548178)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273476664984548177)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(58073360441202579891)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273478508799548178)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>95
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273481375542548181)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58073360441202579891)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273478886483548179)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'JK'
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273476664984548177)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(58073360441202579891)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273479166705548179)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273476664984548177)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(58073360441202579891)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273479458954548179)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273481375542548181)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58073360441202579891)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273479742018548179)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273479458954548179)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273480168361548180)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273479458954548179)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273480537742548180)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273479458954548179)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273480962504548180)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273479458954548179)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273481375542548181)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273481605616548181)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>45
,p_static_id=>'COMMENT_CLASS'
,p_prompt=>'Comment Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Allows you to pass a class onto individual comments. Example using is-active will highlight the specific comment with a different shade.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273481988943548181)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Comments--basic'
,p_demo_value=>'t-Comments--chat'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Set the style of the comments.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273482234646548181)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273481988943548181)
,p_display_sequence=>10
,p_display_value=>'Basic'
,p_return_value=>'t-Comments--basic'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273482610967548182)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273481988943548181)
,p_display_sequence=>20
,p_display_value=>'Chat (Speech Bubbles)'
,p_return_value=>'t-Comments--chat'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273483084736548182)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(58073493108635681394)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_name=>'Link'
,p_type=>'BUTTON'
,p_template=>'{if !IS_DISABLED/}<a {if CSS_CLASSES/}class="#CSS_CLASSES#"{endif/} href="#LINK_URL#" #LINK_ATTR!RAW#>#LABEL!RAW#</a>{endif/}'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58073492517130673937)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_name=>'Actions'
,p_static_id=>'ACTIONS'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58073548140800655816)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>20
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58073700358513526587)
,p_plugin_id=>wwv_flow_imp.id(56273474980133548171)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_content_row
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(56273485366207548186)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$CONTENT_ROW'
,p_display_name=>'Content Row'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$CONTENT_ROW'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-ContentRow-wrap" aria-hidden="true">',
'    {if ?SELECTION%assigned/}<div class="t-ContentRow-selection is-placeholder"></div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH!ATTR# #BADGE_POS!ATTR# #BADGE_ALIGNMENT!ATTR#">',
'        {with/}',
'          LABEL:=',
'          VALUE:=',
'          SIZE:=#BADGE_SIZE#',
'          SHAPE:=#BADGE_SHAPE#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar">',
'        {with/}',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE%assigned/}<div class="t-ContentRow-overline is-placeholder"></div>{endif/}',
'        {if ?TITLE%assigned/}<div class="t-ContentRow-title is-placeholder"></div>{endif/}',
'        {if ?DESCRIPTION%assigned/}<div class="t-ContentRow-description is-placeholder"></div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc is-placeholder"></div>{endif/}',
'      {if ?PRIMARY_ACTIONS%assigned/}<div class="t-ContentRow-actions is-placeholder"></div>{endif/}',
'    </div>',
'  </div>',
'{else/}',
'  {if ?FULL_ROW_LINK/}<a class="t-ContentRow-fullLink" href="#FULL_ROW_LINK!ATTR#" #FULL_ROW_LINK_ATTR!RAW#></a>{endif/}',
'  <div class="t-ContentRow-wrap">',
'    {if ?SELECTION%assigned/}<div class="t-ContentRow-selection">#SELECTION!RAW#</div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH!ATTR# #BADGE_POS!ATTR# #BADGE_ALIGNMENT!ATTR#">',
'        {with/}',
'          LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'          LABEL:=#BADGE_LABEL#',
'          VALUE:=#BADGE_VALUE#',
'          ICON:=#BADGE_ICON#',
'          STATE:=#BADGE_STATE#',
'          SIZE:=#BADGE_SIZE#',
'          STYLE:=#BADGE_STYLE#',
'          SHAPE:=#BADGE_SHAPE#',
'          LINK:=#BADGE_LINK#',
'          LINK_ATTR:=#BADGE_LINK_ATTR!RAW#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR!RAW#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE/}<div class="t-ContentRow-overline">#OVERLINE!RAW#</div>{endif/}',
'        {if ?TITLE/}<h3 class="t-ContentRow-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK!ATTR#" #TITLE_LINK_ATTR!RAW#>{endif/}#TITLE!RAW#{if ?TITLE_LINK/}</a>{endif/}</h3>{endif/}',
'        {if ?DESCRIPTION/}<div class="t-ContentRow-description">#DESCRIPTION!RAW#</div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc">#MISC!RAW#</div>{endif/}',
'      {if ?PRIMARY_ACTIONS/}<div class="t-ContentRow-actions">#PRIMARY_ACTIONS#</div>{endif/}',
'    </div>',
'  </div>',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-ContentRow{if ?STYLE/} #STYLE!ATTR#{endif/}{if REMOVE_PADDING/} t-ContentRow--removePadding{endif/}{if HIDE_BORDERS/} t-ContentRow--hideBorders{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</u'
||'l>'
,p_report_row_template=>'<li class="t-ContentRow-item{if ?ITEM_CLASSES/} #ITEM_CLASSES#{endif/}" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_reference_id=>1568468153344837456
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display content in a formatted row with a title, description, and more. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(58200723202331619885)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(58200722647319619884)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(57943830583589346371)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_title=>'Appearance'
,p_display_sequence=>30
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273486219449548191)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'OVERLINE'
,p_prompt=>'Overline'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Category'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to display at the top of each row above the title and description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273486557757548191)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the title in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273486842722548192)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the description in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273487173990548192)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'MISC'
,p_prompt=>'Miscellaneous'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter miscellaneous content such as additional text and/or column substitution strings to display in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273487422486548192)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273487732033548193)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273488081133548193)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487422486548192)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200723202331619885)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273488392057548193)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273488081133548193)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273488703803548193)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273488081133548193)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273489128031548194)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273488081133548193)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273489535406548194)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273488081133548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(58200723202331619885)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273489888700548194)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487422486548192)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58200723202331619885)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273490101286548195)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273488081133548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(58200723202331619885)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273490470351548195)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273488081133548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(58200723202331619885)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273490719721548195)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487422486548192)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200723202331619885)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273491018859548195)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273490719721548195)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273491462589548196)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273490719721548195)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273491825190548196)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273490719721548195)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273492251358548196)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273490719721548195)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273492690922548197)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273492936622548197)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273493266301548197)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273493539090548198)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273493802798548198)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273494196893548198)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273494485629548199)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273494196893548198)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273494811545548199)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273494196893548198)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273495209594548199)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273495505838548199)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273495209594548199)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273495957507548200)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273495209594548199)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273496353312548200)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273495209594548199)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273496753532548200)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273495209594548199)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273497189583548201)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'AVATAR_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487422486548192)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200723202331619885)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273499082230548202)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273497189583548201)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273499457147548203)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273497189583548201)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273499854031548203)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273497189583548201)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273498240083548202)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273497189583548201)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273498606338548202)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273497189583548201)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273497481346548201)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273497189583548201)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273497897071548201)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273497189583548201)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273500280491548203)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'BADGE_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273500534787548204)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273500280491548203)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273500909224548204)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273500280491548203)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273501369743548205)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273500280491548203)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273501788548548205)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'BADGE_COL_WIDTH'
,p_prompt=>'Column Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-ContentRow-badge--md'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_null_text=>'Default'
,p_help_text=>'Set the width of the content row columns. Default width is medium.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273502053472548205)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273501788548548205)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-ContentRow-badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273502437283548206)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273501788548548205)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-ContentRow-badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273502853299548206)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273501788548548205)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-ContentRow-badge--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273503282310548206)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273501788548548205)
,p_display_sequence=>40
,p_display_value=>'Auto'
,p_return_value=>'t-ContentRow-badge--auto'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273503608801548207)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>240
,p_static_id=>'BADGE_POS'
,p_prompt=>'Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_null_text=>'Start'
,p_help_text=>'Positions the Badge column to either the "Start" or "End" of the row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273503921415548207)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273503608801548207)
,p_display_sequence=>10
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--posEnd'
,p_help_text=>'Positions the Badge column to the "end" of the row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273504345180548207)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>250
,p_static_id=>'BADGE_ALIGNMENT'
,p_prompt=>'Alignment'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273487732033548193)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58200722647319619884)
,p_null_text=>'Start'
,p_help_text=>'Changes the alignment of the badge within its column.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273504621794548208)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273504345180548207)
,p_display_sequence=>10
,p_display_value=>'Center'
,p_return_value=>'t-ContentRow-badge--alignCenter'
,p_help_text=>'Aligns the badge to the "center" of its column.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273505037737548208)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273504345180548207)
,p_display_sequence=>20
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--alignEnd'
,p_help_text=>'Aligns the badge to the "end" of its column.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273505459961548208)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(57943830583589346371)
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273505728831548208)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>27
,p_display_sequence=>270
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(57943830583589346371)
,p_null_text=>'Default'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273506027815548209)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273505728831548208)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-ContentRow--styleCompact'
);
end;
/
begin
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273506441068548209)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>28
,p_display_sequence=>280
,p_static_id=>'HIDE_BORDERS'
,p_prompt=>'Hide Borders'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(57943830583589346371)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273506789657548209)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>30
,p_display_sequence=>300
,p_static_id=>'REMOVE_PADDING'
,p_prompt=>'Remove Padding'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(57943830583589346371)
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(58081937092547441499)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_name=>'Button'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'LINK_URL:=#LINK_URL!RAW#',
'LINK_ATTR:=#LINK_ATTR!RAW#',
'LABEL:=#LABEL!RAW#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'IS_DISABLED:=#IS_DISABLED#',
'{apply THEME$BUTTON/}'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(58081938352067445647)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_name=>'Menu'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'MENU_ID:=#MENU_ID#',
'LABEL:=#LABEL!RAW#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_DISABLED:=#IS_DISABLED#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'{apply THEME$BUTTON/}',
'#MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(57784985577651683069)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_name=>'Badge Link'
,p_static_id=>'BADGE_LINK'
,p_display_sequence=>50
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58068343463873034766)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58069022764603117870)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_name=>'Full Row Link'
,p_static_id=>'FULL_ROW_LINK'
,p_display_sequence=>40
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58081935157480396513)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58081936490870410370)
,p_plugin_id=>wwv_flow_imp.id(56273485366207548186)
,p_name=>'Primary Actions'
,p_static_id=>'PRIMARY_ACTIONS'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_media_list
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(56273512092366548218)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$MEDIA_LIST'
,p_display_name=>'Media List'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$MEDIA_LIST'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-MediaList-itemWrap">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE%assigned/}<div class="t-MediaList-title is-placeholder"></div>{endif/}',
'      {if ?DESCRIPTION%assigned/}<div class="t-MediaList-desc is-placeholder"></div>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE%assigned/}',
'      {with/}',
'        LABEL:=',
'        VALUE:=',
'        SHAPE:=#BADGE_SHAPE#',
'        STYLE:=#BADGE_STYLE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  </div>',
'{else/}',
'  {if LINK/}<a href="#LINK!ATTR#" #LINK_ATTR!RAW#{else/}<div{endif/} class="t-MediaList-itemWrap{if ?DESCRIPTION/} t-MediaList-itemWrap--showDesc{endif/}">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          CSS_CLASSES:=u-color',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE/}<h3 class="t-MediaList-title">#TITLE!RAW#</h3>{endif/}',
'      {if ?DESCRIPTION/}<p class="t-MediaList-desc">#DESCRIPTION!RAW#</p>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE/}',
'      {with/}',
'        LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'        LABEL:=#BADGE_LABEL#',
'        VALUE:=#BADGE_VALUE#',
'        ICON:=#BADGE_ICON#',
'        STATE:=#BADGE_STATE#',
'        SIZE:=t-Badge--md',
'        STYLE:=#BADGE_STYLE#',
'        SHAPE:=#BADGE_SHAPE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  {if LINK/}</a>{else/}</div>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-MediaList t-MediaList--showIcons{if ?LAYOUT/} #LAYOUT!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-MediaList-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_reference_id=>1564403634518414297
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display report content in a formatted media list. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(58073529833836431869)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(58073530388848431870)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273512706516548222)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273513077336548222)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273513335455548222)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273513687532548223)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273513920912548223)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513335455548222)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58073530388848431870)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273514252683548223)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273513920912548223)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273514667347548223)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273513920912548223)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273515060780548224)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273513920912548223)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273515483070548224)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513920912548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(58073530388848431870)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273515718541548224)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>95
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513335455548222)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58073530388848431870)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273516073991548225)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513920912548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(58073530388848431870)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273516346970548225)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513920912548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(58073530388848431870)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273516698896548225)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513335455548222)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58073530388848431870)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273516983852548225)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273516698896548225)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273517305744548226)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273516698896548225)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273517760619548226)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273516698896548225)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273518163707548226)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273516698896548225)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273518580727548227)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513687532548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58073529833836431869)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273518854659548227)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513687532548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58073529833836431869)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273519167700548227)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513687532548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58073529833836431869)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273519451372548228)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513687532548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58073529833836431869)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273519708570548228)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513687532548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58073529833836431869)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273520092593548228)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513687532548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58073529833836431869)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273520398975548228)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273520092593548228)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273520712432548229)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273520092593548228)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273521140864548229)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273513687532548223)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58073529833836431869)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273521494300548229)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273521140864548229)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273521852196548229)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273521140864548229)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273522282015548230)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273521140864548229)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273522656345548230)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'LAYOUT'
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the number of grid columns the media list content will display in. Horizontal Span will display all columns in a single horizontal row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273522943052548230)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273522656345548230)
,p_display_sequence=>10
,p_display_value=>'2 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--2cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273523370459548231)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273522656345548230)
,p_display_sequence=>20
,p_display_value=>'3 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--3cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273523798408548231)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273522656345548230)
,p_display_sequence=>30
,p_display_value=>'4 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--4cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273524154413548231)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273522656345548230)
,p_display_sequence=>40
,p_display_value=>'5 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--5cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273524514762548232)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273522656345548230)
,p_display_sequence=>50
,p_display_value=>'Horizontal Span'
,p_return_value=>'t-MediaList--horizontal'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273524997465548232)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of media list items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273525272880548232)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273524997465548232)
,p_display_sequence=>10
,p_display_value=>'Large'
,p_return_value=>'t-MediaList--large force-fa-lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273525613461548233)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58073733441005578498)
,p_plugin_id=>wwv_flow_imp.id(56273512092366548218)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_timeline
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(56273528712779548237)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$TIMELINE'
,p_display_name=>'Timeline'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$TIMELINE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div{if ?CSS_CLASSES/} class="#CSS_CLASSES#"{endif/}{if ?ATTRIBUTES/}#ATTRIBUTES!RAW#{endif/}>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      {if DISPLAY_AVATAR/}',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR!RAW#',
'        {apply THEME$AVATAR/}',
'      {endif/}',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">{if ?USER_NAME_LINK/}<a href="#USER_NAME_LINK!ATTR#" #USER_NAME_LINK_ATTR!RAW#>{endif/}#USER_NAME!RAW#{if ?USER_NAME_LINK/}</a>{endif/}</span>',
'        <span class="t-Timeline-date">#DATE!RAW#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      {if DISPLAY_BADGE/}',
'        <div class="t-Timeline-typeWrap">',
'          {with/}',
'            LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'            LABEL:=#BADGE_LABEL#',
'            VALUE:=#BADGE_VALUE#',
'            ICON:=#BADGE_ICON#',
'            STATE:=#BADGE_STATE#',
'          {apply THEME$BADGE/}',
'        </div>',
'      {endif/}',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK!ATTR#" #TITLE_LINK_ATTR!RAW#>{endif/}#TITLE!RAW#{if ?TITLE_LINK/}</a>{endif/}</h3>',
'        {if ?DESCRIPTION/}<p class="t-Timeline-desc">#DESCRIPTION!RAW#</p>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline{if ?STYLE/} #STYLE#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>'<li class="t-Timeline-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_reference_id=>1601817836543095628
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display a series of events. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(58420611670801655190)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(58420612225813655191)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273529459953548240)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'User'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a timeline event.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273529725530548241)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'1 hour ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273530023218548241)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273530387389548241)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273530649186548241)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273530995912548242)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273531264370548242)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530649186548241)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58420612225813655191)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273531510888548242)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273531264370548242)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273531911197548242)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273531264370548242)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273532359225548243)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273531264370548242)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273532740259548243)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273531264370548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(58420612225813655191)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273533051046548243)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530649186548241)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58420612225813655191)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273533326678548244)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273531264370548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(58420612225813655191)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273533627754548244)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273531264370548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(58420612225813655191)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273533920639548244)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--circle'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530649186548241)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58420612225813655191)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273534240898548244)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273533920639548244)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273534609024548245)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273533920639548244)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273535008774548245)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273533920639548244)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273535495732548245)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273533920639548244)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273535803592548246)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530995912548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58420611670801655190)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273536116676548246)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Closed'
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530995912548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58420611670801655190)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273536476396548246)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'is-removed'
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530995912548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58420611670801655190)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273536740202548246)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_demo_value=>'fa-check-circle-o'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530995912548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58420611670801655190)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273537003558548247)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530995912548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(58420611670801655190)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273537313336548247)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530995912548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58420611670801655190)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273537666460548247)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273537313336548247)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273538079663548248)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273537313336548247)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273538402550548248)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(56273530995912548242)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(58420611670801655190)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273538735986548248)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273538402550548248)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273539102645548248)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273538402550548248)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273539503685548249)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273538402550548248)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273539932817548249)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the style of timeline items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(56273540211479548249)
,p_plugin_attribute_id=>wwv_flow_imp.id(56273539932817548249)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-Timeline--compact'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(56273540662802548250)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58068381570999863777)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>25
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58182792933988127378)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>15
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(58301824180962431819)
,p_plugin_id=>wwv_flow_imp.id(56273528712779548237)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240207124740'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56662048737452101318)
,p_plug_name=>'parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56273181817394548111)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56662048826606101319)
,p_name=>'P0_CLUSTER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56662048737452101318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59619720481093849503)
,p_name=>'P0_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56662048737452101318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59619720915877849508)
,p_name=>'P0_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56662048737452101318)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59619724901072849548)
,p_name=>'P0_LOGGED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56662048737452101318)
,p_item_default=>'N'
,p_prompt=>'Logged'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Kafka'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240206213910'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56273579591692548283)
,p_plug_name=>'Kafka REST Proxy demo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273148539847548098)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56273582404703548286)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(56273115244624548084)
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(56273581744130548285)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(56273430806435548132)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59619720639226849505)
,p_plug_name=>'BANNER_WARNING'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>wwv_flow_imp.id(56273110054207548081)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Couldn''t contact the REST Proxy Server endpoint.<br>',
'Either the endpoint which has been given during installation is prohibited on this APEX platform',
'or non TLS or specific port instead 80 or 443 or the Proxy REST server is not started.<br>',
'Please review Remote Server config in the workspace and check Proxy health.'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_MSG'
,p_plug_display_when_cond2=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Consumer'
,p_alias=>'CONSUMER'
,p_step_title=>'Subscribe'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240209064615'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38639739538359257220)
,p_plug_name=>'Subscription'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56273181817394548111)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56273580818317548284)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38639740116314257226)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_button_name=>'P2_DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Delete Instance'
,p_button_position=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38639741185963257236)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_button_name=>'RESET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Reset Offset'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_required_patch=>wwv_flow_imp.id(56273077951131548065)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38639739672200257221)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_button_name=>'P2_CREATEINSTANCE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Instance'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59619724823023849547)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(38639739672200257221)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38639739958619257224)
,p_name=>'P2_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_prompt=>'Consumer Name'
,p_source=>'NAME'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38639740076654257225)
,p_name=>'P2_TOPIC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_item_default=>'demo'
,p_prompt=>'Subscribe to'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TOPICS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TOPIC, TOPIC ID',
'  from #APEX$SOURCE_DATA#'))
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38639741493851257239)
,p_name=>'P2_OFFSET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_prompt=>'Change Offset'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_required_patch=>wwv_flow_imp.id(56273077951131548065)
,p_help_text=>'Overrides the fetch offsets that the consumer will use for the next set of records to fetch.'
,p_inline_help_text=>'Overrides the fetch offsets '
,p_attribute_01=>'0'
,p_attribute_03=>'left'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38639742295416257247)
,p_name=>'P2_CR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56662048360029101314)
,p_name=>'P2_AUTOCOMMIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_item_default=>'N'
,p_prompt=>'Auto commit'
,p_source=>'AUTOCOMMIT'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56662048412324101315)
,p_name=>'P2_RESETMODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38639739538359257220)
,p_item_default=>'earliest'
,p_prompt=>'Auto offset reset'
,p_source=>'RESETMODE'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:earliest;earliest,latest;latest,none;none'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'What to do when there is no initial offset in Kafka or if the current offset does not exist any more on the server (e.g. because that data has been deleted):',
'<br>',
'',
'earliest: automatically reset the offset to the earliest offset',
'latest: automatically reset the offset to the latest offset',
unistr('none: throw exception to the consumer if no previous offset is found for the consumer\2019s group'),
'anything else: throw exception to the consumer.<br>',
'source: https://docs.confluent.io/platform/current/installation/configuration/consumer-configs.html',
''))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38639741265248257237)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38639741185963257236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38639741384566257238)
,p_event_id=>wwv_flow_imp.id(38639741265248257237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(1000);',
'begin',
'',
'cr := KAFKA_PKG.changeoffset(:P2_TOPIC, :P2_NAME, :P2_OFFSET);',
'exception',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P2_OFFSET,P2_TOPIC,P2_NAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59619721061654849509)
,p_event_id=>wwv_flow_imp.id(38639741265248257237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Offset has been overriden'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38639741551789257240)
,p_name=>'New_3'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_OFFSET'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38639741639145257241)
,p_event_id=>wwv_flow_imp.id(38639741551789257240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(38639741185963257236)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38639741772328257242)
,p_name=>'New_4'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38639741831640257243)
,p_event_id=>wwv_flow_imp.id(38639741772328257242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(38639741185963257236)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56662048564537101316)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CreateInstance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(10);',
'ALREADY_EXISTS exception;',
'begin',
'',
'APEX_UTIL.SET_PREFERENCE(',
' p_preference=>''AUTOCOMMIT'',',
' p_value =>:P2_AUTOCOMMIT);',
' APEX_UTIL.SET_PREFERENCE(',
' p_preference=>''RESETMODE'',',
' p_value =>:P2_RESETMODE);',
' ',
':P0_NAME := :P2_NAME;',
'',
'if :P2_AUTOCOMMIT = ''N'' then',
'    KAFKA_PKG.G_auto_commit_enable := ''false'';',
'else',
'    KAFKA_PKG.G_auto_commit_enable := ''true'';',
'end if;',
'',
'KAFKA_PKG.G_auto_offset_reset := :P2_RESETMODE;',
'',
'cr :=KAFKA_PKG.createinstance (',
'                APEX_UTIL.GET_PREFERENCE( p_preference=>''GROUP''),',
'                :P2_NAME,',
'                :P2_TOPIC);',
':P2_CR := cr;',
'if cr != ''0'' then',
'raise ALREADY_EXISTS;',
'end if;',
':P0_LOGGED := ''Y'';',
'exception',
'when ALREADY_EXISTS then',
'  raise_application_error(-20203, ''Consumer instance ''|| :P2_NAME ||'' already exists'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SQLERRM_TEXT# <br>',
'Instance couldn''t be created.'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38639739672200257221)
,p_process_success_message=>'Instance has been created'
,p_internal_uid=>56662048564537101316
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56662048666171101317)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'deleteInstance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(10);',
'begin',
'--cr :=KAFKA_PKG.deleteinstance(APEX_UTIL.GET_PREFERENCE(''NAME''));',
'cr :=KAFKA_PKG.deleteinstance(',
'    APEX_UTIL.GET_PREFERENCE( p_preference=>''GROUP''), ',
'    :P2_NAME);',
'',
'',
'if cr != ''0'' then',
'raise_application_error(-20201, ''Pb during removing instance'');',
'end if;',
':P0_LOGGED := ''N'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Problem during removing instance'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38639740116314257226)
,p_process_success_message=>'Instance has been removed'
,p_internal_uid=>56662048666171101317
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Records'
,p_alias=>'RECORDS'
,p_step_title=>'Records'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240208192157'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56277591508752632409)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56277592254491632410)
,p_plug_name=>'Records'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273172050697548107)
,p_plug_display_sequence=>40
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(56276910297114932145)
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_LOGGED'
,p_plug_display_when_cond2=>'Y'
,p_prn_page_header=>'Records'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(56277592382058632410)
,p_name=>'Records'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PATRICK.MONACO'
,p_internal_uid=>56277592382058632410
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56277592776292632411)
,p_db_column_name=>'KEY'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56277593196036632411)
,p_db_column_name=>'TOPIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Topic'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56277593538957632412)
,p_db_column_name=>'TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56277593976152632412)
,p_db_column_name=>'VILLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56277594310998632412)
,p_db_column_name=>'OFFSET'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Offset'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56277594764562632412)
,p_db_column_name=>'PARTITION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Partition'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62180135921151927006)
,p_db_column_name=>'VALUE'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Payload'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56277365065773948063)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'562773651'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'OFFSET:TOPIC:KEY:TYPE:VILLE:VALUE:PARTITION:'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(56277595273160632413)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(56276910828473932146)
,p_page_plug_id=>wwv_flow_imp.id(56277592254491632410)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(56277595768344632413)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(56277337461948940886)
,p_page_plug_id=>wwv_flow_imp.id(56277592254491632410)
,p_value_type=>'ITEM'
,p_value=>'P0_NAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(62778428367644667716)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(62778428036058667713)
,p_page_plug_id=>wwv_flow_imp.id(56277592254491632410)
,p_value_type=>'PREFERENCE'
,p_value=>'GROUP'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59619723576903849534)
,p_plug_name=>'Boutons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56273181817394548111)
,p_plug_display_sequence=>30
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_LOGGED'
,p_plug_display_when_cond2=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59619725051137849549)
,p_plug_name=>'status'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_imp.id(56273110054207548081)
,p_plug_display_sequence=>20
,p_plug_source=>'No subscription yet.<br> Create a consumer instance before then go back in this page.'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P0_LOGGED'
,p_plug_display_when_cond2=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62015081008798096960)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(59619723576903849534)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Reset Offset'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62180135444763927001)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56277592254491632410)
,p_button_name=>'PB_COMMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Commit'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62015382033249606434)
,p_name=>'P3_OFFSET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59619723576903849534)
,p_prompt=>'Read again from'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_help_text=>'Overrides the fetch offsets that the consumer will use for the next set of records to fetch.'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59619724135784849540)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59619724238298849541)
,p_event_id=>wwv_flow_imp.id(59619724135784849540)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(62015081008798096960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59619724353953849542)
,p_name=>'Enter Something'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_OFFSET'
,p_bind_type=>'bind'
,p_execution_type=>'DEBOUNCE'
,p_execution_time=>500
,p_execution_immediate=>false
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59619724482141849543)
,p_event_id=>wwv_flow_imp.id(59619724353953849542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Enable button'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(62015081008798096960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62180135612156927003)
,p_name=>'Test if null'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_OFFSET'
,p_condition_element=>'P3_OFFSET'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62180135775055927004)
,p_event_id=>wwv_flow_imp.id(62180135612156927003)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(62015081008798096960)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59619724630891849545)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_1'
,p_process_sql_clob=>':P3_OFFSET := NULL;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>59619724630891849545
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59619724030576849539)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset_Offset'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(1000);',
'begin',
'',
'cr := KAFKA_PKG.changeoffset(',
'            APEX_UTIL.GET_PREFERENCE( p_preference=>''GROUP''),',
'            :P2_NAME,',
'            :P2_TOPIC,  ',
'            :P3_OFFSET);',
'exception',
'when others then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>59619724030576849539
,p_process_comment=>'Set a new point of read for the next fetchs.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62180135583445927002)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'commit_offset'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(1000);',
'begin',
'',
'cr := KAFKA_PKG.commitOffset(',
'        APEX_UTIL.GET_PREFERENCE( p_preference=>''GROUP''),',
'        :P2_NAME);',
'exception',
'    when others then',
'    null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Problem during commit'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(62180135444763927001)
,p_process_success_message=>'Last fetchs have been committed'
,p_internal_uid=>62180135583445927002
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Commits the fetched records.',
'Useful is the subscribing has been made without autocommi.'))
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Topics V3'
,p_alias=>'TOPICS-V3'
,p_step_title=>'Topics V3'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240213084213'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59241598312798202994)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59241599033925202996)
,p_plug_name=>'Topics V3'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273122367178548087)
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(59160122905175326192)
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select KIND,',
'       RELATED,',
'       SELF,',
'       RESOURCE_NAME,',
'       CLUSTER_ID,',
'       RELATED2,',
'       TOPIC_NAME,',
'       IS_INTERNAL,',
'       PARTITIONS_COUNT,',
'       REPLICATION_FACTOR,',
'       RELATED3',
'  from #APEX$SOURCE_DATA#'))
,p_source_post_processing=>'SQL'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(62180136574880927012)
,p_region_id=>wwv_flow_imp.id(59241599033925202996)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'TOPIC_NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'TOPIC_NAME'
,p_icon_position=>'START'
,p_badge_column_name=>'PARTITIONS_COUNT'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(62180136659003927013)
,p_card_id=>wwv_flow_imp.id(62180136574880927012)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(59241604071327203003)
,p_page_id=>4
,p_web_src_param_id=>wwv_flow_imp.id(59160123557804326196)
,p_page_plug_id=>wwv_flow_imp.id(59241599033925202996)
,p_value_type=>'ITEM'
,p_value=>'P0_CLUSTER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56662049181089101322)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59241599033925202996)
,p_button_name=>'NEW_TOPIC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Topic'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Producer'
,p_alias=>'PRODUCER'
,p_step_title=>'Producer'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240209064615'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56283110018959081397)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56283111000346081399)
,p_plug_name=>'Producer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273172050697548107)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       POPULATION,',
'       RANG    ',
'  from KAFKA_SAMPLE_CITIES'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P5_TOPIC,P5_CITY,P5_VALUE,P5_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Producer'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56662050081142101331)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56662050158626101332)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56662050253266101333)
,p_name=>'POPULATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POPULATION'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Population'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(56662050342390101334)
,p_name=>'RANG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RANG'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rang'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(56662049967460101330)
,p_internal_uid=>56662049967460101330
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(59600208132722189088)
,p_interactive_grid_id=>wwv_flow_imp.id(56662049967460101330)
,p_static_id=>'596002082'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(59600208586480189088)
,p_report_id=>wwv_flow_imp.id(59600208132722189088)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59600209289403189090)
,p_view_id=>wwv_flow_imp.id(59600208586480189088)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(56662050081142101331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59600213892699189094)
,p_view_id=>wwv_flow_imp.id(59600208586480189088)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(56662050158626101332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>186
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59600217871166189096)
,p_view_id=>wwv_flow_imp.id(59600208586480189088)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(56662050253266101333)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59600221707426189099)
,p_view_id=>wwv_flow_imp.id(59600208586480189088)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(56662050342390101334)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38639740997109257234)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56283111000346081399)
,p_button_name=>'MANYMSG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Several Messages'
,p_button_position=>'ORDER_BY_ITEM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38639740485780257229)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(56283111000346081399)
,p_button_name=>'ADDMSG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'One Message'
,p_button_position=>'ORDER_BY_ITEM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38639740839232257233)
,p_name=>'P5_TOPIC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56283111000346081399)
,p_item_default=>'demo'
,p_prompt=>'Topic'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TOPICS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TOPIC, TOPIC ID',
'  from #APEX$SOURCE_DATA#'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56662051174732101342)
,p_name=>'P5_CITY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56283111000346081399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56662051425707101345)
,p_name=>'P5_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56283111000346081399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59619721228737849511)
,p_name=>'P5_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(56283111000346081399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56662050908221101340)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(56283111000346081399)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56662051055303101341)
,p_event_id=>wwv_flow_imp.id(56662050908221101340)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var df;',
'df = this.data.model.getValue(this.data.selectedRecords[0], "NAME");',
'apex.item("P5_CITY").setValue(df);',
'df = this.data.model.getValue(this.data.selectedRecords[0], "POPULATION");',
'apex.item("P5_VALUE").setValue(df);',
'df = this.data.model.getValue(this.data.selectedRecords[0], "ID");',
'apex.item("P5_ID").setValue(df);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56662051687809101347)
,p_event_id=>wwv_flow_imp.id(56662050908221101340)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Send message ?'
,p_attribute_02=>'Confirm'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56662051599916101346)
,p_event_id=>wwv_flow_imp.id(56662050908221101340)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38639740615714257231)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OneMessage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(100);',
'begin',
'cr := kafka_pkg.addmsg(:P5_TOPIC,:P5_ID,:P5_CITY,:P5_VALUE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>38639740615714257231
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38639741045025257235)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Multiple'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(100);',
'begin',
'cr := kafka_pkg.addnmsg(:P5_TOPIC,''test'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38639740997109257234)
,p_internal_uid=>38639741045025257235
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'ProducerCard'
,p_alias=>'PRODUCERCARD'
,p_step_title=>'ProducerCard'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function sendmsg(pname, pid, pop) {',
'    console.log(pname +'' ''+ pid +'' ''+ pop);',
'    apex.item( "P6_CITY" ).setValue( pname );',
'    apex.item( "P6_VALUE" ).setValue( pop );',
'    apex.item( "P6_ID" ).setValue( pid );',
'    apex.submit(''ADDMSG'');',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240209064615'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59619723273039849531)
,p_plug_name=>'Boutons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(56273118077847548085)
,p_plug_display_sequence=>30
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59619725147778849550)
,p_plug_name=>'Send Message'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2:t-ContentBlock--shadowBG:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(56273143911632548096)
,p_plug_display_sequence=>20
,p_plug_source=>'Choose to send only one message by clicking on a given city or press the button "Several messages" for sending a buckets of ten '
,p_required_patch=>wwv_flow_imp.id(56273077951131548065)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117897530429989093851)
,p_plug_name=>'Producer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273122367178548087)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       POPULATION,',
'       RANG    ',
'  from KAFKA_SAMPLE_CITIES'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P6_TOPIC'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(59619722213292849521)
,p_region_id=>wwv_flow_imp.id(117897530429989093851)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'POPULATION'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'NAME'
,p_icon_position=>'START'
,p_badge_column_name=>'RANG'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(59619722341911849522)
,p_card_id=>wwv_flow_imp.id(59619722213292849521)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_CITY,P10_ID,P10_VALUE,P10_TOPIC:&NAME.,&ID.,&POPULATION.,&P6_TOPIC.'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(59619723114906849530)
,p_card_id=>wwv_flow_imp.id(59619722213292849521)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>20
,p_label=>'Send Message'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:sendmsg(''&NAME.'', ''&ID.'', ''&POPULATION.'');'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61614422737361012459)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(59619723273039849531)
,p_button_name=>'MANYMSG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--pillEnd:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Several Messages'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61614422399415012458)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(117897530429989093851)
,p_button_name=>'ADDMSG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'One Message'
,p_button_position=>'ORDER_BY_ITEM'
,p_required_patch=>wwv_flow_imp.id(56273077951131548065)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62180136041700927007)
,p_name=>'P6_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59619723273039849531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62180136198132927008)
,p_name=>'P6_CITY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59619723273039849531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62180136297811927009)
,p_name=>'P6_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59619723273039849531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100254163975709269692)
,p_name=>'P6_TOPIC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59619723273039849531)
,p_item_default=>'demo'
,p_prompt=>'Topic'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TOPICS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TOPIC, TOPIC ID',
'  from #APEX$SOURCE_DATA#'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61614425259927012461)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OneMessage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(100);',
'begin',
'cr := kafka_pkg.addmsg(:P6_TOPIC,:P6_ID,:P6_CITY,:P6_VALUE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61614422399415012458)
,p_process_success_message=>'Message about &P6_CITY. has been send on topic &P6_TOPIC.'
,p_internal_uid=>61614425259927012461
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61614425601557012462)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Multiple'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(100);',
'begin',
'cr := kafka_pkg.addnmsg(:P6_TOPIC,''test'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61614422737361012459)
,p_internal_uid=>61614425601557012462
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Topics'
,p_alias=>'TOPICS'
,p_step_title=>'Topics'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240127194010'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56337732149232017004)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56337732822919017005)
,p_plug_name=>'Topics'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273172050697548107)
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(56294442557214315639)
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Topics'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(56337732944736017005)
,p_name=>'Topics'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PATRICK.MONACO'
,p_internal_uid=>56337732944736017005
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56337733305439017006)
,p_db_column_name=>'TOPIC'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Topic'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(56338120261225705095)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'563381203'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TOPIC'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'New Topic'
,p_alias=>'NEW-TOPIC'
,p_step_title=>'New Topic'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240202100947'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59243214663613923798)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59243215354516923802)
,p_plug_name=>'New Topic'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56273181817394548111)
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(59160122905175326192)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(59243215881174923803)
,p_page_id=>8
,p_web_src_param_id=>wwv_flow_imp.id(59160123557804326196)
,p_page_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_value_type=>'ITEM'
,p_value=>'P0_CLUSTER'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(59531158081007417340)
,p_page_id=>8
,p_web_src_param_id=>wwv_flow_imp.id(59531156602757417333)
,p_page_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_value_type=>'NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56662049360596101324)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_button_name=>'Confirm'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Confirm'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59243224064323923808)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59243224537030923809)
,p_branch_action=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243216259730923804)
,p_name=>'P8_TOPIC_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_prompt=>'Topic Name'
,p_placeholder=>'Topic Name'
,p_source=>'TOPIC_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243216620561923804)
,p_name=>'P8_KIND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'KIND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243217012139923804)
,p_name=>'P8_RELATED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'RELATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243217441715923805)
,p_name=>'P8_SELF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'SELF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243217825423923805)
,p_name=>'P8_RESOURCE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'RESOURCE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243218269930923805)
,p_name=>'P8_CLUSTER_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'CLUSTER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243218644336923805)
,p_name=>'P8_RELATED2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'RELATED2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243219047544923806)
,p_name=>'P8_IS_INTERNAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'IS_INTERNAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243219493897923806)
,p_name=>'P8_PARTITIONS_COUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'PARTITIONS_COUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243219883299923806)
,p_name=>'P8_REPLICATION_FACTOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'REPLICATION_FACTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243220256067923807)
,p_name=>'P8_RELATED3'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_item_source_plug_id=>wwv_flow_imp.id(59243215354516923802)
,p_source=>'RELATED3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56662048942932101320)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'NewTopic'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(59160122905175326192)
,p_web_src_operation_id=>wwv_flow_imp.id(59160455111335026767)
,p_attribute_01=>'WEB_SOURCE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'New Topic has been created'
,p_internal_uid=>56662048942932101320
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(56662049065682101321)
,p_page_id=>8
,p_web_src_param_id=>wwv_flow_imp.id(59160123557804326196)
,p_page_process_id=>wwv_flow_imp.id(56662048942932101320)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(59531158595750417345)
,p_page_id=>8
,p_web_src_param_id=>wwv_flow_imp.id(59531156602757417333)
,p_page_process_id=>wwv_flow_imp.id(56662048942932101320)
,p_value_type=>'ITEM'
,p_value=>'P8_TOPIC_NAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59243225025441923809)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(59243215354516923802)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form New Topic'
,p_internal_uid=>59243225025441923809
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Setup'
,p_alias=>'SETUP'
,p_step_title=>'Setup'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240208192756'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38639742421457257249)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56273181817394548111)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56659427255167374900)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56662047035837101301)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(38639742421457257249)
,p_button_name=>'VALIDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_image_alt=>'Validate'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38639742540522257250)
,p_name=>'P9_ENDPOINT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38639742421457257249)
,p_item_default=>'http://xxx.xxx.xxx:PORT'
,p_source=>'ENDPOINT'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56662047204451101303)
,p_name=>'P9_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38639742421457257249)
,p_prompt=>'Consumer Instance Name'
,p_source=>'NAME'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56662047300579101304)
,p_name=>'P9_GROUP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38639742421457257249)
,p_item_default=>'my_json_consumer_group'
,p_prompt=>'Consumer Group'
,p_source=>'GROUP'
,p_source_type=>'PREFERENCE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56662047102749101302)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RecordPreferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(',
' p_preference=>''ENDPOINT'',',
' p_value =>:P9_ENDPOINT);',
' APEX_UTIL.SET_PREFERENCE(',
' p_preference=>''GROUP'',',
' p_value =>:P9_GROUP);',
' APEX_UTIL.SET_PREFERENCE(',
' p_preference=>''NAME'',',
' p_value =>:P9_NAME);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>56662047102749101302
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'message'
,p_alias=>'MESSAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'message'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(56273099929198548076)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'300'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240207085142'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59619722450683849523)
,p_plug_name=>'content'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56273181817394548111)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59619722923009849528)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(59619722450683849523)
,p_button_name=>'SEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(56273455118421548145)
,p_button_image_alt=>'Send to &P10_TOPIC.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-send-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59619723059172849529)
,p_branch_name=>'gotoproducer'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59619722584367849524)
,p_name=>'P10_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59619722450683849523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59619722613554849525)
,p_name=>'P10_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59619722450683849523)
,p_prompt=>'Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59619722716014849526)
,p_name=>'P10_TOPIC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59619722450683849523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59619722811528849527)
,p_name=>'P10_CITY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59619722450683849523)
,p_prompt=>'City'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(56273452599903548143)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61639113455908920830)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OneMessage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cr varchar2(100);',
'begin',
'cr := kafka_pkg.addmsg(:P10_TOPIC,:P10_ID,:P10_CITY,:P10_VALUE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error during sending message'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(59619722923009849528)
,p_process_success_message=>'Message was sent !'
,p_internal_uid=>61639113455908920830
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Lags'
,p_alias=>'LAGS'
,p_step_title=>'Lags'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240208193315'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62780978948707710679)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62780979697508710680)
,p_plug_name=>'Lags'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56273181817394548111)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(62780980041457710681)
,p_region_id=>wwv_flow_imp.id(62780979697508710680)
,p_chart_type=>'bar'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(62780981733734710681)
,p_chart_id=>wwv_flow_imp.id(62780980041457710681)
,p_seq=>10
,p_name=>'Series 1'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(62777030729985156204)
,p_items_value_column_name=>'LAG'
,p_group_name_column_name=>'LOG_END_OFFSET'
,p_group_short_desc_column_name=>'TOPIC_NAME'
,p_items_label_column_name=>'TOPIC_NAME'
,p_custom_column_name=>'CURRENT_OFFSET'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(62780982464688710683)
,p_page_id=>11
,p_web_src_param_id=>wwv_flow_imp.id(62777031362363156206)
,p_jet_chart_series_id=>wwv_flow_imp.id(62780981733734710681)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(62780982962283710684)
,p_page_id=>11
,p_web_src_param_id=>wwv_flow_imp.id(62777183349589166796)
,p_jet_chart_series_id=>wwv_flow_imp.id(62780981733734710681)
,p_value_type=>'PREFERENCE'
,p_value=>'GROUP'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(62780983495169710684)
,p_page_id=>11
,p_web_src_param_id=>wwv_flow_imp.id(62777184695779168509)
,p_jet_chart_series_id=>wwv_flow_imp.id(62780981733734710681)
,p_value_type=>'ITEM'
,p_value=>'P0_CLUSTER'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(62780980525184710681)
,p_chart_id=>wwv_flow_imp.id(62780980041457710681)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(62780981168884710681)
,p_chart_id=>wwv_flow_imp.id(62780980041457710681)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'NB Points'
,p_alias=>'NB-POINTS'
,p_step_title=>'NB Points'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240208192318'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59543903190583584793)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273194258671548116)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(56273078520827548066)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(56273456608995548145)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59543903881173584793)
,p_plug_name=>'NB Points'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(56273181817394548111)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(59543904215110584794)
,p_region_id=>wwv_flow_imp.id(59543903881173584793)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_automatic_refresh_interval=>5
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(59543905962426584795)
,p_chart_id=>wwv_flow_imp.id(59543904215110584794)
,p_seq=>10
,p_name=>'Series 1'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(56276910297114932145)
,p_series_type=>'bar'
,p_items_value_column_name=>'OFFSET'
,p_group_short_desc_column_name=>'VILLE'
,p_items_label_column_name=>'VILLE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_gantt_start_date_source=>'DB_COLUMN'
,p_gantt_end_date_source=>'DB_COLUMN'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(59543906629491584798)
,p_page_id=>14
,p_web_src_param_id=>wwv_flow_imp.id(56276910828473932146)
,p_jet_chart_series_id=>wwv_flow_imp.id(59543905962426584795)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(59543907124046584799)
,p_page_id=>14
,p_web_src_param_id=>wwv_flow_imp.id(56277337461948940886)
,p_jet_chart_series_id=>wwv_flow_imp.id(59543905962426584795)
,p_value_type=>'PREFERENCE'
,p_value=>'NAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(62778428886696667718)
,p_page_id=>14
,p_web_src_param_id=>wwv_flow_imp.id(56276910828473932146)
,p_jet_chart_series_id=>wwv_flow_imp.id(59543905962426584795)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(62778429092372667718)
,p_page_id=>14
,p_web_src_param_id=>wwv_flow_imp.id(56277337461948940886)
,p_jet_chart_series_id=>wwv_flow_imp.id(59543905962426584795)
,p_value_type=>'PREFERENCE'
,p_value=>'NAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(62778429236321667718)
,p_page_id=>14
,p_web_src_param_id=>wwv_flow_imp.id(62778428036058667713)
,p_jet_chart_series_id=>wwv_flow_imp.id(59543905962426584795)
,p_value_type=>'PREFERENCE'
,p_value=>'GROUP'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(59543905361793584794)
,p_chart_id=>wwv_flow_imp.id(59543904215110584794)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(59543904763185584794)
,p_chart_id=>wwv_flow_imp.id(59543904215110584794)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Kafka - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(56273089915235548072)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_upd_yyyymmddhh24miss=>'20240127162722'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56273572545785548276)
,p_plug_name=>'Kafka'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56273176698548548109)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(56273574297741548278)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(56273572545785548276)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56273455087577548145)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56273573015041548277)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(56273572545785548276)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(56273452235922548143)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56273573474255548278)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(56273572545785548276)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(56273452235922548143)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56273573819097548278)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(56273572545785548276)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(56273452235922548143)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56273576465515548280)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>56273576465515548280
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(56273576962123548280)
,p_page_process_id=>wwv_flow_imp.id(56273576465515548280)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(56273577413835548281)
,p_page_process_id=>wwv_flow_imp.id(56273576465515548280)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56273574541697548279)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>56273574541697548279
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(56273575044358548279)
,p_page_process_id=>wwv_flow_imp.id(56273574541697548279)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(56273575588239548279)
,p_page_process_id=>wwv_flow_imp.id(56273574541697548279)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(56273576086306548280)
,p_page_process_id=>wwv_flow_imp.id(56273574541697548279)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56273578328239548281)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>56273578328239548281
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56273577912370548281)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>56273577912370548281
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(56360526246631408233)
);
end;
/
prompt --application/deployment/install/install_init
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(56361271409421413223)
,p_install_id=>wwv_flow_imp.id(56360526246631408233)
,p_name=>'init'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  CREATE TABLE "KAFKA_SAMPLE_CITIES" ',
'   (	"ID" NUMBER, ',
'	"NAME" VARCHAR2(50), ',
'	"POPULATION" NUMBER, ',
'	"RANG" NUMBER',
'   ) ;',
'create or replace package "KAFKA_PKG" as',
'',
'    G_auto_offset_reset varchar2(50) := ''earliest'';',
'    G_auto_commit_enable varchar2(10) :=''false'';',
'    tendpoint varchar2(500);',
'    TREMOTESERVERID  constant  varchar2(100) := ''Kafka_Rest_Proxy_Endpoint'';',
'    ',
'    function createinstance (pgroup varchar2, pname varchar2, ptopic varchar2)  return varchar2;',
'    function deleteinstance (pgroup varchar2, pname varchar2)  return varchar2;',
'    function addmsg(ptopic varchar2, pkey varchar2, pmsg varchar2, pvalue varchar2)  return varchar2;',
'    function addnmsg(ptopic varchar2, pmsg varchar2)  return varchar2;',
'    function changeoffset (pgroup varchar2, pname varchar2, ptopic varchar2, poffset NUMBER)  return varchar2;',
'    function getClusterId return varchar2;',
'    function commitOffset (pgroup varchar2, pname varchar2) return varchar2;',
'    function getOffsets (pgroup varchar2,pname varchar2) return varchar2;',
'',
'end "KAFKA_PKG";',
'/',
'',
'create or replace package body "KAFKA_PKG" as',
'',
'function getRemoteServer return varchar2',
'is',
'    tbaseurl varchar2(500);',
'begin',
'    select base_url into tbaseurl',
'    from APEX_WORKSPACE_REMOTE_SERVERS',
'    where REMOTE_SERVER_STATIC_ID = TREMOTESERVERID ;',
'    return tbaseurl;',
'end;',
'',
'-- https://docs.confluent.io/platform/current/kafka-rest/api.html#consumers',
'function createinstance (pgroup varchar2, pname varchar2, ptopic varchar2) return varchar2',
'is',
'    l_clob    CLOB; ',
'    tbody CLOB;',
'    turl varchar2(1000);',
'    l_param_values apex_application_global.vc_arr2;',
'begin',
'    turl := tendpoint || ''consumers/'' || pgroup;',
'    tbody := ''{"name": "'' || pname || ',
'                ''", "format": "json", "auto.offset.reset": "''||G_auto_offset_reset ||',
'                ''", "auto.commit.enable": "''|| G_auto_commit_enable ||''"} ''; ',
'                --''","consumer.request.timeout.ms":360000}'';',
'   APEX_DEBUG.INFO(tbody);',
'   APEX_DEBUG.INFO(''OFFSET_RESET=''|| G_auto_offset_reset);',
'   apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'   apex_web_service.g_request_headers(1).value := ''application/vnd.kafka.json.v2+json'';',
'   l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_http_method => ''POST'',',
'        p_body => tbody   ',
'   ); ',
'   if apex_web_service.g_status_code = 409 then',
'    return ''1'';',
'   end if;',
'    ',
'    -- Subscription',
'    turl := tendpoint || ''consumers/'' ||pgroup || ''/instances/'' ||pname || ''/subscription'';',
'    tbody := ''{"topics":["'' || ptopic ||''"]}'';',
'    l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_http_method => ''POST'',',
'        p_body => tbody',
'    ); ',
'',
'   return ''0'';',
'exception',
'    when others then',
'    return ''1'';',
'end;',
'',
'function deleteinstance(pgroup varchar2, pname varchar2)  return varchar2',
'is',
'    l_clob    CLOB; ',
'    tbody CLOB;',
'    turl varchar2(1000);',
'',
'begin',
'    ',
'    apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'    apex_web_service.g_request_headers(1).value := ''application/vnd.kafka.json.v2+json'';',
'    -- Delete consumer instance',
'    turl := tendpoint || ''consumers/'' ||pgroup || ''/instances/'' ||pname;',
'    l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_http_method => ''DELETE''',
'    ); ',
'',
'   return ''0'';',
'exception',
'    when others then',
'    return ''1'';',
'end;',
'',
'-- The following function assumes a static schema based on a value pair : ville + type',
'-- https://docs.confluent.io/platform/current/kafka-rest/api.html#topics',
'function addmsg(ptopic varchar2, ',
'                pkey varchar2, ',
'                pmsg varchar2, ',
'                pvalue varchar2)  ',
'return varchar2',
'is',
'    ',
'    l_clob    CLOB; ',
'    tbody CLOB;',
'    turl varchar2(1000);',
'',
'begin',
'    ',
'    APEX_DEBUG.INFO(''PKEY=''|| pkey);',
'    turl := tendpoint || ''topics/'' || ptopic ;',
'    tbody := ''{ "records": [{"key": "''|| pkey || ''", ',
'                     "value": {"ville":"''||pmsg||''","type":"''||pvalue||''"}',
'                     }',
'                     ]',
'               }'';',
'    ',
'    apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'    apex_web_service.g_request_headers(1).value := ''application/vnd.kafka.json.v2+json'';',
'    l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_http_method => ''POST'',',
'        p_body => tbody',
'      ',
'    );',
' return ''0'';',
'exception',
'    when others then',
'    return ''1'';',
'end;   ',
'',
'-- https://docs.confluent.io/platform/current/kafka-rest/api.html#topics',
'function addnmsg(ptopic varchar2, pmsg varchar2)  return varchar2',
'is',
'    ',
'    l_clob    CLOB; ',
'    tbody CLOB;',
'    turl varchar2(1000);',
'    ind INTEGER := 0;',
'begin',
'    ',
'    turl := tendpoint || ''topics/'' || ptopic ; ',
'    tbody := ''{"records":['' ;',
'    ind := 0;        ',
'    for c1 in (select * from KAFKA_SAMPLE_CITIES where ROWNUM <11) loop',
'        if ind = 1 then',
'            tbody := tbody ||'','';',
'        end if;',
'        tbody := tbody ||''{ "key": "''|| c1.ID|| ''","value": ',
'                    {"ville":"'' ||lower(c1.NAME) ||''","type":"'' ||c1.POPULATION ||''"}}'';',
'        ind := 1;            ',
'    end loop;',
'    tbody := tbody || '']}'';',
'',
'    apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'    apex_web_service.g_request_headers(1).value := ''application/vnd.kafka.json.v2+json'';',
'    l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_http_method => ''POST'',',
'        p_body => tbody',
'    );',
' return ''0'';',
'exception',
'    when others then',
'    return ''1'';',
'end;',
'',
'-- https://docs.confluent.io/platform/current/kafka-rest/api.html#consumers',
'function changeoffset(pgroup varchar2, pname varchar2, ptopic varchar2, poffset NUMBER)  return varchar2',
'is ',
'    l_clob    CLOB; ',
'    tbody CLOB;',
'    turl varchar2(1000);',
'    ',
'begin',
'   ',
'    turl := tendpoint || ''consumers/'' ||pgroup || ''/instances/'' ||pname || ''/positions'';',
'    tbody := ''{',
'          "offsets": [',
'            {',
'              "topic": "''|| ptopic || ''",',
'              "partition": 0,',
'              "offset": ''|| poffset || ''',
'            }',
'          ]',
'        }'';',
'    apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'    apex_web_service.g_request_headers(1).value := ''application/vnd.kafka.json.v2+json'';',
'    l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_http_method => ''POST'',',
'        p_body => tbody',
'    );',
' return ''0'';',
'exception',
'    when others then',
'    return ''1'';',
'end;',
'',
'-- https://docs.confluent.io/platform/current/kafka-rest/api.html#cluster-v3',
'function getClusterId return varchar2',
'is',
'    l_clob    CLOB; ',
'    tbody CLOB;',
'    turl varchar2(1000);',
'    l_values     apex_json.t_values;',
'begin',
'',
'turl := tendpoint || ''v3/clusters''; ',
'',
'apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'    apex_web_service.g_request_headers(1).value := ''application/json'';',
'    l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_http_method => ''GET''',
'    );',
'    apex_json.parse(p_source => l_clob );',
'    return apex_json.get_varchar2(p_path=>''data[1].cluster_id'');',
'',
'end;',
'',
'',
'function commitOffset (pgroup varchar2, pname varchar2) return varchar2',
'is ',
'    l_clob    CLOB; ',
'    tbody CLOB;',
'    turl varchar2(1000);',
'    ',
'begin',
'   ',
'    turl := tendpoint || ''consumers/'' ||pgroup || ''/instances/'' ||pname || ''/offsets'';',
'    tbody := NULL;',
'    apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'    apex_web_service.g_request_headers(1).value := ''application/vnd.kafka.json.v2+json'';',
'    l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_http_method => ''POST'',',
'        p_body => tbody',
'    );',
'    if apex_web_service.g_status_code = 404 then',
'       return ''1'';',
'    end if;',
' return ''0'';',
'exception',
'    when others then',
'    return ''1'';',
'end;',
'',
'-- https://docs.confluent.io/platform/current/kafka-rest/api.html#consumer-group-v3',
'function getOffsets(pgroup varchar2,pname varchar2) return varchar2',
'-- V2 version DOESN''T WORK because not possible to send body in a GET method.',
'-- consider using other V3 API like get consumer lag',
'is',
'    l_clob    CLOB; ',
'    tbody CLOB;',
'    turl varchar2(1000);',
'    l_values     apex_json.t_values;',
'begin ',
'    turl := tendpoint || ''consumers/'' ||pgroup || ''/instances/'' ||pname || ''/offsets'';',
'    --tbody := ''{"partitions": [{"topic": "demo","partition": 0},{"topic": "trafic",',
'    --  "partition": 0}]}'';',
'',
'    apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'    apex_web_service.g_request_headers(1).value := ''application/vnd.kafka.v2+json'';',
'    l_clob := APEX_WEB_SERVICE.make_rest_request( ',
'        p_url         => turl ,',
'        p_body          => tbody,',
'        p_http_method => ''GET''',
'    );',
'    apex_json.parse(p_source => l_clob );',
'return apex_web_service.g_status_code; ',
'',
'end;',
'',
'',
'-- Initialization',
'BEGIN',
'    tendpoint := getRemoteServer;',
'',
'end "KAFKA_PKG";',
'/',
' '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(56361271563499413224)
,p_script_id=>wwv_flow_imp.id(56361271409421413223)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'KAFKA_PKG'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_updated_on=>to_date('20240127204604','YYYYMMDDHH24MISS')
,p_created_by=>'PATRICK.MONACO'
,p_created_on=>to_date('20240127204604','YYYYMMDDHH24MISS')
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(59639562319357831666)
,p_script_id=>wwv_flow_imp.id(56361271409421413223)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'KAFKA_SAMPLE_CITIES'
,p_last_updated_by=>'PATRICK.MONACO'
,p_last_updated_on=>to_date('20240202145436','YYYYMMDDHH24MISS')
,p_created_by=>'PATRICK.MONACO'
,p_created_on=>to_date('20240202145436','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_poupulatetables
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(59639830671553846060)
,p_install_id=>wwv_flow_imp.id(56360526246631408233)
,p_name=>'PoupulateTables'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --KAFKA_SAMPLE_CITIES: 100/10000 rows exported, APEX$DATA$PKG/KAFKA_SAMPLE_CITIES$529084',
'    apex_data_install.load_supporting_object_data(p_table_name => ''KAFKA_SAMPLE_CITIES'', p_delete_after_install => true );',
'end;'))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
