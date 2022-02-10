#if defined _zpsp_class_morpheus_included
  #endinput
#endif
#define _zpsp_class_morpheus_included

#if !defined _zombie_special_new_included
#include <zombie_plague_special>
#endif


/**
 * Returns whether a player is a morpheus.
 *
 * @param id	Player index.
 * @return		True if it is, false otherwise.
 */
native zp_get_user_morpheus(id);

/**
 * Forces a player to become a morpheus.
 *
 * @note Unavailable for last default/special human
 *
 * @param id	Player index to turn into morpheus.
 * @return		True on success, false otherwise.
 */
native zp_make_user_morpheus(id);

/**
 * Returns number of alive morpheus.
 *
 * @return		morpheus count.
 */
native zp_get_morpheus_count();

/**
 * Returns whether the current round is a morpheus round.
 *
 * @return		True if it is, false otherwise.
 */
native zp_is_morpheus_round();
