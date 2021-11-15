#if defined _amx_settings_api_included
  #endinput
#endif
#define _amx_settings_api_included

#if AMXX_VERSION_NUM >= 175
	#pragma reqlib amx_settings_api
	#if !defined AMXMODX_NOAUTOLOAD
		#pragma loadlib amx_settings_api
	#endif
#else
	#pragma library amx_settings_api
#endif

native amx_load_setting_string_arr(const filename[], const section[], const key[], Array:array_handle)
native amx_save_setting_string_arr(const filename[], const section[], const key[], Array:array_handle)
native amx_load_setting_int_arr(const filename[], const section[], const key[], Array:array_handle)
native amx_save_setting_int_arr(const filename[], const section[], const key[], Array:array_handle)
native amx_load_setting_float_arr(const filename[], const section[], const key[], Array:array_handle)
native amx_save_setting_float_arr(const filename[], const section[], const key[], Array:array_handle)
native amx_load_setting_string(const filename[], const section[], const key[], setting_string[], len)
native amx_save_setting_string(const filename[], const section[], const key[], const setting_string[])
native amx_load_setting_int(const filename[], const section[], const key[], &integer_value)
native amx_save_setting_int(const filename[], const section[], const key[], integer_value)
native amx_load_setting_float(const filename[], const section[], const key[], &Float:float_value)
native amx_save_setting_float(const filename[], const section[], const key[], Float:float_value)
