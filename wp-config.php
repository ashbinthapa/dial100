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
define( 'DB_NAME', 'dial100news' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'ze{u/98]-hH?PSu#]Zx$aNR,92B6guyN]RPZB?-K>Q<@HLHFLcvXQD:%zeNr7]HV' );
define( 'SECURE_AUTH_KEY',  'N1o*_LEOg,^xL;Mt!;8q_]S9*t8:1 Qg=qZDV2Yp0G*gpb-[95r+s&?<:+Zi<>?{' );
define( 'LOGGED_IN_KEY',    '#@?MUP^!v<HE_yfW7RF|TXRi0J=x(Nz1>_f9 iNV#e.fl{nco_(vYKYW|l/IOs:c' );
define( 'NONCE_KEY',        '*r-Lbz=8 U[[Yp2c7CcW3W~.13Co[)dp?6hXFOGF(c2,z!)[A(B.,[{{{q9t+~p%' );
define( 'AUTH_SALT',        '6;8zgq3=9Tl?Jz|ZBg^hZK/DjKIVMn:K~SEwtK8,tkEUP>t#2/pV/||Ad2&dzNsS' );
define( 'SECURE_AUTH_SALT', 't=N4)0tZuwT+eH_~wI{lnb@K:<j<=?Xe]&.3,.5~K_tH0iP&G4se_q|SY^Ujv45t' );
define( 'LOGGED_IN_SALT',   '.s:g0<]{pZ?|$:57beG#55]D?^z6?GZJu;_25|szfhm{:olO!.XGQE:@kCgtsK$U' );
define( 'NONCE_SALT',       'YHMBCUBjN0eL`z@<j6(AI{(xYwjji{l*24VtEK2X5)+3J&X%GD]DM5PI2ciPlTLk' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
