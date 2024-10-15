// Modular config entries should go here

/// Datum for if crew transfer votes are allowed, period
/datum/config_entry/flag/allow_vote_transfer
	default = FALSE // Disabled

/// Automatic crew transfer votes that start at [transfer_time_min_allowed] and happen every [transfer_time_between_auto_votes]
/datum/config_entry/flag/transfer_auto_vote_enabled
	default = TRUE // Enabled

/// Minimum shift length before transfer votes can begin
/datum/config_entry/number/transfer_time_min_allowed
	default = 1.5 HOURS
	integer = FALSE
	min_val = 5 MINUTES

/// Time between auto transfer votes
/datum/config_entry/number/transfer_time_between_auto_votes
	default = 10 MINUTES
	integer = FALSE
	min_val = 2 MINUTES

/// Config entry for transfe vote shuttle call reason
/datum/config_entry/string/transfer_call_reason
	default = "Crew transfer vote successful, dispatching shuttle for shift change."

/// Config entry for allowing pixelshift
/datum/config_entry/flag/pixelshift_toggle_allow
	default = FALSE

/// Config entry for servers tag line that appears next to the server name
/datum/config_entry/string/servertagline
	config_entry_value = "We forgot to set the server's tagline in config.txt"

/// Config entry for the associated discord link
/datum/config_entry/string/discord_link
	config_entry_value = "We forgot to set the server's discord link in config.txt"

/// Config entry for Discord server role
// No default value
/datum/config_entry/string/ping_role_id

/// Config entry for enabling flavortext min character count, good to disable for debugging purposes
// DISABLE THIS instead of setting flavor_text_character_requirement to 0 or I'll chop your arms off
/datum/config_entry/flag/min_flavor_text
	default = FALSE

/// Config entry for enabling flavortext min character count, good to disable for debugging purposes
// NEVER set this value to 0!!
/datum/config_entry/number/flavor_text_character_requirement
	default = 100

GLOBAL_VAR(main_engine_start_reason)
/// This is the channel TGS will use to announce SM delamms
/datum/config_entry/string/channel_announce_delam
	default = null
