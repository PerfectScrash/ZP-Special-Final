#if defined _zpsp_const_included
  #endinput
#endif
#define _zpsp_const_included

#define ZPS_INC_VERSION 44 // Include Version

/* Teams for zp_register_extra_item() */
#define ZP_TEAM_ZOMBIE (1<<0)
#define ZP_TEAM_HUMAN (1<<1)
#define ZP_TEAM_NEMESIS (1<<2)
#define ZP_TEAM_SURVIVOR (1<<3)
#define ZP_TEAM_SNIPER (1<<4)
#define ZP_TEAM_ASSASSIN (1<<5)
#define ZP_TEAM_BERSERKER (1<<6)
#define ZP_TEAM_PREDATOR (1<<7)

// Teams Group for easy register
#define ZP_TEAM_ZOMBIE_SPECIAL -1 // All Specials Zombies (Including Custons)
#define ZP_TEAM_HUMAN_SPECIAL -2 // All Specials Humans (Including Custons)
#define ZP_TEAM_ANY_SPECIAL -3 // All Specials Clsses (Including Custons)
#define ZP_TEAM_ALL -4 // All Classes

// Max Players
#define ZP_MAX_PLAYERS 32

// Removed (Can't use with default register item native [Compiling Error])
// Use zpsp_register_extra_item
/*#define ZP_TEAM_WESKER = (1<<8)
#define ZP_TEAM_BOMBARDIER = (1<<9)
#define ZP_TEAM_SPY = (1<<10)
#define ZP_TEAM_DRAGON = (1<<11)*/

/* Death Match modes for zp_register_game_mode */
enum
{
	ZP_DM_NONE = 0,	// Disable death match during the custom mode round
	ZP_DM_HUMAN, 	// Respawn as human only
	ZP_DM_ZOMBIE, 	// Respawn as zombie only
	ZP_DM_RANDOM,	// Respawn randomly as humans or zombies
	ZP_DM_BALANCE	// Respawn as humans or zombies to keep both team balanced
}

/* Custom forward return values */
#define ZP_PLUGIN_HANDLED 97
#define ZP_PLUGIN_SUPERCEDE 98

// Default (Inside main plugin) Extra item Index
enum { 
	EXTRA_NVISION = 0, 
	EXTRA_ANTIDOTE, 
	EXTRA_MADNESS, 
	EXTRA_INFBOMB, 
	EXTRA_WEAPONS_STARTID 
}

// Special Classes Index
enum { 
	ZOMBIE = 0,
	NEMESIS,
	ASSASSIN, 		// Zombie Special
	PREDATOR, 
	BOMBARDIER,
	DRAGON
}
enum { 
	HUMAN = 0,
	SURVIVOR,
	SNIPER,			// Human Special
	BERSERKER, 
	WESKER, 
	SPY
}

/* Game modes for zp_round_started() */
enum
{
	MODE_NONE = 0,
	MODE_INFECTION,
	MODE_NEMESIS,
	MODE_ASSASSIN,
	MODE_PREDATOR,
	MODE_BOMBARDIER,
	MODE_DRAGON,
	MODE_SURVIVOR,
	MODE_SNIPER,
	MODE_BERSERKER,
	MODE_WESKER,
	MODE_SPY,
	MODE_SWARM,
	MODE_MULTI,
	MODE_PLAGUE,
	MODE_LNJ
}

/* Winner teams for zp_round_ended() */
enum {
	WIN_NO_ONE = 0,
	WIN_ZOMBIES,
	WIN_HUMANS
}

/* Use For zp_set_user_frozen and zp_set_user_burn natives */
enum {
	UNSET = 0,
	SET,
	SET_WITHOUT_IMMUNIT
}

/* Use For zp_get_special_count and zp_make_user_special native*/
enum {
	GET_HUMAN = 0,
	GET_ZOMBIE
}

/* Use for zp_register_weapon */
enum {
	WPN_PRIMARY = 0,
	WPN_SECONDARY
}

/**
 * @deprecated - Do not use!
 * For backwards compatibility only.
 */
#define ZP_TEAM_ANY 0
