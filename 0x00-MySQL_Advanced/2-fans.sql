-- SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans
SELECT origin, nb_fans FROM users ORDER BY nb_fans;
