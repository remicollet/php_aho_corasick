PHP_ARG_ENABLE(ahocorasick, whether to enable AhoCorasick support, [ --enable-ahocorasick   Enable Aho Corasick support])
if test "$PHP_AHOCORASICK" = "yes"; then
  AC_DEFINE(HAVE_AHOCORASICK, 1, [Whether you have Aho Corasick])
  PHP_NEW_EXTENSION(ahocorasick, \
    src/php_ahocorasick.c \
    src/multifast/node.c \
    src/multifast/ahocorasick.c \
    src/multifast/mpool.c \
    src/multifast/replace.c, $ext_shared)
fi
