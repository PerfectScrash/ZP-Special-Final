#if defined _zpsp_class_alien_included
  #endinput
#endif
#define _zpsp_class_alien_included

#if !defined _zombie_special_new_included
#include <zombie_plague_special>
#endif

/**
 * Returns whether a player is a alien.
 *
 * @param id	Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_alien(id);

/**
 * Forces a player to become a alien.
 *
 * @note Unavailable for last default/special human
 *
 * @param id	Player index to turn into alien.
 * @return		True on success, false otherwise.
 */
native zp_make_user_alien(id);

/**
 * Returns number of alive aliens.
 *
 * @return		alien count.
 */
native zp_get_alien_count();

/**
 * Returns whether the current round is a alien round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_alien_round();
