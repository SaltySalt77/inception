<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** Database username */
define( 'DB_USER', 'hyna' );

/** Database password */
define( 'DB_PASSWORD', 'psswd1234_' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'v_!z:[;?kD({|_&<A-G,TnJ8lvh$W8ZW}]GzbDxWa.1k+Dh]rz%z+[!f+8W0_cE?');
define('SECURE_AUTH_KEY',  'y#Xq6in&ijxyo--aL|oO0;_wOQHyWq][c}Mfgr;HmEyw|d0KY500,D[tL ;.Ct]n');
define('LOGGED_IN_KEY',    '7eWV2kq>O85pkU&,++YKFnUmSiB83H$YFl}58lFysZ/9]Z2+(OjAQH:.EA.JUqrV');
define('NONCE_KEY',        ' kFMTm;UFD;Oo+&vEA#k{tv-f5gUiipM*$cHH>dKHrt]Hwy8-3>G6I?l>z-f %~L');
define('AUTH_SALT',        'Fdry[7P4ZevCHm(+yHl(eZ&86fm9{cenTPJ,|*4Jl<yDXT%o<k!c$l$^zj>*3TJP');
define('SECURE_AUTH_SALT', 'kCC:ztSVXyDzn-:h9!H-7m||X l)>#4^4Cj>as?7yzAnZGRi<QX*@f4U[[c-AYr0');
define('LOGGED_IN_SALT',   '`.U{+&?{%<9Tr])m/%(pUZvE0UD|dWkqlG# FTLqSQ#s07foeU}{SL;emOe8jkID');
define('NONCE_SALT',       'k,4 +]k4 `,{)CUf|72s.=`f+mjGT<Vb~+l(z;lv>SKVzF~$x)N.)8;:LbI[K{ZO');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
// $table_prefix = getenv('WORDPRESS_TABLE_PREFIX');
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';