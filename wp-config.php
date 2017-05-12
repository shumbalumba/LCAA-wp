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
define('DB_NAME', 'wp_lcaa');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         'hekiCwI:(apfxAcmVJ-s_B^91%hs~F)<)4ci*fz>Lnk1>7An}&9{LrqNdHgA7r?T');
define('SECURE_AUTH_KEY',  '2#j#p#aA2o{I8/qlyXW{|/|K*QkGGi[3A6!nSf.kx-e$tPPA7}&7)`wa}+&8Ol|%');
define('LOGGED_IN_KEY',    '@x7p#]-HJrMG%RjlYX3i|M3;[G!}XsFGx1x14LbdX> U@b> G&?,jy8}Z8xx/#wm');
define('NONCE_KEY',        ';P ^~/DgtI,$YJ6tMh^5/x97eu),2snO]U<Mb~OSzj3awKo+8Y&XEg>a<n|IgAtu');
define('AUTH_SALT',        '/];&u~4)mKT#~.F !;xOqbi{>z%,;-Mwe^5NuZf~+!B:Fmtd3TZc-Y2x#OjJ{{hS');
define('SECURE_AUTH_SALT', '=A#T3+CunV(}6gycEAZv2xvuu#wy2rlhL<hy$z<X#TS!=[W_W[i<@/9yhs;i wmp');
define('LOGGED_IN_SALT',   'u6JZJw?Gwz}65zlx*jYcR)x/c)t3Q, rSuS5BN4mRprPa^uu#ka!$bCJ w#6s9e|');
define('NONCE_SALT',       '5D$;nhV7u@@|t/J-0Fh:hI%-@@~-;*RAn.|v6WJ,f.%gD?COUNb)x-7J,cDQtZ@6');

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
define('WP_POST_REVISIONS', 3);
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
