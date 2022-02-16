#if defined _zpsp_external_gamemodes
  #endinput
#endif
#define _zpsp_external_gamemodes

#if !defined _zombie_special_new_included
#include <zombie_plague_special>
#endif

/**
 * Returns whether the current round is a Assassin vs Sniper round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_avs_round();

/**
 * Returns whether the current round is a Nightmare round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_nightmare_round();

/**
 * Returns whether the current round is a Remix round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_remix_round();