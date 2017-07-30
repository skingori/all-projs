<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'tarclink');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'tBn=w90[nVro*QSe/^yqV3HL]v]VdK_y/o&-$M~(= LS:qgj{zo)e$QR}G8~Y6Am');
define('SECURE_AUTH_KEY',  'S&KMU<&l ftp[l,79{R[+a{L`:kYE4+IIlv&T$SySX#u*O!Sl+jZ3~jbh($vK$lN');
define('LOGGED_IN_KEY',    'NU/5-k6&5Udaof90/ HY%B)_C.6.F^.3L(F}y2;X&05LX?Zm-ki`piKMcqGs7r]@');
define('NONCE_KEY',        ')Y@9I@f;([M%:qwi9GeiLTguS0Y$?;IgD}6/*`W5cfwD?C1(?fGH#Fl2uu)*`s/U');
define('AUTH_SALT',        'pk(y,uvQTSFMpRsi-F5h4o8$l(U!GKkW*K2JPcc+au^fqKkL[*~QE,g,!0y1jy m');
define('SECURE_AUTH_SALT', '5*KR Ja(3;zT#MgA%?Y$$g.W)Sg}D+-]Z`5_I+zu`H`rT2eM`w0}VUK&|&Bx#evS');
define('LOGGED_IN_SALT',   'jpd0$5nliRT%vFUB:/<4g$TAqoK]PefE{99B|+ax({s:q2lS*Le}{B(7uOhB6Ky/');
define('NONCE_SALT',       '<0E07I(l(52K;$lX1|JsbGBI>D^+8I4UwEhx|crpt>_E?T?y$&bdH!z@u)?|-]W`');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
